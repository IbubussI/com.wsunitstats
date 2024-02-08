package com.wsunitstats.domain.submodel.requirement;

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
public class UnitRequirementModel {
    private int unitId;
    private String unitName;
    @ManyToOne(cascade = CascadeType.ALL)
    private NationModel unitNation;
    private String unitImage;
    private String quantity;
}
