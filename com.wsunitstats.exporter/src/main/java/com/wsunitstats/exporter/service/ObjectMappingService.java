package com.wsunitstats.exporter.service;

import com.wsunitstats.exporter.model.json.gameplay.submodel.ArmorJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.GatherJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.MovementJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.TransportingJsonModel;
import com.wsunitstats.exporter.model.lua.MainStartupFileModel;
import com.wsunitstats.exporter.model.lua.SessionInitFileModel;
import com.wsunitstats.exporter.model.LocalizationKeyModel;
import com.wsunitstats.model.submodel.ArmorModel;
import com.wsunitstats.model.submodel.GatherModel;
import com.wsunitstats.model.submodel.MovementModel;
import com.wsunitstats.model.submodel.ResourceModel;
import com.wsunitstats.model.submodel.TransportingModel;

import java.util.List;

public interface ObjectMappingService {
    ArmorModel map(ArmorJsonModel.Entry source, int probabilitiesSum);

    GatherModel map(GatherJsonModel source, LocalizationKeyModel localization);

    List<ResourceModel> map(List<Integer> source, LocalizationKeyModel localization);

    TransportingModel map(TransportingJsonModel source);

    MovementModel map(MovementJsonModel source);

    LocalizationKeyModel map(SessionInitFileModel sessionInitSource, MainStartupFileModel mainStartupSource);
}
