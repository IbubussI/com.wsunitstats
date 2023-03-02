package com.wsunitstats.exporter.model.json.gameplay.submodel;

import java.util.List;

public class ArmorJsonModel {
    private List<Entry> data;
    private Integer type;

    public List<Entry> getData() {
        return data;
    }

    public void setData(List<Entry> data) {
        this.data = data;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "ArmorJsonModel{" +
                "data=" + data +
                ", type=" + type +
                '}';
    }

    public static class Entry {
        private Integer object;
        private Integer probability;

        public Integer getObject() {
            return object;
        }

        public void setObject(Integer object) {
            this.object = object;
        }

        public Integer getProbability() {
            return probability;
        }

        public void setProbability(Integer probability) {
            this.probability = probability;
        }

        @Override
        public String toString() {
            return "Entry{" +
                    "object=" + object +
                    ", probability=" + probability +
                    '}';
        }
    }
}
