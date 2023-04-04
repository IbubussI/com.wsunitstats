package com.wsunitstats.domain.account;

import com.wsunitstats.domain.PersistentObject;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.ManyToMany;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Set;

@Entity(name = "account")
@Getter
@Setter
@ToString
public class AccountDomain extends PersistentObject {
    @Column(unique = true, nullable = false, length = 30)
    private String username;
    @Column(nullable = false, columnDefinition = "BINARY(60)")
    private String password;
    @ManyToMany(fetch = FetchType.EAGER)
    private Set<RoleDomain> roles;
}
