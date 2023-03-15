package com.wsunitstats.domain.submodel;

import com.wsunitstats.domain.PersistentObject;
import jakarta.persistence.Entity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "submarine")
@Getter
@Setter
@ToString
public class SubmarineDepthModel extends PersistentObject {
    // In seconds of underwater time
    private Double underwaterTime;
    private Double swimDepth;
    private Integer abilityOnFuelEnd;
    private Integer ascensionSpeed;
}