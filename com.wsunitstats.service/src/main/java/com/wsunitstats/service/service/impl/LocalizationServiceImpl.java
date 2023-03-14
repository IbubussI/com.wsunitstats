package com.wsunitstats.service.service.impl;

import com.wsunitstats.domain.LocalizationModel;
import com.wsunitstats.service.repository.LocalizationRepository;
import com.wsunitstats.service.service.LocalizationService;
import com.wsunitstats.utils.Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LocalizationServiceImpl implements LocalizationService {
    @Autowired
    private LocalizationRepository localizationRepository;

    @Override
    public String localize(String input, String locale) {
        LocalizationModel localizationModel = localizationRepository.findByLocale(locale);
        return Util.localizeAll(input, localizationModel::getValue);
    }

    @Override
    public boolean updateLocalizationModel(LocalizationModel localizationModel, boolean overwrite) {
        if (!localizationRepository.existsByLocale(localizationModel.getLocale()) || overwrite) {
            localizationRepository.save(localizationModel);
            return true;
        }
        return false;
    }

    @Override
    public void setLocalizationData(List<LocalizationModel> localizationModels) {
        localizationRepository.deleteAll();
        localizationRepository.saveAll(localizationModels);
    }

    @Override
    public List<String> getKeysForValues(List<String> values, String locale) {
        return localizationRepository.findKeysByValues(locale, values);
    }

    @Override
    public List<String> getLocaleNames() {
        return localizationRepository.getLocaleNames();
    }
}
