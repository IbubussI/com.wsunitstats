package com.ws.unit.stats.service;

import com.ws.unit.stats.model.mapped.submodel.ArmorModel;
import com.ws.unit.stats.model.mapped.submodel.GatherModel;
import com.ws.unit.stats.model.mapped.submodel.MovementModel;
import com.ws.unit.stats.model.mapped.submodel.ResourceModel;
import com.ws.unit.stats.model.mapped.submodel.TransportingModel;
import com.ws.unit.stats.model.raw.gameplay.submodel.ArmorJsonModel;
import com.ws.unit.stats.model.raw.gameplay.submodel.GatherJsonModel;
import com.ws.unit.stats.model.raw.gameplay.submodel.MovementJsonModel;
import com.ws.unit.stats.model.raw.gameplay.submodel.TransportingJsonModel;

import java.util.List;

public interface ObjectMappingService {
    ArmorModel map(ArmorJsonModel source);

    GatherModel map(GatherJsonModel source);

    Double map(Integer source);

    ResourceModel map(List<Integer> source);

    TransportingModel map(TransportingJsonModel source);

    MovementModel map(MovementJsonModel source);
}
