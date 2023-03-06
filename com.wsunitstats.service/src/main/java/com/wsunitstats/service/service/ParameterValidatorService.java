package com.wsunitstats.service.service;

import com.wsunitstats.service.exception.InvalidParameterException;

public interface ParameterValidatorService {
    void validateStandard(String locale, String sortBy, String sortDir, Integer page, Integer size) throws InvalidParameterException;

    void validateLocale(String locale) throws InvalidParameterException;

    void validateSortBy(String sortBy) throws InvalidParameterException;

    void validateSortDir(String sortDir) throws InvalidParameterException;

    void validatePage(Integer page) throws InvalidParameterException;

    void validateSize(Integer size) throws InvalidParameterException;
}
