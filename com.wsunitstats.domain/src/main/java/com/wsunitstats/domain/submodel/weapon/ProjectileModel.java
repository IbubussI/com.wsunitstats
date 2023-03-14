package com.wsunitstats.domain.submodel.weapon;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Embeddable
public class ProjectileModel {
    @Column(name = "projectileId")
    private Integer gameId;
    @Column(name = "projectileSpeed")
    private Double speed;
    @Column(name = "projectileTimeToStartCollision")
    private Double timeToStartCollision;
}
