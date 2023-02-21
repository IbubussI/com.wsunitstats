package com.ws.unit.stats.controller;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BasicController {

    @PostMapping(path = "/bin/parse-file", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.TEXT_HTML_VALUE)
    public void parseFromFile(@RequestParam(value="createBackup", required = false, defaultValue = "true") boolean createBackup, @RequestBody String data) {
        if (createBackup) {
            // create db snapshot here
        }
        // process body here
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