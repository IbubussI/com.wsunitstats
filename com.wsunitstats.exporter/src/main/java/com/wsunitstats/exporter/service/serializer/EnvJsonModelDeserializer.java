package com.wsunitstats.exporter.service.serializer;

import com.wsunitstats.exporter.model.raw.json.gameplay.submodel.EnvJsonModel;

public class EnvJsonModelDeserializer extends IndexedArrayDataModelDeserializer<EnvJsonModel> {

    @Override
    protected Class<EnvJsonModel> getValueClass() {
        return EnvJsonModel.class;
    }

}
