package com.wsunitstats.domain.service.impl;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.wsunitstats.domain.service.ModelExporterService;
import org.springframework.stereotype.Service;

@Service
public class ModelExporterServiceImpl implements ModelExporterService {
    @Override
    public <T> String exportToJson(T model) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        mapper.setSerializationInclusion(JsonInclude.Include.NON_NULL);
        return mapper.writeValueAsString(model);
    }
}
