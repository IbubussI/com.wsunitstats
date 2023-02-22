package com.ws.unit.stats.service.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonNode;
import com.ws.unit.stats.model.UnitDataJsonModel;
import com.ws.unit.stats.model.UnitJsonModel;

import java.io.IOException;

public class UnitJsonModelDeserializer extends JsonDeserializer<UnitJsonModel> {

    @Override
    public UnitJsonModel deserialize(JsonParser parser, DeserializationContext context) throws IOException {
        UnitJsonModel unitJsonModel = new UnitJsonModel();
        ObjectCodec codec = parser.getCodec();
        JsonNode node = codec.readTree(parser);
        if (node.isArray()) {
            for (JsonNode arrayElement : node) {
                if (arrayElement.isInt()) {
                    unitJsonModel.setId(arrayElement.asInt());
                }
                if (arrayElement.isObject()) {
                    JavaType unitDataJsonModelType = context.getTypeFactory().constructType(UnitDataJsonModel.class);
                    JsonDeserializer<?> deserializer = context.findRootValueDeserializer(unitDataJsonModelType);
                    JsonParser unitDataParser = arrayElement.traverse(codec);
                    unitDataParser.nextToken();
                    unitJsonModel.setData((UnitDataJsonModel) deserializer.deserialize(unitDataParser, context));
                }
            }
        }
        return unitJsonModel;
    }
}
