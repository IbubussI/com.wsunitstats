package com.wsunitstats.service.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.wsunitstats.model.LocalizationModel;
import com.wsunitstats.model.UnitModel;
import com.wsunitstats.service.repository.UnitRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BasicController {

    @Autowired
    private UnitRepository repository;

    @PostMapping(path = "/upload/model/gameplay", consumes = MediaType.APPLICATION_JSON_VALUE)
    public void updateGameplay(@RequestBody String data) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        UnitModel[] units = mapper.readValue(data, UnitModel[].class);
        repository.deleteAll();
        for(UnitModel unit : units) {
            repository.save(unit);
        }
    }

    @PostMapping(path = "/upload/model/localization", consumes = MediaType.APPLICATION_JSON_VALUE)
    public void updateLocalization(@RequestBody String data) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        LocalizationModel localization = mapper.readValue(data, LocalizationModel.class);
        // TODO
        System.out.println(localization);
    }

    @GetMapping(path = "/stats-data")
    public String getData(@RequestParam(value="mode", required = false, defaultValue = "verified") String mode) {
        if ("verified".equals(mode)) {
            // get data from db here
        } else if ("full".equals(mode)) {
            // get data from db here
        }
        return "";
    }

}