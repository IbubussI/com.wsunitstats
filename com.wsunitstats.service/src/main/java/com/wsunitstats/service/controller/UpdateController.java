package com.wsunitstats.service.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.wsunitstats.model.LocalizationModel;
import com.wsunitstats.model.UnitModel;
import com.wsunitstats.service.repository.LocalizationRepository;
import com.wsunitstats.service.repository.UnitRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping(path = "/upload")
public class UpdateController {
    private static final String OK = "ok";
    private static final String ALREADY_EXISTS = "Given item already exists";

    @Autowired
    private UnitRepository unitRepository;

    @Autowired
    private LocalizationRepository localizationRepository;

    @PostMapping(path = "/model/gameplay", consumes = MediaType.APPLICATION_JSON_VALUE)
    public String updateGameplay(@RequestBody String data) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        List<UnitModel> units = Arrays.asList(mapper.readValue(data, UnitModel[].class));
        unitRepository.deleteAll();
        unitRepository.saveAll(units);
        return OK;
    }

    @PostMapping(path = "/model/localization/bulk", consumes = MediaType.APPLICATION_JSON_VALUE)
    public String updateLocalizationBulk(@RequestBody String data) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        List<LocalizationModel> localizations = Arrays.asList(mapper.readValue(data, LocalizationModel[].class));
        localizationRepository.deleteAll();
        localizationRepository.saveAll(localizations);
        return OK;
    }

    @PostMapping(path = "/model/localization", consumes = MediaType.APPLICATION_JSON_VALUE)
    public String updateLocalization(@RequestBody String data) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        LocalizationModel localization = mapper.readValue(data, LocalizationModel.class);
        if (localizationRepository.existsByLocale(localization.getLocale())) {
            return ALREADY_EXISTS;
        }
        localizationRepository.save(localization);
        return OK;
    }

    @PostMapping(path = "/images")
    public void updateImages(@RequestBody String data) throws JsonProcessingException {
        // TODO
    }
}