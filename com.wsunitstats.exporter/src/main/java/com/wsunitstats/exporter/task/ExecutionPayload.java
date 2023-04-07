package com.wsunitstats.exporter.task;

import com.wsunitstats.domain.LocalizationModel;
import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.exporter.model.ImageModel;
import lombok.Getter;
import lombok.Setter;

import java.util.List;
import java.util.Map;

@Getter
@Setter
public class ExecutionPayload {
    private List<UnitModel> units;
    private List<LocalizationModel> localization;
    private Map<String, ImageModel> images;
    private String hostname;
    private String authPath;
    private String username;
    private String password;
}
