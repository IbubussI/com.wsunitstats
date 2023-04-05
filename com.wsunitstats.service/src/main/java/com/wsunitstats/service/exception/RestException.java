package com.wsunitstats.service.exception;

import lombok.Getter;
import org.springframework.http.HttpStatus;

@Getter
public class RestException extends RuntimeException {
    private final HttpStatus status;

    public RestException(Throwable exception, HttpStatus status) {
        this(exception.getMessage(), exception, status);
    }

    public RestException(String message, Throwable exception, HttpStatus status) {
        super(message, exception);
        this.status = status;
    }
}

