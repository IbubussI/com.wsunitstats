package com.wsunitstats.exporter.service.impl;

import com.wsunitstats.exporter.model.localization.LocalizationFileModel;
import com.wsunitstats.exporter.service.LocalizationModelResolver;
import com.wsunitstats.model.LocalizationModel;
import com.wsunitstats.model.submodel.LocalizationEntry;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
public class LocalizationModelResolverImpl implements LocalizationModelResolver {
    private static final Pattern LOC_FILENAME_PATTERN = Pattern.compile("(.+)\\.loc");

    @Override
    public LocalizationModel resolveFromJsonModel(LocalizationFileModel localizationFileModel) {
        LocalizationModel localizationModel = new LocalizationModel();
        localizationModel.setLocale(getLocaleFromFilename(localizationFileModel.getFilename()));
        Map<String, LocalizationEntry> entryMap = new HashMap<>();
        localizationFileModel.getValues().forEach((key, value) -> {
            LocalizationEntry localizationEntry = new LocalizationEntry();
            localizationEntry.setLocalizedValues(value);
            entryMap.put(key, localizationEntry);
        });
        localizationModel.setEntries(entryMap);
        return localizationModel;
    }

    private String getLocaleFromFilename(String filename) {
        Matcher matcher = LOC_FILENAME_PATTERN.matcher(filename);
        if (matcher.find()) {
            return matcher.group(1);
        } else {
            throw new IllegalArgumentException("Localization filename is not valid: " + filename);
        }
    }
}
