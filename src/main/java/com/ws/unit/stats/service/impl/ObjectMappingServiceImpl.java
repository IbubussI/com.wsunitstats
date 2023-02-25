package com.ws.unit.stats.service.impl;

import com.ws.unit.stats.model.mapped.submodel.ArmorModel;
import com.ws.unit.stats.model.mapped.submodel.GatherModel;
import com.ws.unit.stats.model.mapped.submodel.ResourceModel;
import com.ws.unit.stats.model.mapped.submodel.TransportingModel;
import com.ws.unit.stats.model.raw.gameplay.submodel.ArmorJsonModel;
import com.ws.unit.stats.model.raw.gameplay.submodel.GatherJsonModel;
import com.ws.unit.stats.model.raw.gameplay.submodel.TransportingJsonModel;
import com.ws.unit.stats.service.ObjectMappingService;
import com.ws.unit.stats.util.Constants;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ObjectMappingServiceImpl implements ObjectMappingService {

    @Override
    public ArmorModel map(ArmorJsonModel source) {
        //TODO
        return null;
    }

    @Override
    public GatherModel map(GatherJsonModel source) {
        //TODO
        return null;
    }

    @Override
    public Double map(Integer source) {
        if (source == null) {
            return null;
        }
        return source / Constants.FLOAT_VALUE_MULTIPLIER;
    }

    @Override
    public ResourceModel map(List<Integer> source) {
        if (source == null) {
            return null;
        }
        ResourceModel resourceModel = new ResourceModel();
        resourceModel.setFood(source.get(0));
        resourceModel.setWood(source.get(1));
        resourceModel.setIron(source.get(2));
        return resourceModel;
    }

    @Override
    public TransportingModel map(TransportingJsonModel source) {
        if (source == null) {
            return null;
        }
        TransportingModel transportingModel = new TransportingModel();
        transportingModel.setCarrySize(source.getVolume());
        transportingModel.setOwnSize(source.getOwnVolume());
        transportingModel.setOnlyInfantry(source.getUnitLimit() != null);
        return transportingModel;
    }

}
