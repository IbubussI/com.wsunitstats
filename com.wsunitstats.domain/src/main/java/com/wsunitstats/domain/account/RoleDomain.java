package com.wsunitstats.domain.account;

import com.wsunitstats.domain.PersistentObject;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity(name = "role")
@Getter
@Setter
@ToString
public class RoleDomain extends PersistentObject {
    @Enumerated(EnumType.STRING)
    @Column(unique = true, nullable = false, length = 30)
    private Role role;
}

