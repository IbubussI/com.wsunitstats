package com.ws.unit.stats.model;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.ws.unit.stats.service.impl.UnitJsonModelDeserializer;
import com.ws.unit.stats.service.impl.UnitJsonModelSerializer;

@JsonDeserialize(using = UnitJsonModelDeserializer.class)
@JsonSerialize(using = UnitJsonModelSerializer.class)
public class UnitJsonModel {
    private int id;
    private UnitDataJsonModel data;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public UnitDataJsonModel getData() {
        return data;
    }

    public void setData(UnitDataJsonModel data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "UnitJsonModel{" +
                "id=" + id +
                ", data=" + data +
                '}';
    }
}
