package com.wsunitstats.domain.submodel.ability;

import com.wsunitstats.domain.PersistentObject;
import com.wsunitstats.domain.submodel.DistanceModel;

import jakarta.persistence.Entity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "onaction")
@Getter
@Setter
@ToString
public class OnActionModel extends PersistentObject {
    private DistanceModel distance;
    private Boolean onAgro;
    private Double rechargeTime;
}
