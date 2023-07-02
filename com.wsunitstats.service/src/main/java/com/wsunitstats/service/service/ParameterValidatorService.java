package com.wsunitstats.service.service;

import com.wsunitstats.service.exception.InvalidParameterException;

import java.util.List;

public interface ParameterValidatorService {
    void validateStandard(String locale, String sortBy, List<String> columnNames, String sortDir, Integer page, Integer size) throws InvalidParameterException;

    void validateLocale(String locale) throws InvalidParameterException;

    void validateSortBy(String sortBy, List<String> columnNames) throws InvalidParameterException;

    void validateSortDir(String sortDir) throws InvalidParameterException;

    void validatePage(Integer page) throws InvalidParameterException;

    void validateSize(Integer size) throws InvalidParameterException;

    void validateUsername(String username) throws InvalidParameterException;

    void validatePassword(String password) throws InvalidParameterException;
}
