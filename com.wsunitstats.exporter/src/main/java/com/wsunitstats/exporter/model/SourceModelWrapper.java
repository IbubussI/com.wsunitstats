package com.wsunitstats.exporter.model;

import com.wsunitstats.exporter.model.json.gameplay.GameplayFileJsonModel;
import com.wsunitstats.exporter.model.json.main.MainFileJsonModel;
import com.wsunitstats.exporter.model.lua.MainStartupFileModel;
import com.wsunitstats.exporter.model.lua.SessionInitFileModel;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class SourceModelWrapper {
    private GameplayFileJsonModel gameplayFileModel;
    private MainFileJsonModel mainFileModel;
    private SessionInitFileModel sessionInitFileModel;
    private MainStartupFileModel mainStartupFileModel;
}
