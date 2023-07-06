package com.wsunitstats.domain.submodel.ability.container;

import com.wsunitstats.domain.submodel.ability.GenericAbility;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToMany;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Entity(name = "ability_container_zone_event")
@Getter
@Setter
@ToString
public class ZoneEventAbilityContainer extends GenericAbilityContainer {
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<GenericAbility> abilities;
    private List<String> envTags;
    private Integer envSearchDistance;
    private Integer size;
}
