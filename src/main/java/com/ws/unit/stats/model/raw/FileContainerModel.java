package com.ws.unit.stats.model.raw;

import com.ws.unit.stats.model.raw.json.gameplay.GameplayFileModel;
import com.ws.unit.stats.model.raw.json.main.MainFileModel;
import com.ws.unit.stats.model.raw.lua.MainStartupFileModel;
import com.ws.unit.stats.model.raw.lua.SessionInitFileModel;

public class FileContainerModel {

    private GameplayFileModel gameplayFileModel;
    private MainFileModel mainFileModel;
    private SessionInitFileModel sessionInitFileModel;
    private MainStartupFileModel mainStartupFileModel;

    public GameplayFileModel getGameplayFileModel() {
        return gameplayFileModel;
    }

    public void setGameplayFileModel(GameplayFileModel gameplayFileModel) {
        this.gameplayFileModel = gameplayFileModel;
    }

    public MainFileModel getMainFileModel() {
        return mainFileModel;
    }

    public void setMainFileModel(MainFileModel mainFileModel) {
        this.mainFileModel = mainFileModel;
    }

    public SessionInitFileModel getSessionInitFileModel() {
        return sessionInitFileModel;
    }

    public void setSessionInitFileModel(SessionInitFileModel sessionInitFileModel) {
        this.sessionInitFileModel = sessionInitFileModel;
    }

    public MainStartupFileModel getMainStartupFileModel() {
        return mainStartupFileModel;
    }

    public void setMainStartupFileModel(MainStartupFileModel mainStartupFileModel) {
        this.mainStartupFileModel = mainStartupFileModel;
    }

    @Override
    public String toString() {
        return "FileContainerModel{" +
                "gameplayFileModel=" + gameplayFileModel +
                ", mainFileModel=" + mainFileModel +
                ", sessionInitFileModel=" + sessionInitFileModel +
                ", mainStartupFileModel=" + mainStartupFileModel +
                '}';
    }
}
