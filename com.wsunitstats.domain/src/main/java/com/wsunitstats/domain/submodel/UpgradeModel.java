package com.wsunitstats.domain.submodel;

import com.wsunitstats.domain.EntityInfoModel;
import com.wsunitstats.domain.PersistentObject;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Entity(name = "upgrade")
@Getter
@Setter
@ToString
public class UpgradeModel extends PersistentObject {
    private int upgradeId;
    @ElementCollection(fetch = FetchType.EAGER)
    private List<ParameterModel> parameters;
    private int programId;
    private String programFile;
    private EntityInfoModel unit;
}
