package com.wsunitstats.service.exception;

public class AuthorizationException extends Exception {
    public AuthorizationException(Throwable cause) {
        super(cause);
    }

    public AuthorizationException(String reason) {
        super(reason);
    }

    public AuthorizationException(String reason, Throwable cause) {
        super(reason, cause);
    }
}
