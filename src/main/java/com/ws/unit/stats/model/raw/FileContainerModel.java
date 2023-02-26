package com.ws.unit.stats.model.raw;

import com.ws.unit.stats.model.raw.gameplay.GameplayFileModel;
import com.ws.unit.stats.model.raw.localization.LocalizationFileModel;
import com.ws.unit.stats.model.raw.main.MainFileModel;

public class FileContainerModel {

    private GameplayFileModel gameplayFileModel;
    private LocalizationFileModel localizationFileModel;
    private MainFileModel mainFileModel;

    public GameplayFileModel getGameplayFileJsonModel() {
        return gameplayFileModel;
    }

    public void setGameplayFileJsonModel(GameplayFileModel gameplayFileModel) {
        this.gameplayFileModel = gameplayFileModel;
    }

    public LocalizationFileModel getLocalizationFileJsonModel() {
        return localizationFileModel;
    }

    public void setLocalizationFileJsonModel(LocalizationFileModel localizationFileModel) {
        this.localizationFileModel = localizationFileModel;
    }

    public MainFileModel getMainFileJsonModel() {
        return mainFileModel;
    }

    public void setMainFileJsonModel(MainFileModel mainFileModel) {
        this.mainFileModel = mainFileModel;
    }

    @Override
    public String toString() {
        return "RootJsonContainerModel{" +
                "gameplayFileJsonModel=" + gameplayFileModel +
                ", localizationFileJsonModel=" + localizationFileModel +
                ", mainFileJsonModel=" + mainFileModel +
                '}';
    }
}
