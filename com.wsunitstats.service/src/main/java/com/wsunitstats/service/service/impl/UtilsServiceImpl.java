package com.wsunitstats.service.service.impl;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.wsunitstats.service.service.LocalizationService;
import com.wsunitstats.service.service.UtilsService;
import com.wsunitstats.utils.service.ModelExporterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class UtilsServiceImpl implements UtilsService {
    @Autowired
    private LocalizationService localizationService;
    @Autowired
    private ModelExporterService exporterService;

    @Override
    public Pageable getPageable(String orderBy, String sortDir, int page, int size) {
        return "asc".equals(sortDir)
                ? PageRequest.of(page, size, Sort.by(orderBy).ascending())
                : PageRequest.of(page, size, Sort.by(orderBy).descending());
    }

    @Override
    public List<Long> parseIds(List<String> idsParamList) {
        List<Long> idList = new ArrayList<>();
        for (String id : idsParamList) {
            try {
                idList.add(Long.parseLong(id));
            } catch (NumberFormatException ignored) {
            }
        }
        return idList;
    }

    @Override
    public List<Integer> parseGameIds(List<String> idsParamList) {
        List<Integer> idList = new ArrayList<>();
        for (String id : idsParamList) {
            try {
                idList.add(Integer.parseInt(id));
            } catch (NumberFormatException ignored) {
            }
        }
        return idList;
    }

    @Override
    public ResponseEntity<String> getJson(Object entities, boolean localize, String locale) throws JsonProcessingException {
        String json = exporterService.exportToJson(entities, true);
        if (localize) {
            json = localizationService.localize(json, locale);
        }
        return getStringJsonResponseEntity(json, HttpStatus.OK);
    }

    @Override
    public ResponseEntity<String> getStringJsonResponseEntity(String payload, HttpStatus status) {
        return ResponseEntity.status(status).contentType(MediaType.APPLICATION_JSON).body(payload);
    }

    @Override
    public ResponseEntity<Map<String, Object>> getMapJsonResponseEntity(Map<String, Object> payload, HttpStatus status) {
        return ResponseEntity.status(status).contentType(MediaType.APPLICATION_JSON).body(payload);
    }
}
