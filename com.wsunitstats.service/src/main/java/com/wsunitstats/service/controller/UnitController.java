package com.wsunitstats.service.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.service.exception.RestException;
import com.wsunitstats.service.model.UnitOption;
import com.wsunitstats.service.service.UtilsService;
import com.wsunitstats.service.exception.InvalidParameterException;
import com.wsunitstats.service.service.LocalizationService;
import com.wsunitstats.service.service.ParameterValidatorService;
import com.wsunitstats.service.service.UnitService;
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
import java.util.Optional;

@RestController
@RequestMapping(path = "/api/units")
public class UnitController {
    private static final String OK = "ok";
    private static final String INVALID_JSON = "Given json doesn't match expected data model";
    private static final String JSON_ERROR = "Json export error";
    @Autowired
    private UnitService unitService;
    @Autowired
    private UtilsService utilsService;
    @Autowired
    private LocalizationService localizationService;
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
            parameterValidatorService.validateStandard(locale, sort, unitService.getColumnNames(), sortDir, page, size);
            List<String> nameKeys = localizationService.getKeysForValues(names, locale);
            List<UnitModel> units = unitService.getUnitsByNames(nameKeys, sort, sortDir, page, size);
            return utilsService.getJson(units, true, locale);
        } catch (JsonProcessingException ex) {
            throw new RestException(JSON_ERROR, ex, HttpStatus.INTERNAL_SERVER_ERROR);
        } catch (InvalidParameterException ex) {
            throw new RestException(ex, HttpStatus.BAD_REQUEST);
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
            parameterValidatorService.validateStandard(locale, sort, unitService.getColumnNames(), sortDir, page, size);
            List<String> nationKeys = localizationService.getKeysForValues(nations, locale);
            List<UnitModel> units = unitService.getUnitsByNations(nationKeys, sort, sortDir, page, size);
            return utilsService.getJson(units, true, locale);
        } catch (JsonProcessingException ex) {
            throw new RestException(JSON_ERROR, ex, HttpStatus.INTERNAL_SERVER_ERROR);
        } catch (InvalidParameterException ex) {
            throw new RestException(ex, HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping(params = "id")
    public ResponseEntity<String> getUnitsByIds(@RequestParam(name = "id") List<String> idList,
                                                @RequestParam(defaultValue = "en") String locale,
                                                @RequestParam(defaultValue = "id") String sort,
                                                @RequestParam(defaultValue = "asc") String sortDir,
                                                @RequestParam(defaultValue = "0") Integer page,
                                                @RequestParam(defaultValue = "50") Integer size) {
        try {
            parameterValidatorService.validateLocale(locale);
            List<Long> parsedIdList = utilsService.parseIds(idList);
            if (parsedIdList.size() == 0) {
                throw new InvalidParameterException("Provided ID(s) not valid");
            }
            List<UnitModel> units = unitService.getUnitsByIds(parsedIdList, sort, sortDir, page, size);
            return utilsService.getJson(units, true, locale);
        } catch (JsonProcessingException ex) {
            throw new RestException(JSON_ERROR, ex, HttpStatus.INTERNAL_SERVER_ERROR);
        } catch (InvalidParameterException ex) {
            throw new RestException(ex, HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping(params = "gameId")
    public ResponseEntity<String> getUnitsByGameIds(@RequestParam(name = "gameId") List<String> idList,
                                                    @RequestParam(defaultValue = "en") String locale,
                                                    @RequestParam(defaultValue = "gameId") String sort,
                                                    @RequestParam(defaultValue = "asc") String sortDir,
                                                    @RequestParam(defaultValue = "0") Integer page,
                                                    @RequestParam(defaultValue = "50") Integer size) {
        try {
            parameterValidatorService.validateLocale(locale);
            List<Integer> parsedGameIdList = utilsService.parseGameIds(idList);
            if (parsedGameIdList.size() == 0) {
                throw new InvalidParameterException("Provided Game ID(s) not valid");
            }
            List<UnitModel> units = unitService.getUnitsByGameIds(parsedGameIdList, sort, sortDir, page, size);
            return utilsService.getJson(units, true, locale);
        } catch (JsonProcessingException ex) {
            throw new RestException(JSON_ERROR, ex, HttpStatus.INTERNAL_SERVER_ERROR);
        } catch (InvalidParameterException ex) {
            throw new RestException(ex, HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping(path = "/all")
    public ResponseEntity<String> getUnits(@RequestParam(defaultValue = "en") String locale,
                                           @RequestParam(defaultValue = "id") String sort,
                                           @RequestParam(defaultValue = "asc") String sortDir,
                                           @RequestParam(defaultValue = "0") Integer page,
                                           @RequestParam(defaultValue = "1000") Integer size) {
        try {
            parameterValidatorService.validateStandard(locale, sort, unitService.getColumnNames(), sortDir, page, size);
            List<UnitModel> units = unitService.getUnitsAll(sort, sortDir, page, size);
            return utilsService.getJson(units, true, locale);
        } catch (JsonProcessingException ex) {
            throw new RestException(JSON_ERROR, ex, HttpStatus.INTERNAL_SERVER_ERROR);
        } catch (InvalidParameterException ex) {
            throw new RestException(ex, HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping(path = "/options", params = "nameFilter")
    public ResponseEntity<String> fetchUnitOptions(@RequestParam String nameFilter,
                                                   @RequestParam(defaultValue = "en") String locale,
                                                   @RequestParam(defaultValue = "30") Integer size) {
        try {
            parameterValidatorService.validateLocale(locale);
            parameterValidatorService.validateSize(size);
            List<UnitOption> unitOptions = unitService.getUnitOptionsByName(locale, nameFilter, size);
            return utilsService.getJson(unitOptions, true, locale);
        } catch (JsonProcessingException ex) {
            throw new RestException(JSON_ERROR, ex, HttpStatus.INTERNAL_SERVER_ERROR);
        } catch (InvalidParameterException ex) {
            throw new RestException(ex, HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping(path = "/option", params = "unitId")
    public ResponseEntity<String> fetchUnitOptions(@RequestParam Long unitId,
                                                   @RequestParam(defaultValue = "en") String locale) {
        try {
            parameterValidatorService.validateLocale(locale);
            Optional<UnitOption> unitOption = unitService.getUnitOption(unitId);
            if (unitOption.isPresent()) {
                return utilsService.getJson(unitOption, true, locale);
            }
            throw new RestException("Unit with ID [" + unitId + "] not found", HttpStatus.BAD_REQUEST);
        } catch (JsonProcessingException ex) {
            throw new RestException(JSON_ERROR, ex, HttpStatus.INTERNAL_SERVER_ERROR);
        } catch (InvalidParameterException ex) {
            throw new RestException(ex, HttpStatus.BAD_REQUEST);
        }
    }

    @PostMapping(path = "/upload", consumes = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<String> uploadUnits(@RequestBody String data) {
        try {
            ObjectMapper mapper = new ObjectMapper();
            List<UnitModel> units = Arrays.asList(mapper.readValue(data, UnitModel[].class));
            unitService.setUnits(units);
            return new ResponseEntity<>(OK, HttpStatus.OK);
        } catch (JsonProcessingException ex) {
            throw new RestException(INVALID_JSON, ex, HttpStatus.BAD_REQUEST);
        }
    }
}
