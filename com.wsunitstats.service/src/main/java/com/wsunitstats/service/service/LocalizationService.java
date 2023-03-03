package com.wsunitstats.service.service;

import com.wsunitstats.model.LocalizationModel;

public interface LocalizationService {
    String localize(String input, LocalizationModel localizationModel);
}
