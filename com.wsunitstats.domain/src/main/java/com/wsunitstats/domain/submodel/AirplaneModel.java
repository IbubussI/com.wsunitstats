package com.wsunitstats.domain.submodel;

import com.wsunitstats.domain.PersistentObject;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToMany;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Entity(name = "airplane")
@Getter
@Setter
@ToString
public class AirplaneModel extends PersistentObject {
    private Double healingSpeed;
    private Double refuelSpeed;
    private Double rechargePeriod;
    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<TagModel> aerodromeTags;
    // In seconds of fly time
    private Double fuel;
    private Double flyHeight;
    private Boolean kamikaze;
    private Integer ascensionSpeed;
}
