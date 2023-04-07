package com.wsunitstats.exporter.model.lua;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Getter
@Setter
@ToString
public class SessionInitFileModel {
    public static final List<String> ARRAY_NAMES = List.of(
            "unitNations",
            "nationNames",
            "researchNames",
            "researchTexts",
            "unitNames",
            "unitTexts",
            "envNames",
            "ageNames",
            "resourceIcons"
    );

    private List<String> unitNations;
    private List<String> nationNames;
    private List<String> researchNames;
    private List<String> researchTexts;
    private List<String> unitNames;
    private List<String> unitTexts;
    private List<String> envNames;
    private List<String> ageNames;
    private List<String> resourceIcons;

    public void setAll(List<List<String>> lists) {
        if (lists.size() == 9) {
            unitNations = lists.get(0);
            nationNames = lists.get(1);
            researchNames = lists.get(2);
            researchTexts = lists.get(3);
            unitNames = lists.get(4);
            unitTexts = lists.get(5);
            envNames = lists.get(6);
            ageNames = lists.get(7);
            resourceIcons = lists.get(8);
        }
    }
}
