package com.wsunitstats.exporter.model.json.main.submodel;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Getter
@Setter
@ToString
public class TextureJsonModel {
    private Boolean mipmap;
    private Integer purpose;
    private Integer source;
    private List<List<String>> urls;
}
