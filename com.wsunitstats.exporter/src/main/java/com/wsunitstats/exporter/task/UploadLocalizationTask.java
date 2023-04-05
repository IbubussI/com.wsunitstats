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

@Component
public class UploadLocalizationTask extends RestUploadTask implements ExecutionTask {
    private static final Logger LOG = LogManager.getLogger(UploadLocalizationTask.class);
    private static final String TASK_NAME = "uploadLocalization";

    @Autowired
    private ModelExporterService exporterService;
    @Autowired
    private RestService restService;

    @Value("${com.wsunitstats.exporter.upload.localization}")
    private String uploadLocalizationUriPath;

    @Override
    public String getName() {
        return TASK_NAME;
    }

    @Override
    public void execute(ExecutionPayload payload) throws TaskExecutionException {
        try {
            String authToken = getAuthToken(restService, payload);
            String locJson = exporterService.exportToJson(payload.getLocalization());
            String endpoint = payload.getHostname() + uploadLocalizationUriPath;
            LOG.info("Sending localization data to {}", endpoint);
            ResponseEntity<String> locResponse = restService.postJson(endpoint, locJson, authToken);
            LOG.info("Localization data submitted: HTTP {} : {}", locResponse.getStatusCode().value(), locResponse.getBody());
        } catch (Exception ex) {
            throw new TaskExecutionException(ex);
        }
    }
}
