package com.wsunitstats.service.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.wsunitstats.domain.LocalizationModel;
import com.wsunitstats.service.service.LocalizationService;
import com.wsunitstats.utils.service.ModelExporterService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping(path = "/api/locales")
public class LocalizationController {
    private static final Logger LOG = LoggerFactory.getLogger(LocalizationController.class);

    private static final String OK = "ok";
    private static final String ALREADY_EXISTS = "Given item already exists";
    private static final String INVALID_JSON = "Given json doesn't match expected data model";

    @Autowired
    private LocalizationService localizationService;
    @Autowired
    private ModelExporterService exporterService;

    @PostMapping(path = "/upload/bulk", consumes = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<String> updateLocalizationBulk(@RequestBody String data) {
        try {
            ObjectMapper mapper = new ObjectMapper();
            List<LocalizationModel> localizationModels = Arrays.asList(mapper.readValue(data, LocalizationModel[].class));
            localizationService.setLocalizationData(localizationModels);
            return new ResponseEntity<>(OK, HttpStatus.OK);
        } catch (JsonProcessingException ex) {
            LOG.debug("Can't process requested json", ex);
            return new ResponseEntity<>(INVALID_JSON, HttpStatus.BAD_REQUEST);
        }
    }

    @PostMapping(path = "/upload", consumes = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<String> updateLocalization(@RequestParam(required = false) boolean forceResubmission, @RequestBody String data) {
        try {
            ObjectMapper mapper = new ObjectMapper();
            LocalizationModel localizationModel = mapper.readValue(data, LocalizationModel.class);
            if (localizationService.updateLocalizationModel(localizationModel, forceResubmission)) {
                return new ResponseEntity<>(OK, HttpStatus.OK);
            } else {
                return new ResponseEntity<>(ALREADY_EXISTS, HttpStatus.OK);
            }
        } catch (JsonProcessingException ex) {
            return new ResponseEntity<>(INVALID_JSON, HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping(path = "/options")
    public ResponseEntity<String> fetchLocaleOptions() {
        try {
            List<String> locales = localizationService.getLocaleNames();
            String json = exporterService.exportToJson(locales);
            return new ResponseEntity<>(json, HttpStatus.OK);
        } catch (JsonProcessingException ex) {
            LOG.error("Json export error", ex);
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
