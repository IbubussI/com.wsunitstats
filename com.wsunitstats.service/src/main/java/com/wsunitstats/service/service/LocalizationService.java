package com.wsunitstats.service.service;

import com.wsunitstats.model.LocalizationModel;

import java.util.List;

public interface LocalizationService {
    /**
     * Replace all localization tags with values from given localization model
     *
     * @return localized input
     */
    String localize(String input, LocalizationModel localizationModel);

    /**
     * Add given localization model to repository
     * if it doesn't exist or overwrite parameter is true
     *
     * @return true if repository was updated, false otherwise
     */
    boolean updateLocalizationModel(LocalizationModel localizationModel, boolean overwrite);

    /**
     * Set localization data to repository.
     * Any previous localization data is removed
     */
    void setLocalizationData(List<LocalizationModel> localizationModels);
}
