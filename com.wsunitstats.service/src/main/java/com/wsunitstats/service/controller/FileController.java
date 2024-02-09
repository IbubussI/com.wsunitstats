package com.wsunitstats.service.controller;

import com.wsunitstats.service.exception.RestException;
import com.wsunitstats.service.service.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.Base64;

import static com.wsunitstats.utils.Constants.RestResponseMessage.OK;

@RestController
@RequestMapping(path = "/api/files")
@PropertySource(value = "classpath:service.properties")
@PropertySource(value = "file:config/service.properties", ignoreResourceNotFound = true)
public class FileController {
    @Autowired
    private FileService fileService;

    @Value("${com.wsunitstats.service.files.images}")
    private String imagesPath;

    @PostMapping(path = "/upload/icon")
    public ResponseEntity<String> uploadIcon(@RequestParam String fileName, @RequestParam String file) {
        try {
            fileService.saveFile(imagesPath, fileName, Base64.getDecoder().decode(file));
            return new ResponseEntity<>(OK.getMessage(), HttpStatus.OK);
        } catch (IOException ex) {
            throw new RestException("Can't persist files", ex, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
