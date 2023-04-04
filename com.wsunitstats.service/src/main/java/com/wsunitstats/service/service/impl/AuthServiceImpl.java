package com.wsunitstats.service.service.impl;

import com.wsunitstats.service.exception.AuthorizationException;
import com.wsunitstats.service.service.AuthService;
import io.jsonwebtoken.JwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import javax.crypto.SecretKey;
import java.util.Date;
import java.util.UUID;

@Service
@PropertySource(value = "classpath:service.properties")
@PropertySource(value = "file:config/service.properties", ignoreResourceNotFound = true)
public class AuthServiceImpl implements AuthService {
    private SecretKey sessionSecretKey;

    @Value("${com.wsunitstats.service.auth.token.lifetime}")
    private int tokenLifetime;

    @PostConstruct
    protected void activate() {
        sessionSecretKey = Keys.secretKeyFor(SignatureAlgorithm.HS512);
    }

    @Override
    public String getUserAuthToken(UserDetails userDetails) {
        return Jwts.builder()
                .setId(UUID.randomUUID().toString())
                .setSubject(userDetails.getUsername())
                .setIssuedAt(new Date())
                .setExpiration(new Date(System.currentTimeMillis() + tokenLifetime))
                .signWith(sessionSecretKey)
                .compact();
    }

    @Override
    public String parseUserName(String token) throws AuthorizationException {
        try {
            return Jwts.parserBuilder()
                    .setSigningKey(sessionSecretKey)
                    .build()
                    .parseClaimsJws(token)
                    .getBody()
                    .getSubject();
        } catch (JwtException ex) {
            throw new AuthorizationException(ex.getMessage(), ex);
        }
    }

    @Override
    public int getAuthTokenLifetime() {
        return tokenLifetime;
    }
}
