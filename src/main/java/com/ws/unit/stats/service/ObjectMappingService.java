package com.ws.unit.stats.service;

import com.ws.unit.stats.model.mapped.LocalizationModel;
import com.ws.unit.stats.model.mapped.submodel.ArmorModel;
import com.ws.unit.stats.model.mapped.submodel.GatherModel;
import com.ws.unit.stats.model.mapped.submodel.MovementModel;
import com.ws.unit.stats.model.mapped.submodel.ResourceModel;
import com.ws.unit.stats.model.mapped.submodel.TransportingModel;
import com.ws.unit.stats.model.raw.json.gameplay.submodel.ArmorJsonModel;
import com.ws.unit.stats.model.raw.json.gameplay.submodel.GatherJsonModel;
import com.ws.unit.stats.model.raw.json.gameplay.submodel.MovementJsonModel;
import com.ws.unit.stats.model.raw.json.gameplay.submodel.TransportingJsonModel;
import com.ws.unit.stats.model.raw.lua.MainStartupFileModel;
import com.ws.unit.stats.model.raw.lua.SessionInitFileModel;

import java.util.List;

public interface ObjectMappingService {
    ArmorModel map(ArmorJsonModel source);

    List<GatherModel> map(List<GatherJsonModel> gatherSource, LocalizationModel localizationSource);

    ResourceModel map(List<Integer> source);

    TransportingModel map(TransportingJsonModel source);

    MovementModel map(MovementJsonModel source);

    LocalizationModel map(SessionInitFileModel sessionInitSource, MainStartupFileModel mainStartupSource);
}
