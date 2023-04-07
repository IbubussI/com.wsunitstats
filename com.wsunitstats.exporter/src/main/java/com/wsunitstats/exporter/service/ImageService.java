package com.wsunitstats.exporter.service;

import com.wsunitstats.exporter.model.ImageModel;
import com.wsunitstats.exporter.model.json.main.MainFileJsonModel;
import com.wsunitstats.exporter.model.lua.SessionInitFileModel;

import java.util.Map;

public interface ImageService {
    Map<String, ImageModel> resolveResourceImages(MainFileJsonModel mainFileJsonModel,
                                                  SessionInitFileModel sessionInitFileModel,
                                                  String rootFolderPath);

    Map<String, ImageModel> resolveUnitImages(MainFileJsonModel mainFileJsonModel,
                                              String rootFolderPath);

    String getImageName(Map<String, ImageModel> images, int id);
}
