package com.wsunitstats.domain.submodel;

import com.wsunitstats.domain.PersistentObject;
import jakarta.persistence.Entity;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "tag_general")
@Getter
@Setter
@ToString
public class TagModel extends PersistentObject {
    protected int gameId;
    protected String tagName;
    protected String tagGroupName;
}
