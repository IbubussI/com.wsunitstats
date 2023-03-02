package com.wsunitstats.service.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.wsunitstats.model.UnitModel;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
public class BasicController {

    @PostMapping(path = "/upload/model", consumes = MediaType.APPLICATION_JSON_VALUE)
    public void parseFromFile(@RequestBody String data) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        List<UnitModel> units = Arrays.asList(mapper.readValue(data, UnitModel[].class));
        System.out.println(units);
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