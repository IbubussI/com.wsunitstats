package com.wsunitstats.exporter.service.impl;

import com.wsunitstats.exporter.exception.GameFilesResolvingException;
import com.wsunitstats.exporter.model.FilePathWrapper;
import com.wsunitstats.exporter.model.LocalizationKeyModel;
import com.wsunitstats.exporter.model.json.gameplay.GameplayFileJsonModel;
import com.wsunitstats.exporter.model.json.main.MainFileJsonModel;
import com.wsunitstats.exporter.model.json.visual.VisualFileJsonModel;
import com.wsunitstats.exporter.model.localization.LocalizationFileModel;
import com.wsunitstats.exporter.model.lua.MainStartupFileModel;
import com.wsunitstats.exporter.model.lua.SessionInitFileModel;
import com.wsunitstats.exporter.service.FileContentService;
import com.wsunitstats.exporter.service.FilePathResolver;
import com.wsunitstats.exporter.service.FileReaderService;
import com.wsunitstats.exporter.service.ImageService;
import jakarta.annotation.PostConstruct;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import static com.wsunitstats.utils.Utils.convertToLocalizationTagMap;
import static com.wsunitstats.utils.Utils.convertToLocalizationTags;
import static com.wsunitstats.utils.Utils.convertToNationNames;

@Service
public class FileContentServiceImpl implements FileContentService {
    private static final Logger LOG = LogManager.getLogger(FileContentServiceImpl.class);
    private GameplayFileJsonModel gameplayFileModel;
    private MainFileJsonModel mainFileModel;
    private VisualFileJsonModel visualFileModel;
    private SessionInitFileModel sessionInitFileModel;
    private MainStartupFileModel mainStartupFileModel;
    private List<LocalizationFileModel> localizationFileModels;
    private Map<String, BufferedImage> images;
    private LocalizationKeyModel localizationKeyModel;

    @Autowired
    private FileReaderService fileReaderService;
    @Autowired
    private FilePathResolver filePathResolver;
    @Autowired
    private ImageService imageService;

    @Override
    public GameplayFileJsonModel getGameplayFileModel() {
        return gameplayFileModel;
    }

    @Override
    public MainFileJsonModel getMainFileModel() {
        return mainFileModel;
    }

    @Override
    public VisualFileJsonModel getVisualFileModel() {
        return visualFileModel;
    }

    @Override
    public SessionInitFileModel getSessionInitFileModel() {
        return sessionInitFileModel;
    }

    @Override
    public MainStartupFileModel getMainStartupFileModel() {
        return mainStartupFileModel;
    }

    @Override
    public List<LocalizationFileModel> getLocalizationFileModels() {
        return localizationFileModels;
    }

    @Override
    public Map<String, BufferedImage> getImages() {
        return images;
    }

    @Override
    public LocalizationKeyModel getLocalizationKeyModel() {
        return localizationKeyModel;
    }

    @PostConstruct
    protected void postConstruct() throws IOException, GameFilesResolvingException {
        LOG.info("Resolving game files...");
        FilePathWrapper filePathWrapper = filePathResolver.resolve();
        LOG.info("Game files resolved at the next folder: [{}] ", filePathWrapper.getRootFolderPath());

        LOG.info("Reading game files...");
        gameplayFileModel = fileReaderService.readJson(filePathWrapper.getGameplayFilePath(), GameplayFileJsonModel.class);
        mainFileModel = fileReaderService.readJson(filePathWrapper.getMainFilePath(), MainFileJsonModel.class);
        visualFileModel= fileReaderService.readJson(filePathWrapper.getVisualFilePath(), VisualFileJsonModel.class);
        sessionInitFileModel = fileReaderService.readSessionInitLua(filePathWrapper.getSessionInitFilePath());
        mainStartupFileModel = fileReaderService.readMainStartupLua(filePathWrapper.getMainStartupFilePath());
        localizationFileModels = fileReaderService.readLocalizations(filePathWrapper.getLocalizationFolderPath());
        images = imageService.resolveImages(mainFileModel, filePathWrapper.getRootFolderPath());
        localizationKeyModel = getLocalizationKeyModel(sessionInitFileModel, mainStartupFileModel);
    }

    private LocalizationKeyModel getLocalizationKeyModel(SessionInitFileModel sessionInitSource, MainStartupFileModel mainStartupSource) {
        LocalizationKeyModel localizationModel = new LocalizationKeyModel();
        localizationModel.setNationNames(convertToNationNames(sessionInitSource.getNationNames()));
        localizationModel.setResearchNames(convertToLocalizationTags(sessionInitSource.getResearchNames()));
        localizationModel.setResearchTexts(convertToLocalizationTags(sessionInitSource.getResearchTexts()));
        localizationModel.setUnitNames(convertToLocalizationTags(sessionInitSource.getUnitNames()));
        localizationModel.setUnitTexts(convertToLocalizationTags(sessionInitSource.getUnitTexts()));
        localizationModel.setUnitTagNames(convertToLocalizationTags(mainStartupSource.getUnitTagNames()));
        localizationModel.setUnitSearchTagNames(convertToLocalizationTags(mainStartupSource.getUnitSearchTagNames()));
        localizationModel.setEnvNames(convertToLocalizationTagMap(sessionInitSource.getEnvNames()));
        localizationModel.setEnvTagNames(convertToLocalizationTags(mainStartupSource.getEnvTagNames()));
        localizationModel.setEnvSearchTagNames(convertToLocalizationTags(mainStartupSource.getEnvSearchTagNames()));
        localizationModel.setAgeNames(convertToLocalizationTags(sessionInitSource.getAgeNames()));
        localizationModel.setResourceNames(convertToLocalizationTags(mainStartupSource.getResourceNames()));
        return localizationModel;
    }
}
