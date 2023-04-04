package com.wsunitstats.service.service.impl;

import com.wsunitstats.domain.account.AccountDomain;
import com.wsunitstats.domain.account.Role;
import com.wsunitstats.domain.account.RoleDomain;
import com.wsunitstats.service.repository.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class DatabaseUserDetailsServiceImpl implements UserDetailsService {
    @Autowired
    private AccountRepository accountRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        AccountDomain accountDomain = accountRepository.findByUsername(username)
                .orElseThrow(() -> new UsernameNotFoundException("Account with username [{}] not found"));
        return new User(accountDomain.getUsername(),
                accountDomain.getPassword(),
                accountDomain.getRoles().stream()
                        .map(RoleDomain::getRole)
                        .map(Role::name)
                        .map(SimpleGrantedAuthority::new)
                        .map(GrantedAuthority.class::cast)
                        .toList());
    }
}
