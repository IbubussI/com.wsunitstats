package com.ws.unit.stats.mapping.mapper;

import com.ws.unit.stats.model.mapped.submodel.ArmorModel;
import com.ws.unit.stats.model.raw.gameplay.submodel.ArmorJsonModel;
import com.ws.unit.stats.mapping.factory.MapperType;

@MapperType
public class ArmorMapper implements Mapper<ArmorJsonModel, ArmorModel> {

    @Override
    public ArmorModel map(ArmorJsonModel source) {
        return null;
    }

}
