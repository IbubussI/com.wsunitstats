package com.wsunitstats.domain.submodel.weapon;

import com.wsunitstats.domain.PersistentObject;
import jakarta.persistence.CascadeType;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToOne;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Entity(name = "weapon_damage")
@Getter
@Setter
@ToString
public class DamageWrapperModel extends PersistentObject {
    private Double angle;
    private String areaType;
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private BuffModel buff;
    private Boolean damageFriendly;
    @ElementCollection(fetch = FetchType.EAGER)
    private List<DamageModel> damages;
    // Death Scythe specific
    private int damagesCount;
    private Double envDamage;
    @ElementCollection(fetch = FetchType.EAGER)
    private List<String> envsAffected;
    private Double radius;
}
