package com.wsunitstats.domain.submodel.weapon;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Getter
@Setter
@ToString
public class BuffModel {
    private Double period;
    private String effect;
    private List<String> targets;
}
