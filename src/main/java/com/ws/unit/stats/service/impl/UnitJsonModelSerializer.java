package com.ws.unit.stats.service.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.ws.unit.stats.model.UnitJsonModel;

import java.io.IOException;

public class UnitJsonModelSerializer extends JsonSerializer<UnitJsonModel> {
    @Override
    public void serialize(UnitJsonModel value, JsonGenerator gen, SerializerProvider serializers) throws IOException {
        gen.writeStartArray();
        gen.writeNumber(value.getId());
        serializers.defaultSerializeValue(value.getData(), gen);
        gen.writeEndArray();
    }
}
