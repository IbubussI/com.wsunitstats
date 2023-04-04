package com.wsunitstats.service.controller;

import com.wsunitstats.service.exception.AuthorizationException;
import com.wsunitstats.service.service.AuthService;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Base64;

@Component
public class AuthorizationFilter extends OncePerRequestFilter {
    private static final Logger LOG = LoggerFactory.getLogger(AuthorizationFilter.class);

    private static final String HEADER = "Authorization";
    private static final String BEARER_PREFIX = "Bearer ";

    @Autowired
    private AuthService authService;
    @Autowired
    private UserDetailsService userDetailsService;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws ServletException, IOException {
        try {
            String authenticationHeader = request.getHeader(HEADER);
            if (authenticationHeader != null && authenticationHeader.startsWith(BEARER_PREFIX)) {
                String bearerTokenBase64 = authenticationHeader.replace(BEARER_PREFIX, "");
                String bearerToken = new String(Base64.getDecoder().decode(bearerTokenBase64), StandardCharsets.UTF_8);
                String username = authService.parseUserName(bearerToken);
                UserDetails userDetails = userDetailsService.loadUserByUsername(username);
                UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(
                        userDetails, null, userDetails.getAuthorities());
                authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
                SecurityContextHolder.getContext().setAuthentication(authentication);
            } else {
                SecurityContextHolder.clearContext();
            }
            chain.doFilter(request, response);
        } catch (AuthorizationException | UsernameNotFoundException ex) {
            LOG.info("Authorization failed with error: [{}]", ex.getMessage(), ex);
            response.sendError(HttpServletResponse.SC_FORBIDDEN, ex.getMessage());
        }
    }
}
