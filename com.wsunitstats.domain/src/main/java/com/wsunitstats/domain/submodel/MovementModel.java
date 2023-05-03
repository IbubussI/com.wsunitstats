package com.wsunitstats.domain.submodel;

import com.wsunitstats.domain.PersistentObject;
import jakarta.persistence.Entity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "movement")
@Getter
@Setter
@ToString
public class MovementModel extends PersistentObject {
    private Integer speed;
    private Double rotationSpeed;
    private Integer weight;
}
