package com.wsunitstats.exporter.service;

import org.springframework.http.ResponseEntity;

public interface RestService {
    /**
     * Send POST request with given JSON body to given URI
     * @return {@link ResponseEntity} of executed request
     */
    ResponseEntity<String> postJson(String json, String uri);
}
