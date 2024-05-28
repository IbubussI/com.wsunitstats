package com.wsunitstats.service.service.impl;

import com.wsunitstats.service.exception.AuthorizationException;
import com.wsunitstats.service.service.AuthService;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.JwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;
import jakarta.annotation.PostConstruct;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
    private static final Logger LOG = LoggerFactory.getLogger(AuthServiceImpl.class);
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
        } catch (ExpiredJwtException ex) {
            throw new AuthorizationException("Authentication token expired", ex);
        } catch (JwtException ex) {
            LOG.error("Authorization failed with error: [{}]", ex.getMessage(), ex);
            throw new AuthorizationException("Authentication error", ex);
        }
    }

    @Override
    public int getAuthTokenLifetime() {
        return tokenLifetime;
    }
}
