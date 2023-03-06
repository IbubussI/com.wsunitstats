package com.wsunitstats.exporter.service.impl;

import com.wsunitstats.domain.LocalizationModel;
import com.wsunitstats.exporter.service.LocalizationService;
import org.springframework.stereotype.Service;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
public class LocalizationServiceImpl implements LocalizationService {
    private static final Pattern LOCALIZATION_KEY_PATTERN = Pattern.compile("<\\*[a-zA-Z0-9/]+>");

    @Override
    public String localize(String input, LocalizationModel localizationModel) {
        if (localizationModel == null) {
            return null;
        }
        Matcher matcher = LOCALIZATION_KEY_PATTERN.matcher(input);
        StringBuilder output = new StringBuilder();
        while (matcher.find()) {
            String localized = localizationModel.getValue(matcher.group());
            matcher.appendReplacement(output, localized);
        }
        matcher.appendTail(output);
        return output.toString();
    }
}
