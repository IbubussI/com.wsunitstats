package com.wsunitstats.domain.submodel;

import com.wsunitstats.domain.PersistentObject;
import jakarta.persistence.Entity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "transporting")
@Getter
@Setter
@ToString
public class TransportingModel extends PersistentObject {
    private Integer ownSize;
    private Integer carrySize;
    private Boolean onlyInfantry;
}
