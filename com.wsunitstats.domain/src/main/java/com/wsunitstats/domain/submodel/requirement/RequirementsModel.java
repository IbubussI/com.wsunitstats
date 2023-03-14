package com.wsunitstats.domain.submodel.requirement;

import com.wsunitstats.utils.Util;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Embeddable;
import jakarta.persistence.FetchType;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;
import java.util.Objects;

@Embeddable
@Getter
@Setter
@ToString
public class RequirementsModel {
    @ElementCollection(fetch = FetchType.EAGER)
    private List<UnitRequirementModel> units;
    @ElementCollection(fetch = FetchType.EAGER)
    private List<ResearchRequirementModel> researches;
    private Boolean researchesAll;
    private Boolean unitsAll;

    /**
     * Returns true if objects are equals (as standard) but also returns true
     * if given other object is null or contains only 'empty' fields (nulls or empty collections).
     * It is required because RequirementsModel is nullable and repository returns empty List instead of null
     * It is used by CUSTOM include type of Jackson as follows:
     * new RequirementsModel().equals(_object to check if it is empty_)
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null) return true;
        if (getClass() != o.getClass()) return false;
        RequirementsModel that = (RequirementsModel) o;
        return Util.equalsNullable(units, that.units)
                && Util.equalsNullable(researches, that.researches)
                && Objects.equals(researchesAll, that.researchesAll)
                && Objects.equals(unitsAll, that.unitsAll);
    }

    @Override
    public int hashCode() {
        return Objects.hash(units, researches, researchesAll, unitsAll);
    }
}
