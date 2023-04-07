package com.wsunitstats.exporter;

import com.wsunitstats.exporter.model.ImageModel;
import com.wsunitstats.exporter.model.json.main.MainFileJsonModel;
import com.wsunitstats.exporter.service.ImageService;
import com.wsunitstats.exporter.model.FilePathWrapper;
import com.wsunitstats.exporter.model.json.gameplay.GameplayFileJsonModel;
import com.wsunitstats.exporter.model.lua.MainStartupFileModel;
import com.wsunitstats.exporter.model.lua.SessionInitFileModel;
import com.wsunitstats.exporter.model.SourceModelWrapper;
import com.wsunitstats.exporter.model.localization.LocalizationFileModel;
import com.wsunitstats.exporter.service.FileReaderService;
import com.wsunitstats.exporter.service.FilePathResolver;
import com.wsunitstats.exporter.service.LocalizationModelResolver;
import com.wsunitstats.exporter.task.ExecutionPayload;
import com.wsunitstats.exporter.task.TaskExecutionPool;
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
import org.springframework.stereotype.Component;

import java.util.HashMap;
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

        @Autowired
        private FileReaderService fileReaderService;
        @Autowired
        private UnitModelResolverService unitModelResolverService;
        @Autowired
        private LocalizationModelResolver localizationModelResolver;
        @Autowired
        private TaskExecutionPool taskExecutionPool;
        @Autowired
        private FilePathResolver filePathResolver;
        @Autowired
        private ImageService imageService;

        @Value("${com.wsunitstats.exporter.upload.host}")
        private String uploadHost;
        @Value("${com.wsunitstats.exporter.upload.auth.username}")
        private String username;
        @Value("${com.wsunitstats.exporter.upload.auth.password}")
        private String password;
        @Value("${com.wsunitstats.exporter.upload.auth}")
        private String authUriPath;
        @Value("${com.wsunitstats.exporter.tasks}")
        private List<String> tasks;

        @Override
        public void run(String... args) throws Exception {
            if (tasks.isEmpty()) {
                LOG.error("No tasks configured");
                return;
            }

            LOG.info("Resolving game files...");
            FilePathWrapper filePathWrapper = filePathResolver.resolve();
            LOG.info("Game files resolved at the next folder: [{}] ", filePathWrapper.getRootFolderPath());

            LOG.info("Reading game files...");
            GameplayFileJsonModel gameplayFileModel = fileReaderService.readJson(filePathWrapper.getGameplayFilePath(), GameplayFileJsonModel.class);
            MainFileJsonModel mainFileModel = fileReaderService.readJson(filePathWrapper.getMainFilePath(), MainFileJsonModel.class);
            SessionInitFileModel sessionInitFileModel = fileReaderService.readSessionInitLua(filePathWrapper.getSessionInitFilePath());
            MainStartupFileModel startupFileModel = fileReaderService.readMainStartupLua(filePathWrapper.getMainStartupFilePath());
            List<LocalizationFileModel> localizationFileModels = fileReaderService.readLocalizations(filePathWrapper.getLocalizationFolderPath());

            Map<String, ImageModel> unitImages = imageService.resolveUnitImages(mainFileModel, filePathWrapper.getRootFolderPath());
            Map<String, ImageModel> resourceImages = imageService.resolveResourceImages(mainFileModel, sessionInitFileModel, filePathWrapper.getRootFolderPath());
            Map<String, ImageModel> allImages = new HashMap<>();
            allImages.putAll(unitImages);
            allImages.putAll(resourceImages);

            SourceModelWrapper sourceContainer = new SourceModelWrapper();
            sourceContainer.setGameplayFileModel(gameplayFileModel);
            sourceContainer.setMainFileModel(mainFileModel);
            sourceContainer.setMainStartupFileModel(startupFileModel);
            sourceContainer.setSessionInitFileModel(sessionInitFileModel);
            sourceContainer.setUnitImages(unitImages);
            sourceContainer.setResourceImages(resourceImages);

            LOG.info("Transforming files to data-model...");
            List<UnitModel> unitModels = unitModelResolverService.resolveFromJsonModel(sourceContainer);
            List<LocalizationModel> localizationModels = localizationFileModels.stream()
                    .map(locFile -> localizationModelResolver.resolveFromJsonModel(locFile))
                    .toList();

            LOG.info("Executing configured tasks...");
            ExecutionPayload payload = new ExecutionPayload();
            payload.setUnits(unitModels);
            payload.setLocalization(localizationModels);
            payload.setImages(allImages);
            payload.setHostname(uploadHost);
            payload.setAuthPath(authUriPath);
            payload.setUsername(username);
            payload.setPassword(password);
            taskExecutionPool.executeTasks(tasks, payload);
            LOG.info("Exiting...");
        }
    }
}