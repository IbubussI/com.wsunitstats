package com.wsunitstats.domain.submodel;

import com.wsunitstats.domain.PersistentObject;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToMany;
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
    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<TagModel> targetTags;
    private Double searchNextDistance;
    private Double autoSearchTargetDistance;
    private Double autoSearchTargetPeriod;
}
