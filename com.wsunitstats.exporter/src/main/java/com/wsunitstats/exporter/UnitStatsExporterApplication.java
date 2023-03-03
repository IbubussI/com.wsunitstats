package com.wsunitstats.exporter;

import com.fasterxml.jackson.core.util.DefaultIndenter;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.wsunitstats.exporter.model.json.gameplay.GameplayFileModel;
import com.wsunitstats.exporter.model.lua.MainStartupFileModel;
import com.wsunitstats.exporter.model.lua.SessionInitFileModel;
import com.wsunitstats.exporter.model.FileContainerModel;
import com.wsunitstats.exporter.model.localization.LocalizationFileModel;
import com.wsunitstats.exporter.service.FileReaderService;
import com.wsunitstats.exporter.service.LocalizationService;
import com.wsunitstats.exporter.service.ModelExporterService;
import com.wsunitstats.exporter.service.RestService;
import com.wsunitstats.exporter.service.UnitModelResolverService;
import com.wsunitstats.model.UnitModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;

import java.io.FileWriter;
import java.io.Writer;
import java.util.List;

@SpringBootApplication
public class UnitStatsExporterApplication {
    public static void main(String[] args) {
        SpringApplication.run(UnitStatsExporterApplication.class, args);
    }

    @Component
    public static class ExporterRunner implements CommandLineRunner {

        private static final String PATH_GAMEPLAY = "game-files/gameplay.json";
        private static final String PATH_LOCALIZATION = "game-files/en.loc";
        private static final String PATH_SESSION_INIT = "game-files/init.lua";
        private static final String PATH_MAIN_STARTUP = "game-files/startup.lua";

        @Autowired
        private FileReaderService fileReaderService;

        @Autowired
        private UnitModelResolverService unitModelResolverService;

        @Autowired
        private LocalizationService localizationService;

        @Autowired
        private ModelExporterService exporterService;

        @Autowired
        private RestService restService;

        @Override
        public void run(String... args) throws Exception {
            GameplayFileModel gameplayFileModel = fileReaderService.readGameplayJson(PATH_GAMEPLAY);
            LocalizationFileModel localizationFileModel = fileReaderService.readLocalization(PATH_LOCALIZATION);
            SessionInitFileModel sessionInitFileModel = fileReaderService.readSessionInitLua(PATH_SESSION_INIT);
            MainStartupFileModel startupFileModel = fileReaderService.readMainStartupLua(PATH_MAIN_STARTUP);

            FileContainerModel fileContainer = new FileContainerModel();
            fileContainer.setGameplayFileModel(gameplayFileModel);
            fileContainer.setMainFileModel(null);
            fileContainer.setMainStartupFileModel(startupFileModel);
            fileContainer.setSessionInitFileModel(sessionInitFileModel);

            List<UnitModel> unitModels = unitModelResolverService.resolveFromJsonModel(fileContainer);
            String json = exporterService.exportToJson(unitModels);
            String localizedJson = localizationService.localize(json, localizationFileModel);
            ResponseEntity<String> response = restService.postJson(localizedJson, "http://localhost:8080/upload/model/gameplay");
            System.out.println(response.getStatusCode().value());
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

                LocalizationFileModel localizationFileModel = fileReaderService.readLocalization(PATH_LOCALIZATION);
                //System.out.println(localizationFileModel);

                SessionInitFileModel sessionInitFileModel = fileReaderService.readSessionInitLua(PATH_SESSION_INIT);
                //System.out.println(sessionInitFileModel);

                MainStartupFileModel startupFileModel = fileReaderService.readMainStartupLua(PATH_MAIN_STARTUP);
                //System.out.println(startupFileModel);

                FileContainerModel fileContainer = new FileContainerModel();
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