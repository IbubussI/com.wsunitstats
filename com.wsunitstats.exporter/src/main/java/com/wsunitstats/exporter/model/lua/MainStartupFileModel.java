package com.wsunitstats.exporter.model.lua;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Getter
@Setter
@ToString
public class MainStartupFileModel {
    public static final List<String> ARRAY_NAMES = List.of(
            "resourceNames",
            "envTagNames",
            "envSearchTagNames",
            "unitTagNames",
            "unitSearchTagNames",
            "projectileNames"
    );

    private List<String> resourceNames;
    private List<String> envTagNames;
    private List<String> envSearchTagNames;
    private List<String> unitTagNames;
    private List<String> unitSearchTagNames;
    private List<String> projectileNames; // Not localized

    public void setAll(List<List<String>> lists) {
        if (lists.size() == 6) {
            resourceNames = lists.get(0);
            envTagNames = lists.get(1);
            envSearchTagNames = lists.get(2);
            unitTagNames = lists.get(3);
            unitSearchTagNames = lists.get(4);
            projectileNames = lists.get(5);
        }
    }
}
