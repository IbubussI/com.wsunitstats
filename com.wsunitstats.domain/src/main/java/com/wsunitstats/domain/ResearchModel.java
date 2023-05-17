package com.wsunitstats.domain;

import com.wsunitstats.domain.submodel.UpgradeModel;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToMany;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Entity(name = "research")
@Getter
@Setter
@ToString
public class ResearchModel extends GenericEntityModel {
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<UpgradeModel> upgrades;
}