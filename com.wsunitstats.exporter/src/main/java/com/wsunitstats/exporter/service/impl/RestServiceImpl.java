package com.wsunitstats.exporter.service.impl;

import com.wsunitstats.exporter.service.RestService;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import java.util.Base64;
import java.util.List;
import java.util.Map;

@Service
public class RestServiceImpl implements RestService {
    @Override
    public ResponseEntity<String> postJson(String uri, String json) {
        RestTemplate restTemplate = new RestTemplate();
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        HttpEntity<String> request = new HttpEntity<>(json, headers);
        return restTemplate.postForEntity(uri, request, String.class);
    }

    @Override
    public ResponseEntity<String> postFile(String uri, String filename, byte[] fileContent) {
        RestTemplate restTemplate = new RestTemplate();
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.MULTIPART_FORM_DATA);
        MultiValueMap<String, String> map= new LinkedMultiValueMap<>();
        map.add("file", Base64.getEncoder().encodeToString(fileContent));
        map.add("fileName", filename);
        HttpEntity<MultiValueMap<String, String>> request = new HttpEntity<>(map, headers);
        return restTemplate.postForEntity(uri, request, String.class);
    }

    @Override
    public ResponseEntity<String> get(String uri, Map<String, List<String>> parameters) {
        RestTemplate restTemplate = new RestTemplate();
        HttpHeaders headers = new HttpHeaders();
        headers.set(HttpHeaders.ACCEPT, MediaType.APPLICATION_JSON_VALUE);
        String uriWithParams = UriComponentsBuilder.fromHttpUrl(uri)
                .queryParams(new LinkedMultiValueMap<>(parameters))
                .encode()
                .toUriString();
        HttpEntity<String> request = new HttpEntity<>(headers);
        return restTemplate.exchange(uriWithParams, HttpMethod.GET, request, String.class);
    }
}