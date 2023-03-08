package com.wsunitstats.domain.submodel.ability;

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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        RequirementsModel that = (RequirementsModel) o;

        //Required because empty PersistBag returned by repository instead of null
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
