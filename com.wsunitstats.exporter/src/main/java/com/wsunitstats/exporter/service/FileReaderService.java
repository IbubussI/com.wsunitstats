package com.wsunitstats.exporter.service;

import com.wsunitstats.exporter.exception.FileReadingException;
import com.wsunitstats.exporter.model.json.gameplay.GameplayFileModel;
import com.wsunitstats.exporter.model.lua.MainStartupFileModel;
import com.wsunitstats.exporter.model.lua.SessionInitFileModel;
import com.wsunitstats.exporter.model.localization.LocalizationFileModel;

public interface FileReaderService {

    GameplayFileModel readGameplayJson(String path) throws FileReadingException;

    LocalizationFileModel readLocalization(String path) throws FileReadingException;

    SessionInitFileModel readSessionInitLua(String path) throws FileReadingException;

    MainStartupFileModel readMainStartupLua(String path) throws FileReadingException;
}
