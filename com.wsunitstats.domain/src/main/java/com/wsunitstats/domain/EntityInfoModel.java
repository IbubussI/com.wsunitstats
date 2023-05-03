package com.wsunitstats.domain;

import jakarta.persistence.Embeddable;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Embeddable
@Getter
@Setter
@ToString
public class EntityInfoModel {
    private String entityName;
    private Integer entityId;
    private String entityImage;
    private String entityNation;
}
