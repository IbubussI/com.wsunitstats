package com.wsunitstats.domain.submodel;

import com.wsunitstats.domain.PersistentObject;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Entity(name = "gather")
@Getter
@Setter
@ToString
public class GatherModel extends PersistentObject {
    private Double bagSize;
    private Double findTargetDistance;
    private Double gatherDistance;
    private Double putDistance;
    private Double perSecond;
    @ElementCollection(fetch = FetchType.EAGER)
    private List<String> envTags;
    private String resource;
}
