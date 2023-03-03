package com.wsunitstats.service.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.wsunitstats.model.LocalizationModel;
import com.wsunitstats.model.UnitModel;
import com.wsunitstats.service.repository.LocalizationRepository;
import com.wsunitstats.service.repository.UnitRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping(path = "/upload")
public class UpdateController {
    private static final Logger LOG = LoggerFactory.getLogger(UpdateController.class);

    private static final String OK = "ok";
    private static final String ALREADY_EXISTS = "Given item already exists";
    private static final String INVALID_JSON = "Given json doesn't match expected data model";

    @Autowired
    private UnitRepository unitRepository;

    @Autowired
    private LocalizationRepository localizationRepository;

    @PostMapping(path = "/model/gameplay", consumes = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<String> updateGameplay(@RequestBody String data) {
        try {
            ObjectMapper mapper = new ObjectMapper();
            List<UnitModel> units = Arrays.asList(mapper.readValue(data, UnitModel[].class));
            unitRepository.deleteAll();
            unitRepository.saveAll(units);
            return new ResponseEntity<>(OK, HttpStatus.OK);
        } catch (JsonProcessingException ex) {
            LOG.debug("Can't process requested json", ex);
            return new ResponseEntity<>(INVALID_JSON, HttpStatus.BAD_REQUEST);
        }
    }

    @PostMapping(path = "/model/localization/bulk", consumes = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<String> updateLocalizationBulk(@RequestBody String data) {
        try {
            ObjectMapper mapper = new ObjectMapper();
            List<LocalizationModel> localizations = Arrays.asList(mapper.readValue(data, LocalizationModel[].class));
            localizationRepository.deleteAll();
            localizationRepository.saveAll(localizations);
            return new ResponseEntity<>(OK, HttpStatus.OK);
        } catch (JsonProcessingException ex) {
            LOG.debug("Can't process requested json", ex);
            return new ResponseEntity<>(INVALID_JSON, HttpStatus.BAD_REQUEST);
        }
    }

    @PostMapping(path = "/model/localization", consumes = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<String> updateLocalization(@RequestBody String data) {
        try {
            ObjectMapper mapper = new ObjectMapper();
            LocalizationModel localization = mapper.readValue(data, LocalizationModel.class);
            if (localizationRepository.existsByLocale(localization.getLocale())) {
                return new ResponseEntity<>(ALREADY_EXISTS, HttpStatus.OK);
            }
            localizationRepository.save(localization);
            return new ResponseEntity<>(OK, HttpStatus.OK);
        } catch (JsonProcessingException ex) {
            return new ResponseEntity<>(INVALID_JSON, HttpStatus.BAD_REQUEST);
        }
    }

    @PostMapping(path = "/images")
    public void updateImages(@RequestBody String data) {
        // TODO
    }
}