package com.ws.unit.stats.service.impl;

import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.ws.unit.stats.model.UnitDataJsonModel;
import com.ws.unit.stats.model.UnitJsonModel;

import java.lang.reflect.Type;

class UnitJsonModelDeserializer implements JsonDeserializer<UnitJsonModel> {
    @Override
    public UnitJsonModel deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext context) throws JsonParseException {
        UnitJsonModel unitJsonModel = new UnitJsonModel();
        JsonArray array = json.getAsJsonArray();
        for (JsonElement arrayElement : array) {
            if (arrayElement.isJsonPrimitive()) {
                unitJsonModel.setId(arrayElement.getAsInt());
            }
            if (arrayElement.isJsonObject()) {
                unitJsonModel.setData(context.deserialize(arrayElement, UnitDataJsonModel.class));
            }
        }
        return unitJsonModel;
    }
}
