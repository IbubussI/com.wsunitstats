package com.wsunitstats.service.service;

import java.io.IOException;

public interface FileService {
    void saveFile(String dir, String fileName, byte[] fileContent) throws IOException;
}
