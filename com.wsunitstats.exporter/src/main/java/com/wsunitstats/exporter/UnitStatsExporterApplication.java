package com.wsunitstats.exporter;

import com.fasterxml.jackson.core.util.DefaultIndenter;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.wsunitstats.exporter.model.raw.json.gameplay.GameplayFileModel;
import com.wsunitstats.exporter.model.raw.lua.MainStartupFileModel;
import com.wsunitstats.exporter.model.raw.lua.SessionInitFileModel;
import com.wsunitstats.exporter.model.mapped.UnitModel;
import com.wsunitstats.exporter.model.raw.FileContainerModel;
import com.wsunitstats.exporter.model.raw.localization.LocalizationFileModel;
import com.wsunitstats.exporter.service.FileReaderService;
import com.wsunitstats.exporter.service.UnitModelResolverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
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
                System.out.println("json read-write success");
                fileWriter.write(output);
                fileWriter.flush();
                fileWriter.close();

                LocalizationFileModel localizationFileModel = fileReaderService.readLocalization(PATH_LOCALIZATION);
                System.out.println(localizationFileModel);

                SessionInitFileModel sessionInitFileModel = fileReaderService.readSessionInitLua(PATH_SESSION_INIT);
                System.out.println(sessionInitFileModel);

                MainStartupFileModel startupFileModel = fileReaderService.readMainStartupLua(PATH_MAIN_STARTUP);
                System.out.println(startupFileModel);

                FileContainerModel fileContainer = new FileContainerModel();
                fileContainer.setGameplayFileModel(gameplayFileModel);
                fileContainer.setMainFileModel(null);
                fileContainer.setMainStartupFileModel(startupFileModel);
                fileContainer.setSessionInitFileModel(sessionInitFileModel);

                List<UnitModel> unitModels = unitModelResolverService.resolveFromJsonModel(fileContainer);
                System.out.println(unitModels);
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
    }
}