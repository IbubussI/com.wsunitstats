package com.wsunitstats.service.controller;

import com.wsunitstats.service.exception.RestException;
import com.wsunitstats.service.service.UtilsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Map;

@ControllerAdvice
public class ErrorController {
    private static final Logger LOG = LoggerFactory.getLogger(ErrorController.class);

    @Autowired
    private UtilsService utilsService;

    @ExceptionHandler(RestException.class)
    public ResponseEntity<Map<String, Object>> handleError(RestException exception) {
        HttpStatus status = exception.getStatus();
        if (status.is5xxServerError()) {
            LOG.error("Server error", exception);
        } else {
            LOG.debug("Error handler invoked", exception);
        }
        Map<String, Object> body = new LinkedHashMap<>();
        body.put("timestamp", new Date());
        body.put("status", status.value());
        body.put("error", status.getReasonPhrase());
        body.put("message", exception.getMessage());
        return utilsService.getMapJsonResponseEntity(body, status);
    }
}
