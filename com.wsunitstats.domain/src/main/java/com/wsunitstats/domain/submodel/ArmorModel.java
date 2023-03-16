package com.wsunitstats.domain.submodel;

import com.wsunitstats.domain.PersistentObject;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "armor")
@Getter
@Setter
@ToString
public class ArmorModel extends PersistentObject {
    @Column(name="value_")
    private Double value;
    private Integer probability;
}

