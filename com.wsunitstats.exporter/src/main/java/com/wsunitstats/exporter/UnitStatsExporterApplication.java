package com.wsunitstats.exporter;

import com.wsunitstats.exporter.model.json.main.MainFileJsonModel;
import com.wsunitstats.exporter.service.ImageService;
import com.wsunitstats.exporter.service.LocalizationService;
import com.wsunitstats.exporter.model.FilePathWrapper;
import com.wsunitstats.exporter.model.json.gameplay.GameplayFileJsonModel;
import com.wsunitstats.exporter.model.lua.MainStartupFileModel;
import com.wsunitstats.exporter.model.lua.SessionInitFileModel;
import com.wsunitstats.exporter.model.FileModelWrapper;
import com.wsunitstats.exporter.model.localization.LocalizationFileModel;
import com.wsunitstats.exporter.service.FileReaderService;
import com.wsunitstats.exporter.service.FilePathResolver;
import com.wsunitstats.exporter.service.LocalizationModelResolver;
import com.wsunitstats.utils.service.ModelExporterService;
import com.wsunitstats.exporter.service.RestService;
import com.wsunitstats.exporter.service.UnitModelResolverService;
import com.wsunitstats.domain.LocalizationModel;
import com.wsunitstats.domain.UnitModel;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.FileWriter;
import java.io.Writer;
import java.util.List;
import java.util.Map;

@SpringBootApplication
@ComponentScan({"com.wsunitstats.*"})
public class UnitStatsExporterApplication {
    public static void main(String[] args) {
        SpringApplication.run(UnitStatsExporterApplication.class, args);
    }

    @Component
    public static class ExporterRunner implements CommandLineRunner {
        private static final Logger LOG = LogManager.getLogger(ExporterRunner.class);

        private static final String GOAL_SEND = "send";
        private static final String GOAL_PRINT = "file";

        @Autowired
        private FileReaderService fileReaderService;
        @Autowired
        private UnitModelResolverService unitModelResolverService;
        @Autowired
        private LocalizationModelResolver localizationModelResolver;
        @Autowired
        private ModelExporterService exporterService;
        @Autowired
        private RestService restService;
        @Autowired
        private FilePathResolver filePathResolver;
        @Autowired
        private LocalizationService localizationService;
        @Autowired
        private ImageService imageService;

        @Value("${com.wsunitstats.exporter.host}")
        private String uploadHost;
        @Value("${com.wsunitstats.exporter.upload.units}")
        private String uploadUnitsUriPath;
        @Value("${com.wsunitstats.exporter.upload.localization}")
        private String uploadLocalizationUriPath;
        @Value("${com.wsunitstats.exporter.upload.images}")
        private String imagesUriPath;
        @Value("${com.wsunitstats.exporter.goals}")
        private List<String> goals;
        @Value("${com.wsunitstats.exporter.file.name}")
        private String fileName;
        @Value("${com.wsunitstats.exporter.file.pretty}")
        private boolean filePretty;
        @Value("${com.wsunitstats.exporter.file.locale}")
        private String fileLocale;
        @Value("${com.wsunitstats.exporter.file.localize}")
        private boolean fileLocalize;
        @Value("${com.wsunitstats.exporter.image.file.extension}")
        private String imageExtension;

        @Override
        public void run(String... args) throws Exception {
            FilePathWrapper filePathWrapper = filePathResolver.resolve();

            GameplayFileJsonModel gameplayFileModel = fileReaderService.readJson(filePathWrapper.getGameplayFilePath(), GameplayFileJsonModel.class);
            MainFileJsonModel mainFileModel = fileReaderService.readJson(filePathWrapper.getMainFilePath(), MainFileJsonModel.class);
            SessionInitFileModel sessionInitFileModel = fileReaderService.readSessionInitLua(filePathWrapper.getSessionInitFilePath());
            MainStartupFileModel startupFileModel = fileReaderService.readMainStartupLua(filePathWrapper.getMainStartupFilePath());
            List<LocalizationFileModel> localizationFileModels = fileReaderService.readLocalizations(filePathWrapper.getLocalizationFolderPath());
            Map<String, BufferedImage> images = imageService.readImages(mainFileModel.getGlobalContent(), filePathWrapper.getRootFolderPath());

            FileModelWrapper fileContainer = new FileModelWrapper();
            fileContainer.setGameplayFileModel(gameplayFileModel);
            fileContainer.setMainFileModel(mainFileModel);
            fileContainer.setMainStartupFileModel(startupFileModel);
            fileContainer.setSessionInitFileModel(sessionInitFileModel);

            List<UnitModel> unitModels = unitModelResolverService.resolveFromJsonModel(fileContainer);
            List<LocalizationModel> localizationModels = localizationFileModels.stream()
                    .map(locFile -> localizationModelResolver.resolveFromJsonModel(locFile))
                    .toList();

            // write to file
            if (goals.contains(GOAL_PRINT)) {
                try (Writer fileWriter = new FileWriter(fileName, false)) {
                    String unitsJson = filePretty
                            ? exporterService.exportToPrettyJson(unitModels)
                            : exporterService.exportToJson(unitModels);
                    if (fileLocalize) {
                        LocalizationModel localizationModel = localizationModels.stream()
                                .filter(locModel -> locModel.getLocale().equals(fileLocale))
                                .findAny()
                                .orElse(null);
                        unitsJson = localizationService.localize(unitsJson, localizationModel);
                    }
                    fileWriter.write(unitsJson);
                    fileWriter.flush();
                    LOG.info("Json was written to file: {}", fileName);
                }
            }

            // send to server
            if (goals.contains(GOAL_SEND)) {
                String unitsJson = exporterService.exportToJson(unitModels);
                String locJson = exporterService.exportToJson(localizationModels);

                ResponseEntity<String> gameplayResponse = restService.postJson(uploadHost + uploadUnitsUriPath, unitsJson);
                LOG.info("Gameplay submitted: HTTP {} : {}", gameplayResponse.getStatusCode().value(), gameplayResponse.getBody());
                ResponseEntity<String> locResponse = restService.postJson(uploadHost + uploadLocalizationUriPath, locJson);
                LOG.info("Localization submitted: HTTP {} : {}", locResponse.getStatusCode().value(), locResponse.getBody());

                for (Map.Entry<String, BufferedImage> entry : images.entrySet()) {
                    String filename = entry.getKey();
                    ByteArrayOutputStream imageOutputStream = new ByteArrayOutputStream();
                    ImageIO.write(entry.getValue(), "png", imageOutputStream);
                    ResponseEntity<String> imagesResponse = restService.postFile(uploadHost + "/api/files/upload/icon", filename, imageOutputStream.toByteArray());
                    LOG.info("Image {} submitted: HTTP {} : {}", filename, imagesResponse.getStatusCode().value(), imagesResponse.getBody());
                }
            }
        }
    }
}