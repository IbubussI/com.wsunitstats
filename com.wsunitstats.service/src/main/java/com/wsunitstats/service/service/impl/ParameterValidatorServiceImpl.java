package com.wsunitstats.service.service.impl;

import com.wsunitstats.service.exception.InvalidParameterException;
import com.wsunitstats.service.repository.LocalizationRepository;
import com.wsunitstats.service.repository.UnitRepository;
import com.wsunitstats.service.service.ParameterValidatorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ParameterValidatorServiceImpl implements ParameterValidatorService {
    private static final String ASC = "asc";
    private static final String DESC = "desc";
    private static final int PAGE_MIN = 0;
    private static final int PAGE_MAX = Integer.MAX_VALUE - 1;
    private static final int SIZE_MIN = 0;
    private static final int SIZE_MAX = 1000;

    @Autowired
    private LocalizationRepository localizationRepository;
    @Autowired
    private UnitRepository unitRepository;

    @Override
    public void validateStandard(String locale, String sortBy, String sortDir, Integer page, Integer size) throws InvalidParameterException {
        validateLocale(locale);
        validateSortBy(sortBy);
        validateSortDir(sortDir);
        validatePage(page);
        validateSize(size);
    }

    @Override
    public void validateLocale(String locale) throws InvalidParameterException {
        List<String> locales = localizationRepository.getLocaleNames();
        if (locale == null || locales.stream().noneMatch(locale::equalsIgnoreCase)) {
            throw new InvalidParameterException("Locale not found: " + locale);
        }
    }

    @Override
    public void validateSortBy(String sortBy) throws InvalidParameterException {
        List<String> unitColumns = unitRepository.getColumnNames();
        if (sortBy == null || unitColumns.stream().noneMatch(sortBy::equalsIgnoreCase)) {
            throw new InvalidParameterException("Illegal sortBy parameter: " + sortBy);
        }
    }

    @Override
    public void validateSortDir(String sortDir) throws InvalidParameterException {
        if (!ASC.equalsIgnoreCase(sortDir) && !DESC.equalsIgnoreCase(sortDir)) {
            throw new InvalidParameterException("Illegal sortDir parameter: " + sortDir);
        }
    }

    @Override
    public void validatePage(Integer page) throws InvalidParameterException {
        if (!(page != null && page <= PAGE_MAX && page >= PAGE_MIN)) {
            throw new InvalidParameterException("Illegal page parameter: " + page);
        }
    }

    @Override
    public void validateSize(Integer size) throws InvalidParameterException {
        if (!(size != null && size <= SIZE_MAX && size >= SIZE_MIN)) {
            throw new InvalidParameterException("Illegal size parameter: " + size);
        }
    }
}
