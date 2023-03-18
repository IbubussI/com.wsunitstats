package com.wsunitstats.exporter.service;

import com.wsunitstats.exporter.model.json.main.submodel.GlobalContentJsonModel;

import java.awt.image.BufferedImage;
import java.util.Map;

public interface ImageService {

    Map<String, BufferedImage> readImages(GlobalContentJsonModel globalContentJson, String rootFolderPath);
}
