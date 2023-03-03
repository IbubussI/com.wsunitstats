package com.wsunitstats.service.service.impl;

import com.wsunitstats.model.LocalizationModel;
import com.wsunitstats.service.service.LocalizationService;
import org.springframework.stereotype.Service;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
public class LocalizationServiceImpl implements LocalizationService {

    private static final Pattern LOCALIZATION_KEY_PATTERN = Pattern.compile("<\\*([a-zA-Z0-9/]+)>");
    private static final String LOCALIZATION_MULTI_KEY_DELIMITER = "/";

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
}
