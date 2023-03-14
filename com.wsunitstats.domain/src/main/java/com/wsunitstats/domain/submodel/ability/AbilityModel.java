package com.wsunitstats.domain.submodel.ability;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.wsunitstats.domain.PersistentObject;
import com.wsunitstats.domain.submodel.ResourceModel;
import com.wsunitstats.domain.submodel.requirement.RequirementsModel;
import jakarta.persistence.Column;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Entity(name = "ability")
@Getter @Setter @ToString
public class AbilityModel extends PersistentObject {
    private Integer entityId;
    private String entityName;

    private String abilityType;
    @Column(name = "count_")
    private Integer count;
    private Double duration;
    private Double lifeTime;

    @Embedded
    @JsonInclude(value = JsonInclude.Include.CUSTOM, valueFilter = RequirementsModel.class)
    private RequirementsModel requirements;
    @ElementCollection(fetch = FetchType.EAGER)
    private List<ResourceModel> cost;
    private Double makeTime;

    private Integer reserveLimit;
    private Double reserveTime;
    @Embedded
    private OnActionModel onAction;
}
