package com.wsunitstats.service.service.impl;

import com.wsunitstats.service.service.FileService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@Service
@PropertySource(value = "classpath:service.properties")
@PropertySource(value = "file:config/service.properties", ignoreResourceNotFound = true)
public class FileServiceImpl implements FileService {
    private static final Logger LOG = LoggerFactory.getLogger(FileServiceImpl.class);

    @Value("${com.wsunitstats.service.files.root}")
    private String filesRoot;

    @Override
    public void saveFile(String dir, String fileName, byte[] fileContent) throws IOException {
        Path path = Paths.get(filesRoot, dir);
        if (!Files.exists(path)) {
            Files.createDirectories(path);
        }
        Path filePath = path.resolve(fileName);
        try (FileOutputStream output = new FileOutputStream(filePath.toFile(), false)) {
            output.write(fileContent);
            output.flush();
        } catch (IOException ex) {
            LOG.error("Can't save file {} into directory {}", fileName, dir);
            throw ex;
        }
    }
}
