package com.wsunitstats.domain.submodel;

import jakarta.persistence.ElementCollection;
import jakarta.persistence.Embeddable;
import jakarta.persistence.FetchType;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Embeddable
@Getter
@Setter
@ToString
public class GatherModel {
    private Double bagSize;
    private Double findTargetDistance;
    private Double gatherDistance;
    private Double putDistance;
    private Double perSecond;
    @ElementCollection(fetch = FetchType.EAGER)
    private List<String> envTags;
    private String resource;
}
