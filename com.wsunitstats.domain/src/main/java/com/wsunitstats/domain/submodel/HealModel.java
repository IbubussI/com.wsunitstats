package com.wsunitstats.domain.submodel;

import com.wsunitstats.domain.PersistentObject;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Entity(name = "heal")
@Getter
@Setter
@ToString
public class HealModel extends PersistentObject {
    private Double distance;
    private Double perSecond;
    @ElementCollection(fetch = FetchType.EAGER)
    private List<String> targetTags;
    private Double searchNextDistance;
    private Double autoSearchTargetDistance;
    private Double autoSearchTargetPeriod;
}
