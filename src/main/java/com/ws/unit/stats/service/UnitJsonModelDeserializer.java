package com.ws.unit.stats.service;

import com.ws.unit.stats.model.raw.json.gameplay.submodel.UnitJsonModel;

public class UnitJsonModelDeserializer extends IndexedArrayDataModelDeserializer<UnitJsonModel> {

    @Override
    protected Class<UnitJsonModel> getValueClass() {
        return UnitJsonModel.class;
    }

}
