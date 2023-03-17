package com.wsunitstats.domain.submodel;

import com.wsunitstats.domain.PersistentObject;
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
    private Integer buildId;
    // %/sec
    private Double constructionSpeed;
}
