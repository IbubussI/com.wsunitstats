package com.wsunitstats.domain.submodel.weapon;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Getter
@Setter
@ToString
public class AttackModel {
    // for flamethrowers damage area calculated by radius and angle
    private Double angle;
    private String areaType;
    private BuffModel buff;
    private Boolean damageFriendly;
    private List<DamageModel> damages;
    private Integer damagesCount;
    private Double envDamage;
    private List<String> envsAffected;
}
