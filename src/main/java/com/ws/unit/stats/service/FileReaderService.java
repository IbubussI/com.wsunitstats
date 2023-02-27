package com.ws.unit.stats.service;

import com.ws.unit.stats.exception.FileReadingException;
import com.ws.unit.stats.model.raw.gameplay.GameplayFileModel;
import com.ws.unit.stats.model.raw.localization.LocalizationFileModel;
import com.ws.unit.stats.model.raw.session.init.SessionInitFileModel;

public interface FileReaderService {

    GameplayFileModel readGameplayJson(String path) throws FileReadingException;

    LocalizationFileModel readLocalization(String path) throws FileReadingException;

    SessionInitFileModel readSessionInitLua(String path) throws FileReadingException;
}
