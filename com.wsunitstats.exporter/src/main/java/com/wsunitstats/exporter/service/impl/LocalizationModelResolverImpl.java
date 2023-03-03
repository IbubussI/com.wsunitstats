package com.wsunitstats.exporter.service.impl;

import com.wsunitstats.exporter.model.localization.LocalizationFileModel;
import com.wsunitstats.exporter.service.LocalizationModelResolver;
import com.wsunitstats.model.LocalizationModel;
import org.springframework.stereotype.Service;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
public class LocalizationModelResolverImpl implements LocalizationModelResolver {
    private static final Pattern LOC_FILENAME_PATTERN = Pattern.compile("(.+)\\.loc");

    @Override
    public LocalizationModel resolveFromJsonModel(LocalizationFileModel localizationFileModel) {
        LocalizationModel localizationModel = new LocalizationModel();
        localizationModel.setLocale(getLocaleFromFilename(localizationFileModel.getFilename()));
        localizationModel.setValues(localizationFileModel.getValues());
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
