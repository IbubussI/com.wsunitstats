package com.wsunitstats.domain.submodel;

import com.wsunitstats.domain.PersistentObject;
import jakarta.persistence.Entity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "envtag")
@Getter
@Setter
@ToString
public class EnvTagModel extends PersistentObject {
    private String envName;
    private String envImage;
    private int envId;
}
