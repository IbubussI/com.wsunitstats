package com.wsunitstats.domain.service.impl;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.util.DefaultIndenter;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
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

    @Override
    public <T> String exportToPrettyJson(T model) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        mapper.setSerializationInclusion(JsonInclude.Include.NON_NULL);
        DefaultPrettyPrinter prettyWriter = new DefaultPrettyPrinter();
        DefaultPrettyPrinter.Indenter indenter = new DefaultIndenter("\t", DefaultIndenter.SYS_LF);
        prettyWriter.indentObjectsWith(indenter);
        prettyWriter.indentArraysWith(indenter);
        return mapper.writer(prettyWriter).writeValueAsString(model);
    }
}
