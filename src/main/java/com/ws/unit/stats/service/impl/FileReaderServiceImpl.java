package com.ws.unit.stats.service.impl;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.util.DefaultIndenter;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ws.unit.stats.exception.FileReadingException;
import com.ws.unit.stats.model.raw.gameplay.GameplayFileModel;
import com.ws.unit.stats.model.raw.localization.LocalizationFileModel;
import com.ws.unit.stats.model.raw.session.init.SessionInitModel;
import com.ws.unit.stats.service.FileReaderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.Writer;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.regex.MatchResult;
import java.util.regex.Pattern;

import static com.ws.unit.stats.util.Constants.LOCALIZATION_INDEX_PATTERN;
import static com.ws.unit.stats.util.Constants.LOCALIZATION_VALUE_PATTERN;

@Service
public class FileReaderServiceImpl implements FileReaderService {

    private static final Logger LOG = LoggerFactory.getLogger(FileReaderServiceImpl.class);

    @Override
    public GameplayFileModel readGameplayJson(String path) throws FileReadingException {
        LOG.debug("Reading JSON file at path: {}", path);
        try (FileReader fileReader = new FileReader(path)) {
            ObjectMapper mapper = new ObjectMapper();
            mapper.setSerializationInclusion(JsonInclude.Include.NON_NULL);
            return mapper.readValue(fileReader, GameplayFileModel.class);
        } catch (Exception e) {
            throw new FileReadingException("File reading failed", e);
        }
    }

    @Override
    public LocalizationFileModel readLocalization(String path) throws FileReadingException {
        LOG.debug("Reading LOC file at path: {}", path);
        try (Scanner scanner = new Scanner(new File(path))) {
            LocalizationFileModel localizationModel = new LocalizationFileModel();
            Map<String, List<String>> localizationValues = new HashMap<>();
            scanner.findAll(Pattern.compile(LOCALIZATION_VALUE_PATTERN, Pattern.MULTILINE))
                    .forEach(match -> localizationValues.put(match.group(1), Arrays.asList(match.group(2).split(LOCALIZATION_INDEX_PATTERN))));
            localizationModel.setValues(localizationValues);
            return localizationModel;
        } catch (Exception e) {
            throw new FileReadingException("File reading failed", e);
        }
    }

    @Override
    public SessionInitModel readLua(String path, List<String> arrayNames) throws FileReadingException {
        LOG.debug("Reading LUA file at path: {}", path);
        return null;
    }




    // =================== TO BE REMOVED =====================

    private static final String PATH_GAMEPLAY = "game-files/gameplay.json";
    private static final String PATH_LOCALIZATION = "game-files/en.loc";
    private static final String PATH_NEW = "gameplay_m.json";

    public static void main(String[] args) {
        try {
            FileReaderService fileReaderService = new FileReaderServiceImpl();
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
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}

