package com.wsunitstats.domain.submodel.ability;

import com.wsunitstats.domain.submodel.DistanceModel;
import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Embeddable
public class OnActionModel {
    @Column(name = "onAction_Distance")
    private DistanceModel distance;
    @Column(name = "onAction_Enabled")
    private Boolean enabled;
    @Column(name = "onAction_OnAgro")
    private Boolean onAgro;
    @Column(name = "onAction_RechargeTime")
    private Double rechargeTime;
}
