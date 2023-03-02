package com.wsunitstats.exporter.service;

import com.wsunitstats.exporter.model.json.gameplay.submodel.ArmorJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.GatherJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.MovementJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.TransportingJsonModel;
import com.wsunitstats.exporter.model.lua.MainStartupFileModel;
import com.wsunitstats.exporter.model.lua.SessionInitFileModel;
import com.wsunitstats.model.LocalizationModel;
import com.wsunitstats.model.submodel.ArmorModel;
import com.wsunitstats.model.submodel.GatherModel;
import com.wsunitstats.model.submodel.MovementModel;
import com.wsunitstats.model.submodel.ResourceModel;
import com.wsunitstats.model.submodel.TransportingModel;

import java.util.List;

public interface ObjectMappingService {
    ArmorModel map(ArmorJsonModel.Entry source, int probabilitiesSum);

    GatherModel map(GatherJsonModel source, LocalizationModel localization);

    List<ResourceModel> map(List<Integer> source, LocalizationModel localization);

    TransportingModel map(TransportingJsonModel source);

    MovementModel map(MovementJsonModel source);

    LocalizationModel map(SessionInitFileModel sessionInitSource, MainStartupFileModel mainStartupSource);
}
