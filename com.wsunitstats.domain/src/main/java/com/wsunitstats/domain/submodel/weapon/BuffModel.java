package com.wsunitstats.domain.submodel.weapon;

import com.wsunitstats.domain.EntityInfoModel;
import com.wsunitstats.domain.PersistentObject;
import com.wsunitstats.domain.submodel.TagModel;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToMany;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Entity(name = "buff")
@Getter
@Setter
@ToString
public class BuffModel extends PersistentObject {
    private int buffId;
    private EntityInfoModel entityInfo;
    private Double period;
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<TagModel> affectedUnits;
}
