package com.wsunitstats.service.service.impl;

import com.wsunitstats.domain.LocalizationModel;
import com.wsunitstats.service.repository.LocalizationRepository;
import com.wsunitstats.service.service.LocalizationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static com.wsunitstats.utils.Constants.LOCALIZATION_MULTI_KEY_DELIMITER;

@Service
public class LocalizationServiceImpl implements LocalizationService {
    @Autowired
    private LocalizationRepository localizationRepository;

    private static final Pattern LOCALIZATION_KEY_PATTERN = Pattern.compile("<\\*([a-zA-Z0-9/]+)>");
    private static final String LOCALIZATION_KEY_TEMPLATE = "<*%s>";

    @Override
    public String localize(String input, LocalizationModel localizationModel) {
        Matcher matcher = LOCALIZATION_KEY_PATTERN.matcher(input);
        StringBuilder output = new StringBuilder();
        while (matcher.find()) {
            String key = matcher.group(1);
            String delimiter = LOCALIZATION_MULTI_KEY_DELIMITER;
            int index = 0;
            if (key.contains(delimiter)) {
                String[] multikeySplit = key.split(delimiter);
                if (multikeySplit.length == 2) {
                    key = multikeySplit[0];
                    index = Integer.parseInt(multikeySplit[1]);
                }
            }
            String localized = localizationModel.getValue(key, index);
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
        return localizationRepository.findKeysByValues(locale, values).stream()
                .map(value -> String.format(LOCALIZATION_KEY_TEMPLATE, value))
                .toList();
    }
}
