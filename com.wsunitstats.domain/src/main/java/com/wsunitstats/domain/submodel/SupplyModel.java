package com.wsunitstats.domain.submodel;

import com.wsunitstats.domain.PersistentObject;
import jakarta.persistence.Entity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "supply")
@Getter
@Setter
@ToString
public class SupplyModel extends PersistentObject {
    private Double consume;
    private Double produce;
}
