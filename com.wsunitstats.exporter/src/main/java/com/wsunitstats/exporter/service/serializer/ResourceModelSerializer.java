package com.wsunitstats.exporter.service.serializer;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.wsunitstats.exporter.model.mapped.submodel.ResourceModel;

import java.io.IOException;
import java.util.Map;

public class ResourceModelSerializer extends JsonSerializer<ResourceModel> {
    @Override
    public void serialize(ResourceModel value, JsonGenerator gen, SerializerProvider serializers) throws IOException {
        gen.writeStartArray();
        for(Map<String, Object> resource : value.getData()) {
            serializers.defaultSerializeValue(resource, gen);
        }
        gen.writeEndArray();
    }
}
