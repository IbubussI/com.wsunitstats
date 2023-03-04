package com.wsunitstats.exporter;

import com.fasterxml.jackson.core.util.DefaultIndenter;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.wsunitstats.exporter.model.json.gameplay.GameplayFileModel;
import com.wsunitstats.exporter.model.lua.MainStartupFileModel;
import com.wsunitstats.exporter.model.lua.SessionInitFileModel;
import com.wsunitstats.exporter.model.UnitResolvingFileContainer;
import com.wsunitstats.exporter.model.localization.LocalizationFileModel;
import com.wsunitstats.exporter.service.FileReaderService;
import com.wsunitstats.exporter.service.LocalizationModelResolver;
import com.wsunitstats.exporter.service.ModelExporterService;
import com.wsunitstats.exporter.service.RestService;
import com.wsunitstats.exporter.service.UnitModelResolverService;
import com.wsunitstats.model.LocalizationModel;
import com.wsunitstats.model.UnitModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;

import java.io.FileWriter;
import java.io.Writer;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@SpringBootApplication
public class UnitStatsExporterApplication {
    public static void main(String[] args) {
        SpringApplication.run(UnitStatsExporterApplication.class, args);
    }

    @Component
    public static class ExporterRunner implements CommandLineRunner {

        private static final String PATH_GAMEPLAY = "game-files/gameplay.json";
        private static final String PATH_LOCALIZATION = "game-files/";
        private static final String PATH_SESSION_INIT = "game-files/init.lua";
        private static final String PATH_MAIN_STARTUP = "game-files/startup.lua";

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

        @Override
        public void run(String... args) throws Exception {
            GameplayFileModel gameplayFileModel = fileReaderService.readGameplayJson(PATH_GAMEPLAY);
            SessionInitFileModel sessionInitFileModel = fileReaderService.readSessionInitLua(PATH_SESSION_INIT);
            MainStartupFileModel startupFileModel = fileReaderService.readMainStartupLua(PATH_MAIN_STARTUP);
            List<LocalizationFileModel> localizationFileModels = fileReaderService.readLocalizations(PATH_LOCALIZATION);

            UnitResolvingFileContainer fileContainer = new UnitResolvingFileContainer();
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
            //ResponseEntity<String> gameplayResponse = restService.postJson("http://localhost:8080/upload/model/gameplay", unitsJson);
            //ResponseEntity<String> locResponse = restService.postJson("http://localhost:8080/upload/model/localization/bulk", locJson);
            //System.out.println("gameplay submitted response: " + gameplayResponse.getStatusCode().value() + " " + gameplayResponse.getBody());
            //System.out.println("localization submitted response: " + locResponse.getStatusCode().value() + " " + locResponse.getBody());

            Map<String, List<String>> getParams = new HashMap<>();
            getParams.put("names", List.of("Spearmen"));
            getParams.put("locale", List.of("en"));
            getParams.put("sort", List.of("name"));
            getParams.put("sortDir", List.of("asc"));
            getParams.put("page", List.of("0"));
            getParams.put("size", List.of("5"));

            ResponseEntity<String> gameplayResponse = restService.get("http://localhost:8080/get/units", getParams);
            System.out.println("gameplay submitted response: " + gameplayResponse.getStatusCode().value() + " " + gameplayResponse.getBody());
        }
    }

    @Component
    public static class TestRunner implements CommandLineRunner {

        // =================== TO BE REMOVED =====================

        private static final String PATH_GAMEPLAY = "game-files/gameplay.json";
        private static final String PATH_LOCALIZATION = "game-files/en.loc";
        private static final String PATH_SESSION_INIT = "game-files/init.lua";
        private static final String PATH_MAIN_STARTUP = "game-files/startup.lua";
        private static final String PATH_NEW = "gameplay_m.json";

        @Autowired
        private FileReaderService fileReaderService;

        @Autowired
        private UnitModelResolverService unitModelResolverService;

        @Override
        public void run(String... args) {
            try {
                GameplayFileModel gameplayFileModel = fileReaderService.readGameplayJson(PATH_GAMEPLAY);

                ObjectMapper mapper = new ObjectMapper();
                Writer fileWriter = new FileWriter(PATH_NEW, false);
                DefaultPrettyPrinter prettyWriter = new DefaultPrettyPrinter();
                DefaultPrettyPrinter.Indenter indenter = new DefaultIndenter("\t", DefaultIndenter.SYS_LF);
                prettyWriter.indentObjectsWith(indenter);
                prettyWriter.indentArraysWith(indenter);
                String output = mapper.writer(prettyWriter).writeValueAsString(gameplayFileModel);

                //System.out.println(gameplayFileModel);
                //System.out.println("==================================================");
                //System.out.println(output);
                //System.out.println("json read-write success");
                fileWriter.write(output);
                fileWriter.flush();
                fileWriter.close();

                //List<LocalizationFileModel localizationFileModel = fileReaderService.readLocalizations(PATH_LOCALIZATION);
                //System.out.println(localizationFileModel);

                SessionInitFileModel sessionInitFileModel = fileReaderService.readSessionInitLua(PATH_SESSION_INIT);
                //System.out.println(sessionInitFileModel);

                MainStartupFileModel startupFileModel = fileReaderService.readMainStartupLua(PATH_MAIN_STARTUP);
                //System.out.println(startupFileModel);

                UnitResolvingFileContainer fileContainer = new UnitResolvingFileContainer();
                fileContainer.setGameplayFileModel(gameplayFileModel);
                fileContainer.setMainFileModel(null);
                fileContainer.setMainStartupFileModel(startupFileModel);
                fileContainer.setSessionInitFileModel(sessionInitFileModel);

                List<UnitModel> unitModels = unitModelResolverService.resolveFromJsonModel(fileContainer);
                //System.out.println(unitModels);
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
    }
}