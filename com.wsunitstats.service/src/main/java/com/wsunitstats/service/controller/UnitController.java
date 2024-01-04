package com.wsunitstats.service.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.module.SimpleModule;
import com.wsunitstats.domain.ResearchModel;
import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.submodel.ability.GenericAbility;
import com.wsunitstats.domain.submodel.ability.container.GenericAbilityContainer;
import com.wsunitstats.service.exception.RestException;
import com.wsunitstats.service.model.EntityOption;
import com.wsunitstats.service.service.ResearchService;
import com.wsunitstats.service.service.UtilsService;
import com.wsunitstats.service.exception.InvalidParameterException;
import com.wsunitstats.service.service.LocalizationService;
import com.wsunitstats.service.service.ParameterValidatorService;
import com.wsunitstats.service.service.UnitService;
import com.wsunitstats.service.service.serializer.AbilityContainerDeserializer;
import com.wsunitstats.service.service.serializer.AbilityDeserializer;
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

import static com.wsunitstats.utils.Constants.RestResponseMessage.INVALID_JSON;
import static com.wsunitstats.utils.Constants.RestResponseMessage.JSON_ERROR;
import static com.wsunitstats.utils.Constants.RestResponseMessage.OK;

@RestController
@RequestMapping(path = "/api/units")
public class UnitController {
    @Autowired
    private UnitService unitService;
    @Autowired
    private UtilsService utilsService;
    @Autowired
    private LocalizationService localizationService;
    @Autowired
    private ParameterValidatorService parameterValidatorService;
    @Autowired
    private ResearchService researchService;

    @GetMapping(path = "/names", params = "names")
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
            throw new RestException(JSON_ERROR.getMessage(), ex, HttpStatus.INTERNAL_SERVER_ERROR);
        } catch (InvalidParameterException ex) {
            throw new RestException(ex, HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping(path = "/nations", params = "nations")
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
            throw new RestException(JSON_ERROR.getMessage(), ex, HttpStatus.INTERNAL_SERVER_ERROR);
        } catch (InvalidParameterException ex) {
            throw new RestException(ex, HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping(path = "/game-id", params = "gameId")
    public ResponseEntity<String> getUnitsByGameIds(@RequestParam(name = "gameId") List<String> gameIdList,
                                                    @RequestParam(name = "researchId", required = false) List<String> researchIdList,
                                                    @RequestParam(defaultValue = "en") String locale,
                                                    @RequestParam(defaultValue = "gameId") String sort,
                                                    @RequestParam(defaultValue = "asc") String sortDir,
                                                    @RequestParam(defaultValue = "0") Integer page,
                                                    @RequestParam(defaultValue = "50") Integer size) {
        try {
            List<Integer> parsedGameIdList = utilsService.parseGameIds(gameIdList);
            if (parsedGameIdList.size() == 0) {
                throw new InvalidParameterException("Provided Game ID(s) not valid");
            }
            parameterValidatorService.validateLocale(locale);
            List<UnitModel> units = unitService.getUnitsByGameIds(parsedGameIdList, sort, sortDir, page, size);
            if (researchIdList != null) {
                List<Integer> parsedResearchIdList = utilsService.parseGameIds(researchIdList);
                List<ResearchModel> researches = researchService.getResearchesByGameIds(parsedResearchIdList);
                unitService.applyResearches(units, researches);
            }
            return utilsService.getJson(units, true, locale);
        } catch (JsonProcessingException ex) {
            throw new RestException(JSON_ERROR.getMessage(), ex, HttpStatus.INTERNAL_SERVER_ERROR);
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
            throw new RestException(JSON_ERROR.getMessage(), ex, HttpStatus.INTERNAL_SERVER_ERROR);
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
            List<EntityOption> unitOptions = unitService.getUnitOptionsByName(locale, nameFilter, size);
            return utilsService.getJson(unitOptions, true, locale);
        } catch (JsonProcessingException ex) {
            throw new RestException(JSON_ERROR.getMessage(), ex, HttpStatus.INTERNAL_SERVER_ERROR);
        } catch (InvalidParameterException ex) {
            throw new RestException(ex, HttpStatus.BAD_REQUEST);
        }
    }

    @PostMapping(path = "/upload", consumes = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<String> uploadUnits(@RequestBody String data) {
        try {
            ObjectMapper mapper = new ObjectMapper();
            SimpleModule module = new SimpleModule();
            module.addDeserializer(GenericAbility.class, new AbilityDeserializer());
            module.addDeserializer(GenericAbilityContainer.class, new AbilityContainerDeserializer());
            mapper.registerModule(module);
            List<UnitModel> units = Arrays.asList(mapper.readValue(data, UnitModel[].class));
            unitService.setUnits(units);
            return new ResponseEntity<>(OK.getMessage(), HttpStatus.OK);
        } catch (JsonProcessingException ex) {
            throw new RestException(INVALID_JSON.getMessage(), ex, HttpStatus.BAD_REQUEST);
        }
    }
}
