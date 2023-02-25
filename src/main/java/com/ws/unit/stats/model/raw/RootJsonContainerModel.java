package com.ws.unit.stats.model.raw;

import com.ws.unit.stats.model.raw.gameplay.GameplayFileJsonModel;
import com.ws.unit.stats.model.raw.localization.LocalizationFileJsonModel;
import com.ws.unit.stats.model.raw.main.MainFileJsonModel;

public class RootJsonContainerModel {

    private GameplayFileJsonModel gameplayFileJsonModel;
    private LocalizationFileJsonModel localizationFileJsonModel;
    private MainFileJsonModel mainFileJsonModel;

    public GameplayFileJsonModel getGameplayFileJsonModel() {
        return gameplayFileJsonModel;
    }

    public void setGameplayFileJsonModel(GameplayFileJsonModel gameplayFileJsonModel) {
        this.gameplayFileJsonModel = gameplayFileJsonModel;
    }

    public LocalizationFileJsonModel getLocalizationFileJsonModel() {
        return localizationFileJsonModel;
    }

    public void setLocalizationFileJsonModel(LocalizationFileJsonModel localizationFileJsonModel) {
        this.localizationFileJsonModel = localizationFileJsonModel;
    }

    public MainFileJsonModel getMainFileJsonModel() {
        return mainFileJsonModel;
    }

    public void setMainFileJsonModel(MainFileJsonModel mainFileJsonModel) {
        this.mainFileJsonModel = mainFileJsonModel;
    }

    @Override
    public String toString() {
        return "RootJsonContainerModel{" +
                "gameplayFileJsonModel=" + gameplayFileJsonModel +
                ", localizationFileJsonModel=" + localizationFileJsonModel +
                ", mainFileJsonModel=" + mainFileJsonModel +
                '}';
    }
}
