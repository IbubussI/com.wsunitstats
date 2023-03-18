package com.wsunitstats.exporter.model.json.main;

import com.wsunitstats.exporter.model.json.main.submodel.GlobalContentJsonModel;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MainFileJsonModel {
    private Object gameServer;
    private GlobalContentJsonModel globalContent;
    private Object launcher;
    private Object lobby;
    private Object ratings;
    private Object render;
    private Object scriptedEvents;
    private Object scripts;
    private Object sound;
    private Object version;
    private Object visual;
    private Object visualSessionContent;
    private Object window;
}
