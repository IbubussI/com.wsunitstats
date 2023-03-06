package com.wsunitstats.exporter;

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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.http.ResponseEntity;
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

            String unitsJson = exporterService.exportToJson(unitModels);
            String locJson = exporterService.exportToJson(localizationModels);
            ResponseEntity<String> gameplayResponse = restService.postJson("http://localhost:8080/upload/units", unitsJson);
            ResponseEntity<String> locResponse = restService.postJson("http://localhost:8080/upload/localization/bulk", locJson);
            System.out.println("gameplay submitted response: " + gameplayResponse.getStatusCode().value() + "\n" + gameplayResponse.getBody());
            System.out.println("localization submitted response: " + locResponse.getStatusCode().value() + "\n" + locResponse.getBody());

            Map<String, List<String>> getByNamesParams = new HashMap<>();
            getByNamesParams.put("names", List.of("Spearmen"));
            getByNamesParams.put("locale", List.of("en"));
            getByNamesParams.put("sort", List.of("name"));
            getByNamesParams.put("sortDir", List.of("asc"));
            getByNamesParams.put("page", List.of("0"));
            getByNamesParams.put("size", List.of("50"));
            ResponseEntity<String> getByNamesResponse = restService.get("http://localhost:8080/get/units", getByNamesParams);
            System.out.println("get by names response: " + getByNamesResponse.getStatusCode().value() + "\n" + getByNamesResponse.getBody());

            Map<String, List<String>> getByNationsParams = new HashMap<>();
            getByNationsParams.put("nations", List.of("Austro-Hungary", "Animals"));
            getByNationsParams.put("locale", List.of("en"));
            getByNationsParams.put("sort", List.of("name"));
            getByNationsParams.put("sortDir", List.of("asc"));
            getByNationsParams.put("page", List.of("0"));
            getByNationsParams.put("size", List.of("50"));
            ResponseEntity<String> getByNationsResponse = restService.get("http://localhost:8080/get/units", getByNationsParams);
            System.out.println("get by nations response: " + getByNationsResponse.getStatusCode().value() + "\n" + getByNationsResponse.getBody());
        }
    }
}