package com.wsunitstats.domain.submodel.weapon;

import com.wsunitstats.domain.PersistentObject;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Entity(name = "buff")
@Getter
@Setter
@ToString
public class BuffModel extends PersistentObject {
    private int buffId;
    private String name;
    private Double period;
    @ElementCollection(fetch = FetchType.EAGER)
    private List<String> affectedUnits;
}
