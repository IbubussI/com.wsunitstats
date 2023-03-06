package com.wsunitstats.service.exception;

public class InvalidParameterException extends Exception {
    public InvalidParameterException(Throwable cause) {
        super(cause);
    }

    public InvalidParameterException(String reason) {
        super(reason);
    }

    public InvalidParameterException(String reason, Throwable cause) {
        super(reason, cause);
    }
}
