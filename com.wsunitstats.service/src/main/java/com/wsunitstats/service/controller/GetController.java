package com.wsunitstats.service.controller;

import com.wsunitstats.model.UnitModel;
import com.wsunitstats.service.service.LocalizationService;
import com.wsunitstats.service.service.UnitService;
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
    @Autowired
    private UnitService unitService;

    @Autowired
    private LocalizationService localizationService;

    @GetMapping(path = "/units")
    public ResponseEntity<String> getUnitsByNames(@RequestParam List<String> names,
                                                  @RequestParam String locale,
                                                  @RequestParam String sort,
                                                  @RequestParam String sortDir,
                                                  @RequestParam int page,
                                                  @RequestParam int size) {
        List<String> nameKeys = localizationService.getKeysForValues(names, locale);
        List<UnitModel> result = unitService.getUnitsByNames(nameKeys, sort, sortDir, page, size);
        System.out.println(result);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
