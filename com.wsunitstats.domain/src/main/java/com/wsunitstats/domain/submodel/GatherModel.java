package com.wsunitstats.domain.submodel;

import com.wsunitstats.domain.PersistentObject;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToMany;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Entity(name = "gather")
@Getter
@Setter
@ToString
public class GatherModel extends PersistentObject {
    private int gatherId;
    private Double angle;
    private Double bagSize;
    private Double findTargetDistance;
    private Double findStorageDistance;
    private Double gatherDistance;
    private Double putDistance;
    private Double perSecond;
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<EnvTagModel> envTags;
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<TagModel> storageTags;
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<TagModel> unitTags;
    private ResourceModel resource;
}
