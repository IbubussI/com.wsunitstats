package com.ws.unit.stats.mapping.mapper;

import com.ws.unit.stats.model.mapped.submodel.TransportingModel;
import com.ws.unit.stats.model.raw.gameplay.submodel.TransportingJsonModel;
import com.ws.unit.stats.mapping.factory.MapperType;

@MapperType
public class TransportingMapper implements Mapper<TransportingJsonModel, TransportingModel> {

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