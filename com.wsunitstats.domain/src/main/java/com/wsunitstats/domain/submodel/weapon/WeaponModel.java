package com.wsunitstats.domain.submodel.weapon;

import com.wsunitstats.domain.PersistentObject;
import com.wsunitstats.domain.submodel.DistanceModel;
import com.wsunitstats.utils.service.impl.serializer.number.FloatPrecision;
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
    private int weaponId;
    private String weaponType;
    private Boolean autoAttack;
    private Boolean attackGround;
    @Embedded
    private DistanceModel distance;
    private Boolean enabled;
    @Embedded
    private ProjectileModel projectile;
    private Double rechargePeriod;
    private Double spread;
    private Double angle;
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private DamageWrapperModel damage;

    // Bombers specific
    private Integer charges;

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

    @FloatPrecision(3)
    public Double getAttackDelay() {
        return attackDelay;
    }

    @FloatPrecision(3)
    public Double getAttackTime() {
        return attackTime;
    }

    @FloatPrecision(3)
    public Double getAvgShotTime() {
        return avgShotTime;
    }
}
