package com.wsunitstats.domain.submodel;

import com.wsunitstats.domain.EntityInfoModel;
import com.wsunitstats.domain.PersistentObject;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "construction")
@Getter
@Setter
@ToString
public class ConstructionModel extends PersistentObject {
	private Double distance;
    private int constructionId;
    @Embedded
    private EntityInfoModel entityInfo;
    // %/sec
    private Double constructionSpeed;
    private Double constructionSpeedOnOwnTerritory;
}
