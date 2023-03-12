package com.wsunitstats.service.service.impl;

import com.wsunitstats.domain.LocalizationModel;
import com.wsunitstats.service.repository.LocalizationRepository;
import com.wsunitstats.service.service.LocalizationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
public class LocalizationServiceImpl implements LocalizationService {
    @Autowired
    private LocalizationRepository localizationRepository;

    private static final Pattern LOCALIZATION_KEY_PATTERN = Pattern.compile("<\\*[a-zA-Z0-9/]+>");

    @Override
    public String localize(String input, String locale) {
        LocalizationModel localizationModel = localizationRepository.findByLocale(locale);
        Matcher matcher = LOCALIZATION_KEY_PATTERN.matcher(input);
        StringBuilder output = new StringBuilder();
        while (matcher.find()) {
            String localized = localizationModel.getValue(matcher.group());
            matcher.appendReplacement(output, localized);
        }
        matcher.appendTail(output);
        return output.toString();
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
