package com.wsunitstats.exporter.service.impl;

import com.wsunitstats.domain.LocalizationModel;
import com.wsunitstats.exporter.service.LocalizationService;
import com.wsunitstats.utils.Util;
import org.springframework.stereotype.Service;

@Service
public class LocalizationServiceImpl implements LocalizationService {
    @Override
    public String localize(String input, LocalizationModel localizationModel) {
        if (localizationModel == null) {
            return null;
        }
        return Util.localizeAll(input, localizationModel::getValue);
    }
}
