package com.wsunitstats.exporter.service;

import com.wsunitstats.exporter.model.json.gameplay.GameplayFileModel;
import com.wsunitstats.exporter.model.lua.MainStartupFileModel;
import com.wsunitstats.exporter.model.lua.SessionInitFileModel;
import com.wsunitstats.exporter.model.localization.LocalizationFileModel;

import java.io.File;
import java.util.List;

public interface FileReaderService {

    GameplayFileModel readGameplayJson(String path);

    List<LocalizationFileModel> readLocalizations(String... paths);

    LocalizationFileModel readLocalization(File file);

    SessionInitFileModel readSessionInitLua(String path);

    MainStartupFileModel readMainStartupLua(String path);
}
