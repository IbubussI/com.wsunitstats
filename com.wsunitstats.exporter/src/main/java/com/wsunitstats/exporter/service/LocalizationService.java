package com.wsunitstats.exporter.service;

import com.wsunitstats.domain.LocalizationModel;

public interface LocalizationService {
    /**
     * Replace all localization tags with values from given localization model
     *
     * @return localized input
     */
    String localize(String input, LocalizationModel localizationModel);
}
