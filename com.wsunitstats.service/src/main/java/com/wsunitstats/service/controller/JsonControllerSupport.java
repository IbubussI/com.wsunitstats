package com.wsunitstats.service.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;

import java.util.Map;

public abstract class JsonControllerSupport {
    protected ResponseEntity<String> getStringJsonResponseEntity(String payload, HttpStatus status) {
        return ResponseEntity.status(status).contentType(MediaType.APPLICATION_JSON).body(payload);
    }

    protected ResponseEntity<Map<String, Object>> getMapJsonResponseEntity(Map<String, Object> payload, HttpStatus status) {
        return ResponseEntity.status(status).contentType(MediaType.APPLICATION_JSON).body(payload);
    }
}
