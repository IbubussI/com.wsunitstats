package com.ws.unit.stats.service;

import com.ws.unit.stats.exception.FileReadingException;
import com.ws.unit.stats.model.raw.json.gameplay.GameplayFileModel;
import com.ws.unit.stats.model.raw.localization.LocalizationFileModel;
import com.ws.unit.stats.model.raw.lua.MainStartupFileModel;
import com.ws.unit.stats.model.raw.lua.SessionInitFileModel;

public interface FileReaderService {

    GameplayFileModel readGameplayJson(String path) throws FileReadingException;

    LocalizationFileModel readLocalization(String path) throws FileReadingException;

    SessionInitFileModel readSessionInitLua(String path) throws FileReadingException;

    MainStartupFileModel readMainStartupLua(String path) throws FileReadingException;
}
