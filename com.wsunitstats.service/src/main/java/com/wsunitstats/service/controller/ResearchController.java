package com.wsunitstats.service.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.wsunitstats.domain.ResearchModel;
import com.wsunitstats.service.exception.InvalidParameterException;
import com.wsunitstats.service.exception.RestException;
import com.wsunitstats.service.model.ResearchOption;
import com.wsunitstats.service.service.LocalizationService;
import com.wsunitstats.service.service.ParameterValidatorService;
import com.wsunitstats.service.service.ResearchService;
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

@RestController
@RequestMapping(path = "/api/researches")
public class ResearchController {
    private static final String OK = "ok";
    private static final String INVALID_JSON = "Given json doesn't match expected data model";
    private static final String JSON_ERROR = "Json export error";
    @Autowired
    private ResearchService researchService;
    @Autowired
    private UtilsService utilsService;
    @Autowired
    private LocalizationService localizationService;
    @Autowired
    private ParameterValidatorService parameterValidatorService;

    @GetMapping(params = "names")
    public ResponseEntity<String> getResearchesByNames(@RequestParam List<String> names,
                                                       @RequestParam(defaultValue = "en") String locale,
                                                       @RequestParam(defaultValue = "id") String sort,
                                                       @RequestParam(defaultValue = "asc") String sortDir,
                                                       @RequestParam(defaultValue = "0") Integer page,
                                                       @RequestParam(defaultValue = "50") Integer size) {
        try {
            parameterValidatorService.validateStandard(locale, sort, researchService.getColumnNames(), sortDir, page, size);
            List<String> nameKeys = localizationService.getKeysForValues(names, locale);
            List<ResearchModel> units = researchService.getResearchesByNames(nameKeys, sort, sortDir, page, size);
            return utilsService.getJson(units, true, locale);
        } catch (JsonProcessingException ex) {
            throw new RestException(JSON_ERROR, ex, HttpStatus.INTERNAL_SERVER_ERROR);
        } catch (InvalidParameterException ex) {
            throw new RestException(ex, HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping(params = "gameId")
    public ResponseEntity<String> getResearchesByGameIds(@RequestParam(name = "gameId") List<String> idList,
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
            List<ResearchModel> units = researchService.getResearchesByGameIds(parsedGameIdList, sort, sortDir, page, size);
            return utilsService.getJson(units, true, locale);
        } catch (JsonProcessingException ex) {
            throw new RestException(JSON_ERROR, ex, HttpStatus.INTERNAL_SERVER_ERROR);
        } catch (InvalidParameterException ex) {
            throw new RestException(ex, HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping(path = "/all")
    public ResponseEntity<String> getResearches(@RequestParam(defaultValue = "en") String locale,
                                                @RequestParam(defaultValue = "id") String sort,
                                                @RequestParam(defaultValue = "asc") String sortDir,
                                                @RequestParam(defaultValue = "0") Integer page,
                                                @RequestParam(defaultValue = "1000") Integer size) {
        try {
            parameterValidatorService.validateStandard(locale, sort, researchService.getColumnNames(), sortDir, page, size);
            List<ResearchModel> units = researchService.getResearchesAll(sort, sortDir, page, size);
            return utilsService.getJson(units, true, locale);
        } catch (JsonProcessingException ex) {
            throw new RestException(JSON_ERROR, ex, HttpStatus.INTERNAL_SERVER_ERROR);
        } catch (InvalidParameterException ex) {
            throw new RestException(ex, HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping(path = "/options", params = "nameFilter")
    public ResponseEntity<String> fetchResearchOptions(@RequestParam String nameFilter,
                                                       @RequestParam(defaultValue = "en") String locale,
                                                       @RequestParam(defaultValue = "30") Integer size) {
        try {
            parameterValidatorService.validateLocale(locale);
            parameterValidatorService.validateSize(size);
            List<ResearchOption> unitOptions = researchService.getResearchOptionsByName(locale, nameFilter, size);
            return utilsService.getJson(unitOptions, true, locale);
        } catch (JsonProcessingException ex) {
            throw new RestException(JSON_ERROR, ex, HttpStatus.INTERNAL_SERVER_ERROR);
        } catch (InvalidParameterException ex) {
            throw new RestException(ex, HttpStatus.BAD_REQUEST);
        }
    }

    @PostMapping(path = "/upload", consumes = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<String> uploadResearches(@RequestBody String data) {
        try {
            ObjectMapper mapper = new ObjectMapper();
            List<ResearchModel> researches = Arrays.asList(mapper.readValue(data, ResearchModel[].class));
            researchService.setResearches(researches);
            return new ResponseEntity<>(OK, HttpStatus.OK);
        } catch (JsonProcessingException ex) {
            throw new RestException(INVALID_JSON, ex, HttpStatus.BAD_REQUEST);
        }
    }
}
