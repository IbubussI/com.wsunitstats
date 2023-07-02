package com.wsunitstats.domain.submodel.ability;

import com.wsunitstats.domain.submodel.weapon.DamageWrapperModel;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToOne;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "ability_damage")
@Getter
@Setter
@ToString
public class DamageAbilityModel extends GenericAbility {
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private DamageWrapperModel damage;
}
