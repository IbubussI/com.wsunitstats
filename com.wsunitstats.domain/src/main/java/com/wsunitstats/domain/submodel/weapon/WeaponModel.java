package com.wsunitstats.domain.submodel.weapon;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Getter
@Setter
@ToString
public class WeaponModel {
    private Boolean autoAttack;
    private Integer attacksCount;
    private Integer charges;
    private List<AttackModel> damages;
    private DistanceModel distance;
    private Boolean enabled;
    private Double projectileSpeed;
    private Double rechargePeriod;
    private Double spread;
}
