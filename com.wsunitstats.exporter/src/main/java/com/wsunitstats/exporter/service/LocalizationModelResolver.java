package com.wsunitstats.exporter.service;

import com.wsunitstats.exporter.model.localization.LocalizationFileModel;
import com.wsunitstats.model.LocalizationModel;

public interface LocalizationModelResolver {
    LocalizationModel resolveFromJsonModel(LocalizationFileModel localizationFileModel);
}
