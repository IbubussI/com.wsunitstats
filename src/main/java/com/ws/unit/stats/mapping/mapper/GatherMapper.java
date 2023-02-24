package com.ws.unit.stats.mapping.mapper;

import com.ws.unit.stats.model.mapped.submodel.GatherModel;
import com.ws.unit.stats.model.raw.gameplay.submodel.GatherJsonModel;
import com.ws.unit.stats.mapping.factory.MapperType;

@MapperType
public class GatherMapper implements Mapper<GatherJsonModel, GatherModel> {

    @Override
    public GatherModel map(GatherJsonModel source) {
        //TODO
        return null;
    }

}
