package com.ws.unit.stats.service.impl;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.util.DefaultIndenter;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ws.unit.stats.exception.FileReadingException;
import com.ws.unit.stats.model.raw.gameplay.GameplayFileModel;
import com.ws.unit.stats.model.raw.localization.LocalizationFileModel;
import com.ws.unit.stats.model.raw.session.init.SessionInitFileModel;
import com.ws.unit.stats.service.FileReaderService;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
public class FileReaderServiceImpl implements FileReaderService {

    private static final Logger LOG = LoggerFactory.getLogger(FileReaderServiceImpl.class);

    private static final Pattern LOCALIZATION_VALUE_PATTERN = Pattern.compile("^<\\*([^<>]*)>(.*)$", Pattern.MULTILINE);
    private static final String LOCALIZATION_INDEX_REGEX = "\\|";
    private static final String SESSION_INIT_ARRAY_REGEX = "%s\\s*=\\s*\\{";
    private static final String SESSION_INIT_ARRAY_DELIMITER = ",";
    private static final Pattern SESSION_INIT_ARRAY_REDUNDANT_PATTERN = Pattern.compile("(\\s)|(--.*$)", Pattern.MULTILINE);

    @Override
    public GameplayFileModel readGameplayJson(String path) throws FileReadingException {
        LOG.debug("Reading json gameplay file at path: {}", path);
        try (FileReader fileReader = new FileReader(path)) {

            ObjectMapper mapper = new ObjectMapper();
            mapper.setSerializationInclusion(JsonInclude.Include.NON_NULL);
            return mapper.readValue(fileReader, GameplayFileModel.class);
        } catch (IOException e) {
            throw new FileReadingException("Reading json file failed", e);
        }
    }

    @Override
    public LocalizationFileModel readLocalization(String path) throws FileReadingException {
        LOG.debug("Reading localization file at path: {}", path);
        try (Scanner scanner = new Scanner(new File(path))) {
            LocalizationFileModel localizationModel = new LocalizationFileModel();
            Map<String, List<String>> localizationValues = new HashMap<>();
            scanner.findAll(LOCALIZATION_VALUE_PATTERN)
                    .forEach(match -> localizationValues.put(match.group(1),
                            Arrays.asList(match.group(2).split(LOCALIZATION_INDEX_REGEX))));
            localizationModel.setValues(localizationValues);
            return localizationModel;
        } catch (IOException e) {
            throw new FileReadingException("Reading localization file failed", e);
        }
    }

    @Override
    public SessionInitFileModel readSessionInitLua(String path) throws FileReadingException {
        LOG.debug("Reading session/init.lua file at path: {}", path);
        try {
            SessionInitFileModel sessionInitModel = new SessionInitFileModel();
            List<List<String>> lists = new ArrayList<>();

            byte[] bytes = Files.readAllBytes(Paths.get(path));
            String fileContent = new String(bytes);

            SessionInitFileModel.ARRAY_NAMES.forEach(arrayName -> {
                Pattern pattern = Pattern.compile(String.format(SESSION_INIT_ARRAY_REGEX, arrayName), Pattern.DOTALL);
                Matcher matcher = pattern.matcher(fileContent);
                if (matcher.find()) {
                    int startArray = matcher.end();
                    int endArray = findClosingCurlyBrace(fileContent, startArray);
                    String rawArray = fileContent.substring(startArray, endArray);
                    String array = SESSION_INIT_ARRAY_REDUNDANT_PATTERN.matcher(rawArray).replaceAll(StringUtils.EMPTY);
                    lists.add(Arrays.asList(array.split(SESSION_INIT_ARRAY_DELIMITER)));
                }
            });

            if (lists.size() != SessionInitFileModel.ARRAY_NAMES.size()) {
                LOG.error("session/init.lua file does not contain one of next required arrays {}", SessionInitFileModel.ARRAY_NAMES);
                throw new FileReadingException("Malformed session/init.lua file");
            }

            sessionInitModel.setAll(lists);
            return sessionInitModel;
        } catch (
                IOException e) {
            throw new FileReadingException("Reading lua file failed", e);
        }

    }

    private int findClosingCurlyBrace(String string, int startIndex) {
        int result = -1;
        int open = 0;
        int close = 0;
        for (int i = startIndex; i < string.length(); ++i) {
            char ch = string.charAt(i);
            if (ch == '}') {
                if (open == close) {
                    result = i;
                    break;
                }
                close++;
            } else if (ch == '{') {
                open++;
            }
        }
        return result;
    }

    // =================== TO BE REMOVED =====================

    private static final String PATH_GAMEPLAY = "game-files/gameplay.json";
    private static final String PATH_LOCALIZATION = "game-files/en.loc";
    private static final String PATH_SESSION_INIT = "game-files/init.lua";
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

            //LocalizationFileModel localizationFileModel = fileReaderService.readLocalization(PATH_LOCALIZATION);
            //System.out.println(localizationFileModel);
            //System.out.println("localization read success");

            //SessionInitFileModel sessionInitFileModel = fileReaderService.readSessionInitLua(PATH_SESSION_INIT);
            //System.out.println(sessionInitFileModel);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}

