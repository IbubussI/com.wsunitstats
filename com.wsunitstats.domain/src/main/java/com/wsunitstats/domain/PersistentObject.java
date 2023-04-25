package com.wsunitstats.domain;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.MappedSuperclass;
import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
@MappedSuperclass
public abstract class PersistentObject {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
}
