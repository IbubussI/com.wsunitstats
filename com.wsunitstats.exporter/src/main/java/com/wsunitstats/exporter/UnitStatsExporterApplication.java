package com.wsunitstats.exporter;

import com.wsunitstats.exporter.service.LocalizationService;
import com.wsunitstats.exporter.model.FilePathWrapper;
import com.wsunitstats.exporter.model.json.gameplay.GameplayFileModel;
import com.wsunitstats.exporter.model.lua.MainStartupFileModel;
import com.wsunitstats.exporter.model.lua.SessionInitFileModel;
import com.wsunitstats.exporter.model.FileModelWrapper;
import com.wsunitstats.exporter.model.localization.LocalizationFileModel;
import com.wsunitstats.exporter.service.FileReaderService;
import com.wsunitstats.exporter.service.GamePathResolver;
import com.wsunitstats.exporter.service.LocalizationModelResolver;
import com.wsunitstats.domain.service.ModelExporterService;
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

import java.io.FileWriter;
import java.io.Writer;
import java.util.List;

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
        private GamePathResolver gamePathResolver;
        @Autowired
        private LocalizationService localizationService;

        @Value("${com.wsunitstats.exporter.host}")
        private String uploadHost;
        @Value("${com.wsunitstats.exporter.upload.units}")
        private String uploadUnitsUriPath;
        @Value("${com.wsunitstats.exporter.upload.localization}")
        private String uploadLocalizationUriPath;
        @Value("${com.wsunitstats.exporter.file.name}")
        private String fileName;
        @Value("${com.wsunitstats.exporter.goals}")
        private List<String> goals;
        @Value("${com.wsunitstats.exporter.file.pretty}")
        private boolean filePretty;
        @Value("${com.wsunitstats.exporter.file.locale}")
        private String fileLocale;

        @Override
        public void run(String... args) throws Exception {
            FilePathWrapper filePathWrapper = gamePathResolver.resolve();

            GameplayFileModel gameplayFileModel = fileReaderService.readGameplayJson(filePathWrapper.getGameplayFilePath());
            SessionInitFileModel sessionInitFileModel = fileReaderService.readSessionInitLua(filePathWrapper.getSessionInitFilePath());
            MainStartupFileModel startupFileModel = fileReaderService.readMainStartupLua(filePathWrapper.getMainStartupFilePath());
            List<LocalizationFileModel> localizationFileModels = fileReaderService.readLocalizations(filePathWrapper.getLocalizationFolderPath());

            FileModelWrapper fileContainer = new FileModelWrapper();
            fileContainer.setGameplayFileModel(gameplayFileModel);
            fileContainer.setMainFileModel(null);
            fileContainer.setMainStartupFileModel(startupFileModel);
            fileContainer.setSessionInitFileModel(sessionInitFileModel);

            List<UnitModel> unitModels = unitModelResolverService.resolveFromJsonModel(fileContainer);
            List<LocalizationModel> localizationModels = localizationFileModels.stream()
                    .map(locFile -> localizationModelResolver.resolveFromJsonModel(locFile))
                    .toList();

            if (goals.contains(GOAL_SEND)) {
                String unitsJson = exporterService.exportToJson(unitModels);
                String locJson = exporterService.exportToJson(localizationModels);
                ResponseEntity<String> gameplayResponse = restService.postJson(uploadHost + uploadUnitsUriPath, unitsJson);
                ResponseEntity<String> locResponse = restService.postJson(uploadHost + uploadLocalizationUriPath, locJson);
                LOG.info("Gameplay submitted: HTTP {} : {}", gameplayResponse.getStatusCode().value(), gameplayResponse.getBody());
                LOG.info("Localization submitted: HTTP {} : {}", locResponse.getStatusCode().value(), locResponse.getBody());
            }
            if (goals.contains(GOAL_PRINT)) {
                try (Writer fileWriter = new FileWriter(fileName, false)) {
                    String unitsJson = filePretty
                            ? exporterService.exportToPrettyJson(unitModels)
                            : exporterService.exportToJson(unitModels);
                    LocalizationModel localizationModel = localizationModels.stream()
                            .filter(locModel -> locModel.getLocale().equals(fileLocale))
                            .findAny()
                            .orElse(null);
                    String unitsJsonLocalized = localizationService.localize(unitsJson, localizationModel);
                    fileWriter.write(unitsJsonLocalized);
                    fileWriter.flush();
                    LOG.info("Json was written to file: {}", fileName);
                }
            }
        }
    }
}