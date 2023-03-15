package com.wsunitstats.domain.submodel;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.wsunitstats.domain.PersistentObject;
import com.wsunitstats.domain.submodel.requirement.RequirementsModel;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Entity(name = "building")
@Getter
@Setter
@ToString
public class BuildingModel extends PersistentObject {
    @ElementCollection(fetch = FetchType.EAGER)
    private List<ResourceModel> initCost;
    @ElementCollection(fetch = FetchType.EAGER)
    private List<ResourceModel> fullCost;
    @Embedded
    @JsonInclude(value = JsonInclude.Include.CUSTOM, valueFilter = RequirementsModel.class)
    private RequirementsModel requirements;
    @ElementCollection(fetch = FetchType.EAGER)
    protected List<ResourceModel> healCost;
    @Embedded
    @JsonInclude(value = JsonInclude.Include.CUSTOM, valueFilter = IncomeModel.class)
    protected IncomeModel income;
}
