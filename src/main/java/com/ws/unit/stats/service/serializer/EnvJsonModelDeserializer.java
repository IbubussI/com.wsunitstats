package com.ws.unit.stats.service.serializer;

import com.ws.unit.stats.model.raw.json.gameplay.submodel.EnvJsonModel;

public class EnvJsonModelDeserializer extends IndexedArrayDataModelDeserializer<EnvJsonModel> {

    @Override
    protected Class<EnvJsonModel> getValueClass() {
        return EnvJsonModel.class;
    }

}
