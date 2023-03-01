package com.wsunitstats.exporter.service;

import com.wsunitstats.exporter.model.raw.localization.LocalizationFileModel;

public interface LocalizationService {
    String localize(String input, LocalizationFileModel localizationModel);
}
