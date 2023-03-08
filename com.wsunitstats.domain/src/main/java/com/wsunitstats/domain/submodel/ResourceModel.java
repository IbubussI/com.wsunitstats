package com.wsunitstats.domain.submodel;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Embeddable
@Getter
@Setter
@ToString
public class ResourceModel {
    private String resource;
    @Column(name="value_")
    private int value;
}
