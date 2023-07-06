package com.wsunitstats.service.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import java.util.List;
import java.util.Map;

public interface UtilsService {
    Pageable getPageable(String orderBy, String sortDir, int page, int size);

    List<Long> parseIds(List<String> idsParamList);

    List<Integer> parseGameIds(List<String> idsParamList);

    ResponseEntity<String> getJson(Object entities, boolean localize, String locale) throws JsonProcessingException;

    ResponseEntity<String> getStringJsonResponseEntity(String payload, HttpStatus status);

    ResponseEntity<Map<String, Object>> getMapJsonResponseEntity(Map<String, Object> payload, HttpStatus status);
}
