package com.wsunitstats.service.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.service.model.UnitOption;
import com.wsunitstats.utils.service.ModelExporterService;
import com.wsunitstats.service.exception.InvalidParameterException;
import com.wsunitstats.service.service.LocalizationService;
import com.wsunitstats.service.service.ParameterValidatorService;
import com.wsunitstats.service.service.UnitService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping(path = "/api/units")
public class UnitController {
    private static final Logger LOG = LoggerFactory.getLogger(UnitController.class);

    private static final String OK = "ok";
    private static final String INVALID_JSON = "Given json doesn't match expected data model";

    @Autowired
    private UnitService unitService;
    @Autowired
    private LocalizationService localizationService;
    @Autowired
    private ModelExporterService exporterService;
    @Autowired
    private ParameterValidatorService parameterValidatorService;

    @GetMapping(params = "names")
    public ResponseEntity<String> getUnitsByNames(@RequestParam List<String> names,
                                                  @RequestParam(defaultValue = "en") String locale,
                                                  @RequestParam(defaultValue = "id") String sort,
                                                  @RequestParam(defaultValue = "asc") String sortDir,
                                                  @RequestParam(defaultValue = "0") Integer page,
                                                  @RequestParam(defaultValue = "50") Integer size) {
        try {
            parameterValidatorService.validateStandard(locale, sort, sortDir, page, size);
            List<String> nameKeys = localizationService.getKeysForValues(names, locale);
            List<UnitModel> units = unitService.getUnitsByNames(nameKeys, sort, sortDir, page, size);
            return getJson(units, true, locale);
        } catch (JsonProcessingException ex) {
            LOG.error("Json export error", ex);
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        } catch (InvalidParameterException ex) {
            LOG.error("Bad request: {}", ex.getMessage());
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping(params = "nations")
    public ResponseEntity<String> getUnitsByNations(@RequestParam List<String> nations,
                                                    @RequestParam(defaultValue = "en") String locale,
                                                    @RequestParam(defaultValue = "id") String sort,
                                                    @RequestParam(defaultValue = "asc") String sortDir,
                                                    @RequestParam(defaultValue = "0") Integer page,
                                                    @RequestParam(defaultValue = "50") Integer size) {
        try {
            parameterValidatorService.validateStandard(locale, sort, sortDir, page, size);
            List<String> nationKeys = localizationService.getKeysForValues(nations, locale);
            List<UnitModel> units = unitService.getUnitsByNations(nationKeys, sort, sortDir, page, size);
            return getJson(units, true, locale);
        } catch (JsonProcessingException ex) {
            LOG.error("Json export error", ex);
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        } catch (InvalidParameterException ex) {
            LOG.error("Bad request: {}", ex.getMessage());
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping
    public ResponseEntity<String> getUnits(@RequestParam(defaultValue = "en") String locale,
                                           @RequestParam(defaultValue = "id") String sort,
                                           @RequestParam(defaultValue = "asc") String sortDir,
                                           @RequestParam(defaultValue = "0") Integer page,
                                           @RequestParam(defaultValue = "1000") Integer size) {
        try {
            parameterValidatorService.validateStandard(locale, sort, sortDir, page, size);
            List<UnitModel> units = unitService.getUnitsAll(sort, sortDir, page, size);
            return getJson(units, true, locale);
        } catch (JsonProcessingException ex) {
            LOG.error("Json export error", ex);
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        } catch (InvalidParameterException ex) {
            LOG.error("Bad request: {}", ex.getMessage());
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
    }

    @CrossOrigin
    @GetMapping(path = "/options", params = "nameFilter")
    public ResponseEntity<String> fetchUnitOptions(@RequestParam String nameFilter,
                                                   @RequestParam(defaultValue = "en") String locale,
                                                   @RequestParam(defaultValue = "30") Integer size) {
        try {
            parameterValidatorService.validateLocale(locale);
            parameterValidatorService.validateSize(size);
            List<UnitOption> unitOptions = unitService.getUnitOptionsByName(locale, nameFilter, size);
            return getJson(unitOptions, true, locale);
        } catch (JsonProcessingException ex) {
            LOG.error("Json export error", ex);
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        } catch (InvalidParameterException ex) {
            LOG.error("Bad request: {}", ex.getMessage());
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
    }

    @PostMapping(path = "/upload", consumes = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<String> updateGameplay(@RequestBody String data) {
        try {
            ObjectMapper mapper = new ObjectMapper();
            List<UnitModel> units = Arrays.asList(mapper.readValue(data, UnitModel[].class));
            unitService.setUnits(units);
            return new ResponseEntity<>(OK, HttpStatus.OK);
        } catch (JsonProcessingException ex) {
            LOG.error("Can't process requested json", ex);
            return new ResponseEntity<>(INVALID_JSON, HttpStatus.BAD_REQUEST);
        }
    }

    private ResponseEntity<String> getJson(List<?> units, boolean localize, String locale) throws JsonProcessingException {
        String json = exporterService.exportToJson(units);
        if (localize) {
            json = localizationService.localize(json, locale);
        }
        return new ResponseEntity<>(json, HttpStatus.OK);
    }
}
