package com.wsunitstats.domain.submodel.ability;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.wsunitstats.domain.EntityInfoModel;
import com.wsunitstats.domain.PersistentObject;
import com.wsunitstats.domain.submodel.ReserveModel;
import com.wsunitstats.domain.submodel.ResourceModel;
import com.wsunitstats.domain.submodel.requirement.RequirementsModel;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToOne;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Entity(name = "ability")
@Getter @Setter @ToString
public class AbilityModel extends PersistentObject {
    @Embedded
    private EntityInfoModel entityInfo;
    private int abilityId;
    private int abilityType;
    private String abilityName;
    @Column(name = "count_")
    private Integer count;
    private Double duration;
    private Double lifeTime;
    private boolean enabled;
    private Double makeTime;

    @Embedded
    @JsonInclude(value = JsonInclude.Include.CUSTOM, valueFilter = RequirementsModel.class)
    private RequirementsModel requirements;
    @ElementCollection(fetch = FetchType.EAGER)
    private List<ResourceModel> cost;

    @Embedded
    private ReserveModel reserve;
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private OnActionModel onAction;
}
