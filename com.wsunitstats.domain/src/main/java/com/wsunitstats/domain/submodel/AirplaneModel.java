package com.wsunitstats.domain.submodel;

import com.wsunitstats.domain.PersistentObject;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
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
    private Double rechargingSpeed;
    private Double refuelingSpeed;
    @ElementCollection(fetch = FetchType.EAGER)
    private List<String> aerodromeTags;
    // In seconds of fly time
    private Double flyTime;
    private Double flyHeight;
    private Boolean kamikaze;
    private Integer ascensionSpeed;
}
