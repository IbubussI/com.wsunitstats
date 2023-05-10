package com.wsunitstats.domain.submodel;

import com.wsunitstats.domain.PersistentObject;
import jakarta.persistence.Column;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Entity(name = "income")
@Getter
@Setter
@ToString
public class IncomeModel extends PersistentObject {
    private Double period;
    @Column(name = "value_")
    @ElementCollection(fetch = FetchType.EAGER)
    private List<ResourceModel> value;
}
