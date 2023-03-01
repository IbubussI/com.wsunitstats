package com.wsunitstats.exporter.service;

import com.wsunitstats.exporter.model.raw.json.gameplay.submodel.ArmorJsonModel;
import com.wsunitstats.exporter.model.raw.json.gameplay.submodel.GatherJsonModel;
import com.wsunitstats.exporter.model.raw.json.gameplay.submodel.MovementJsonModel;
import com.wsunitstats.exporter.model.raw.json.gameplay.submodel.TransportingJsonModel;
import com.wsunitstats.exporter.model.raw.lua.MainStartupFileModel;
import com.wsunitstats.exporter.model.raw.lua.SessionInitFileModel;
import com.wsunitstats.exporter.model.mapped.LocalizationModel;
import com.wsunitstats.exporter.model.mapped.submodel.ArmorModel;
import com.wsunitstats.exporter.model.mapped.submodel.GatherModel;
import com.wsunitstats.exporter.model.mapped.submodel.MovementModel;
import com.wsunitstats.exporter.model.mapped.submodel.ResourceModel;
import com.wsunitstats.exporter.model.mapped.submodel.TransportingModel;

import java.util.List;

public interface ObjectMappingService {
    ArmorModel map(ArmorJsonModel.Entry source);

    GatherModel map(GatherJsonModel gatherSource, LocalizationModel localizationSource);

    ResourceModel map(List<Integer> resourcesSource, LocalizationModel localizationSource);

    TransportingModel map(TransportingJsonModel source);

    MovementModel map(MovementJsonModel source);

    LocalizationModel map(SessionInitFileModel sessionInitSource, MainStartupFileModel mainStartupSource);
}
