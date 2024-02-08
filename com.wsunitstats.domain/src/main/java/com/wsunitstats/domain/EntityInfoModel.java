package com.wsunitstats.domain;

import com.wsunitstats.domain.submodel.NationModel;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Embeddable;
import jakarta.persistence.ManyToOne;
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
    // Nation is optional
    @ManyToOne(cascade = CascadeType.ALL)
    private NationModel entityNation;
}
