package com.wsunitstats.domain.submodel;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.wsunitstats.domain.PersistentIdentifiedObject;
import jakarta.persistence.Entity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class,
        property = "id", scope = NationModel.class)
@Entity(name = "nation")
@Getter
@Setter
@ToString
public class NationModel extends PersistentIdentifiedObject {
    private String name;
}
