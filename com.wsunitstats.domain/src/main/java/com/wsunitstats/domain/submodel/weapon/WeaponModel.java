package com.wsunitstats.domain.submodel.weapon;

import com.wsunitstats.domain.PersistentObject;
import com.wsunitstats.domain.submodel.DistanceModel;
import jakarta.persistence.CascadeType;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToOne;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Entity(name = "weapon")
@Getter
@Setter
@ToString
public class WeaponModel extends PersistentObject {
    private Boolean autoAttack;
    @Embedded
    private DistanceModel distance;
    private Boolean enabled;
    @Embedded
    private ProjectileModel projectile;
    private Double rechargePeriod;
    private Double spread;
    private String areaType;
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private BuffModel buff;
    private Boolean damageFriendly;
    @ElementCollection(fetch = FetchType.EAGER)
    private List<DamageModel> damages;
    private Double envDamage;
    private Double radius;

    @ElementCollection(fetch = FetchType.EAGER)
    private List<String> envsAffected;
    // Bombers specific
    private Integer charges;

    // Death Scythe specific
    private int damagesCount;
    // For melee attacks and shotguns
    private int attacksPerAttack;
    // For machine-guns
    private int attacksPerAction;
    // Time between attack queried and attack performed.
    // Overlaps with recharge time (both start at the same time)
    private Double attackDelay;
    // Time of attack action.
    // Overlaps with recharge time (both start at the same time)
    // Time to empty single cartridge for sequential multi-attack units
    private Double attackTime;
    // Average time for 1 shot for sequential multi-attack units
    private Double avgShotTime;
}
