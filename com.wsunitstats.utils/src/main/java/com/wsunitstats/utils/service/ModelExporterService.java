package com.wsunitstats.utils.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public interface ModelExporterService {
    /**
     * Exports given model to json representation
     *
     * @param model                model to be exported to json
     * @param suppressIdentityInfo if true ignores JsonIdentityInfo annotations,
     *                             making the output json without any identities
     * @return json string
     */
    <T> String exportToJson(T model, boolean suppressIdentityInfo) throws JsonProcessingException;

    /**
     * Exports given model to readable json representation
     *
     * @param model                model to be exported to json
     * @param suppressIdentityInfo if true ignores JsonIdentityInfo annotations,
     *                             making the output json without any identities
     * @return readable json string
     */
    <T> String exportToPrettyJson(T model, boolean suppressIdentityInfo) throws JsonProcessingException;

    /**
     * Returns mapper configured for exporting domain models
     *
     * @param suppressIdentityInfo if true ignores JsonIdentityInfo annotations,
     *                             making the output json without any identities
     */
    ObjectMapper getExportMapper(boolean suppressIdentityInfo);
}
