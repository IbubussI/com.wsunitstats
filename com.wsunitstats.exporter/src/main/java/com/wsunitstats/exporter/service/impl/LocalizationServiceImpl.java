package com.wsunitstats.exporter.service.impl;

import com.wsunitstats.domain.LocalizationModel;
import com.wsunitstats.exporter.service.LocalizationService;
import com.wsunitstats.utils.Utils;
import org.springframework.stereotype.Service;

@Service
public class LocalizationServiceImpl implements LocalizationService {
    @Override
    public String localize(String input, LocalizationModel localizationModel) {
        if (localizationModel == null) {
            return null;
        }
        return Utils.localizeAll(input, localizationModel::getValue);
    }
}
