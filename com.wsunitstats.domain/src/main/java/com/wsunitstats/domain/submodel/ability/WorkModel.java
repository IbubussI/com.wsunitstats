package com.wsunitstats.domain.submodel.ability;

import com.wsunitstats.domain.PersistentObject;
import com.wsunitstats.domain.submodel.ReserveModel;
import com.wsunitstats.domain.submodel.ResourceModel;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Entity(name = "work")
@Getter
@Setter
@ToString
public class WorkModel extends PersistentObject {
    private int workId;
    private boolean enabled;
    private Double makeTime;
    @Embedded
    @ElementCollection(fetch = FetchType.EAGER)
    private List<ResourceModel> cost;
    @Embedded
    private ReserveModel reserve;
}
