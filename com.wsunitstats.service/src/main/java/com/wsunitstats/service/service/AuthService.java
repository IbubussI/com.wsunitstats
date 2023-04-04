package com.wsunitstats.service.service;

import com.wsunitstats.service.exception.AuthorizationException;
import org.springframework.security.core.userdetails.UserDetails;

public interface AuthService {
    String getUserAuthToken(UserDetails userDetails);

    String parseUserName(String token) throws AuthorizationException;

    int getAuthTokenLifetime();
}
