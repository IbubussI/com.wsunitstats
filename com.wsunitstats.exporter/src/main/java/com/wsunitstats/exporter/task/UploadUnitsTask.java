package com.wsunitstats.exporter.task;

import com.wsunitstats.exporter.exception.TaskExecutionException;
import com.wsunitstats.exporter.service.RestService;
import com.wsunitstats.utils.service.ModelExporterService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;

import java.util.HashMap;

@Component
public class UploadUnitsTask extends RestUploadTask implements ExecutionTask {
    private static final Logger LOG = LogManager.getLogger(UploadUnitsTask.class);
    private static final String TASK_NAME = "uploadUnits";

    @Autowired
    private ModelExporterService exporterService;
    @Autowired
    private RestService restService;

    @Value("${com.wsunitstats.exporter.upload.units}")
    private String uploadUnitsUriPath;

    @Override
    public String getName() {
        return TASK_NAME;
    }

    @Override
    public void execute(ExecutionPayload payload) throws TaskExecutionException {
        try {
            String authToken = getAuthToken(restService, payload);
            String unitsJson = exporterService.exportToJson(payload.getUnits());
            String endpoint = payload.getHostname() + uploadUnitsUriPath;
            LOG.info("Sending units data to {}", endpoint);
            ResponseEntity<String> gameplayResponse = restService.postJson(endpoint, new HashMap<>(), unitsJson, authToken);
            LOG.info("Units data submitted: HTTP {} : {}", gameplayResponse.getStatusCode().value(), gameplayResponse.getBody());
        } catch (Exception ex) {
            throw new TaskExecutionException(ex);
        }
    }
}
