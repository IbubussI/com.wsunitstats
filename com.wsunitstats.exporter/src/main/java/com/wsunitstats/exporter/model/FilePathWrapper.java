package com.wsunitstats.exporter.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FilePathWrapper {
    private String gameplayFilePath;
    private String mainFilePath;
    private String localizationFolderPath;
    private String mainStartupFilePath;
    private String sessionInitFilePath;
}
