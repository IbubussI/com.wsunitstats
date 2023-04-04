package com.wsunitstats.service.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.wsunitstats.service.exception.InvalidParameterException;
import com.wsunitstats.service.service.AuthService;
import com.wsunitstats.service.service.ParameterValidatorService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AuthenticationController {
    private static final Logger LOG = LoggerFactory.getLogger(AuthenticationController.class);

    @Autowired
    private AuthService authService;
    @Autowired
    private ParameterValidatorService parameterValidatorService;
    @Autowired
    private AuthenticationManager authenticationManager;

    @PostMapping("/api/authenticate")
    public ResponseEntity<String> authenticate(@RequestParam String username,
                                               @RequestParam String password) {
        try {
            parameterValidatorService.validateUsername(username);
            parameterValidatorService.validatePassword(password);
            Authentication authentication = authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(username, password));
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            String authToken = authService.getUserAuthToken(userDetails);
            return new ResponseEntity<>(getResponseJsonPayload(authToken, userDetails), HttpStatus.OK);
        } catch (JsonProcessingException ex) {
            LOG.error("Json error", ex);
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        } catch (InvalidParameterException ex) {
            return new ResponseEntity<>(ex.getMessage(), HttpStatus.BAD_REQUEST);
        } catch (AuthenticationException ex) {
            return new ResponseEntity<>(ex.getMessage(), HttpStatus.UNAUTHORIZED);
        }
    }

    private String getResponseJsonPayload(String authToken, UserDetails userDetails) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        ObjectNode user = mapper.createObjectNode();
        user.put("username", userDetails.getUsername());
        user.put("bearerToken", authToken);
        ArrayNode roles = user.putArray("permissionRoles");
        userDetails.getAuthorities().forEach(role -> roles.add(role.getAuthority()));
        return mapper.writeValueAsString(user);
    }
}
