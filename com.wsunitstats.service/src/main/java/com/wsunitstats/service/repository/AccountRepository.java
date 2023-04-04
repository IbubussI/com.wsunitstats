package com.wsunitstats.service.repository;

import com.wsunitstats.domain.account.AccountDomain;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface AccountRepository extends CrudRepository<AccountDomain, Long> {
    Optional<AccountDomain> findByUsername(String username);
}
