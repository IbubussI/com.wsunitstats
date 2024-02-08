package com.wsunitstats.domain;

import jakarta.persistence.Id;
import jakarta.persistence.MappedSuperclass;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * An object that can be persisted with externally specified primary key
 */
@Getter
@Setter
@ToString
@MappedSuperclass
public abstract class PersistentIdentifiedObject {
    @Id
    private Long id;
}
