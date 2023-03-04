package com.wsunitstats.domain.service;

import com.fasterxml.jackson.core.JsonProcessingException;

public interface ModelExporterService {
    /**
     * Exports given model to json representation
     *
     * @param model model to be exported to json
     * @return json string
     */
    <T> String exportToJson(T model) throws JsonProcessingException;
}
