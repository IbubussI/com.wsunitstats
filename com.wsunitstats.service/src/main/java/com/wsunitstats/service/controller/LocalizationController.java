package com.wsunitstats.service.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.wsunitstats.domain.LocalizationModel;
import com.wsunitstats.service.exception.RestException;
import com.wsunitstats.service.service.LocalizationService;
import com.wsunitstats.service.service.UtilsService;
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

import static com.wsunitstats.utils.Constants.RestResponseMessage.ALREADY_EXISTS;
import static com.wsunitstats.utils.Constants.RestResponseMessage.INVALID_JSON;
import static com.wsunitstats.utils.Constants.RestResponseMessage.JSON_ERROR;
import static com.wsunitstats.utils.Constants.RestResponseMessage.OK;

@RestController
@RequestMapping(path = "/api/locales")
public class LocalizationController {
    @Autowired
    private UtilsService utilsService;
    @Autowired
    private LocalizationService localizationService;

    @PostMapping(path = "/upload/bulk", consumes = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<String> updateLocalizationBulk(@RequestBody String data) {
        try {
            ObjectMapper mapper = new ObjectMapper();
            List<LocalizationModel> localizationModels = Arrays.asList(mapper.readValue(data, LocalizationModel[].class));
            localizationService.setLocalizationData(localizationModels);
            return new ResponseEntity<>(OK.getMessage(), HttpStatus.OK);
        } catch (JsonProcessingException ex) {
            throw new RestException(INVALID_JSON.getMessage(), ex, HttpStatus.BAD_REQUEST);
        }
    }

    @PostMapping(path = "/upload", consumes = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<String> updateLocalization(@RequestParam(required = false) boolean forceResubmission, @RequestBody String data) {
        try {
            ObjectMapper mapper = new ObjectMapper();
            LocalizationModel localizationModel = mapper.readValue(data, LocalizationModel.class);
            if (localizationService.updateLocalizationModel(localizationModel, forceResubmission)) {
                return new ResponseEntity<>(OK.getMessage(), HttpStatus.OK);
            } else {
                return new ResponseEntity<>(ALREADY_EXISTS.getMessage(), HttpStatus.OK);
            }
        } catch (JsonProcessingException ex) {
            throw new RestException(INVALID_JSON.getMessage(), ex, HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping(path = "/options")
    public ResponseEntity<String> fetchLocaleOptions() {
        try {
            List<String> locales = localizationService.getLocaleNames();
            return utilsService.getJson(locales, false, null);
        } catch (JsonProcessingException ex) {
            throw new RestException(JSON_ERROR.getMessage(), ex, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
