package com.wsunitstats.domain.submodel;

import com.wsunitstats.domain.PersistentObject;
import com.wsunitstats.domain.submodel.weapon.WeaponModel;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToMany;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Getter
@Setter
@ToString
@Entity(name = "turret")
public class TurretModel extends PersistentObject {
    private Double rotationSpeed;
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<WeaponModel> weapons;
}
