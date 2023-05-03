package com.wsunitstats.domain.submodel;

import com.wsunitstats.utils.Util;
import jakarta.persistence.Column;
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
public class IncomeModel {
    private Double period;
    @Column(name = "value_")
    @ElementCollection(fetch = FetchType.EAGER)
    private List<ResourceModel> value;

    /**
     * Returns true if objects are equals (as standard) but also returns true
     * if given other object is null or contains only 'empty' fields (nulls or empty collections).
     * It is required because RequirementsModel is nullable and repository returns empty List instead of null
     * It is used by CUSTOM include type of Jackson as follows:
     * new IncomeModel().equals(_object to check if it is empty_)
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null) return true;
        if (getClass() != o.getClass()) return false;
        IncomeModel that = (IncomeModel) o;
        return Util.equalsNullable(value, that.value)
               && Objects.equals(period, that.period);
    }

    @Override
    public int hashCode() {
        return Objects.hash(period, value);
    }
}
