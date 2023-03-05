package com.wsunitstats.service.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.domain.service.ModelExporterService;
import com.wsunitstats.service.service.LocalizationService;
import com.wsunitstats.service.service.UnitService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(path = "/get")
public class GetController {
    private static final Logger LOG = LoggerFactory.getLogger(GetController.class);

    @Autowired
    private UnitService unitService;

    @Autowired
    private LocalizationService localizationService;

    @Autowired
    private ModelExporterService exporterService;

    @GetMapping(path = "/units", params = "names")
    public ResponseEntity<String> getUnitsByNames(@RequestParam List<String> names,
                                                  @RequestParam String locale,
                                                  @RequestParam String sort,
                                                  @RequestParam String sortDir,
                                                  @RequestParam int page,
                                                  @RequestParam int size) {
        List<String> nameKeys = localizationService.getKeysForValues(names, locale);
        List<UnitModel> units = unitService.getUnitsByNames(nameKeys, sort, sortDir, page, size);
        return getJson(units, true, locale);
    }

    @GetMapping(path = "/units", params = "nations")
    public ResponseEntity<String> getUnitsByNations(@RequestParam List<String> nations,
                                                    @RequestParam String locale,
                                                    @RequestParam String sort,
                                                    @RequestParam String sortDir,
                                                    @RequestParam int page,
                                                    @RequestParam int size) {
        List<String> nationKeys = localizationService.getKeysForValues(nations, locale);
        List<UnitModel> units = unitService.getUnitsByNations(nationKeys, sort, sortDir, page, size);
        return getJson(units, true, locale);
    }

    private ResponseEntity<String> getJson(List<?> units, boolean localize, String locale) {
        try {
            String json = exporterService.exportToJson(units);
            if (localize) {
                json = localizationService.localize(json, locale);
            }
            return new ResponseEntity<>(json, HttpStatus.OK);
        } catch (JsonProcessingException ex) {
            LOG.error("Json export error", ex);
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
