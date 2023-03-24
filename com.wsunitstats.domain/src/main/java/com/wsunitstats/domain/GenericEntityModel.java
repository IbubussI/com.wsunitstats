package com.wsunitstats.domain;

import jakarta.persistence.MappedSuperclass;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@MappedSuperclass
@Setter
@Getter
@ToString
public abstract class GenericEntityModel extends PersistentObject {
    protected int gameId;
    protected String name;
    protected String image;
    protected String nation;
}
