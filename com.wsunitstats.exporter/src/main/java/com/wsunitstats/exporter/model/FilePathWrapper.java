package com.wsunitstats.exporter.model;

public class FilePathWrapper {
    private String gameplayFilePath;
    private String mainFilePath;
    private String localizationFolderPath;
    private String mainStartupFilePath;
    private String sessionInitFilePath;

    public String getGameplayFilePath() {
        return gameplayFilePath;
    }

    public void setGameplayFilePath(String gameplayFilePath) {
        this.gameplayFilePath = gameplayFilePath;
    }

    public String getMainFilePath() {
        return mainFilePath;
    }

    public void setMainFilePath(String mainFilePath) {
        this.mainFilePath = mainFilePath;
    }

    public String getLocalizationFolderPath() {
        return localizationFolderPath;
    }

    public void setLocalizationFolderPath(String localizationFolderPath) {
        this.localizationFolderPath = localizationFolderPath;
    }

    public String getMainStartupFilePath() {
        return mainStartupFilePath;
    }

    public void setMainStartupFilePath(String mainStartupFilePath) {
        this.mainStartupFilePath = mainStartupFilePath;
    }

    public String getSessionInitFilePath() {
        return sessionInitFilePath;
    }

    public void setSessionInitFilePath(String sessionInitFilePath) {
        this.sessionInitFilePath = sessionInitFilePath;
    }

    @Override
    public String toString() {
        return "FilePathWrapper{" +
                "gameplayFilePath='" + gameplayFilePath + '\'' +
                ", mainFilePath='" + mainFilePath + '\'' +
                ", localizationFolderPath='" + localizationFolderPath + '\'' +
                ", mainStartupFilePath='" + mainStartupFilePath + '\'' +
                ", sessionInitFileModel='" + sessionInitFilePath + '\'' +
                '}';
    }
}
