package com.wsunitstats.exporter.service.impl;

import com.wsunitstats.exporter.model.ImageModel;
import com.wsunitstats.exporter.model.json.main.MainFileJsonModel;
import com.wsunitstats.exporter.model.json.main.submodel.GlobalContentJsonModel;
import com.wsunitstats.exporter.model.json.main.submodel.ImageJsonModel;
import com.wsunitstats.exporter.model.json.main.submodel.TextureJsonModel;
import com.wsunitstats.exporter.model.json.main.submodel.VisualSessionContentJsonModel;
import com.wsunitstats.exporter.model.lua.SessionInitFileModel;
import com.wsunitstats.exporter.service.ImageService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.awt.image.RasterFormatException;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

@Service
public class ImageServiceImpl implements ImageService {
    private static final Logger LOG = LoggerFactory.getLogger(ImageServiceImpl.class);
    private static final String PATH_DELIMITER = "/";

    @Value("${com.wsunitstats.exporter.image.file.extension}")
    private String imageExtension;

    @Override
    public Map<String, ImageModel> resolveResourceImages(MainFileJsonModel mainFileJsonModel,
                                                         SessionInitFileModel sessionInitFileModel,
                                                         String rootFolderPath) {
        VisualSessionContentJsonModel visualSessionContentJsonModel = mainFileJsonModel.getVisualSessionContent();
        Map<Integer, ImageJsonModel> imageJsonModels = visualSessionContentJsonModel.getImages();
        Map<Integer, TextureJsonModel> textureJsonModels = visualSessionContentJsonModel.getTextures();
        List<Integer> imageIds = sessionInitFileModel.getResourceIcons().stream()
                .map(Integer::parseInt)
                .toList();
        Map<Integer, String> imageNames = IntStream.range(0, imageIds.size()).boxed()
                .collect(Collectors.toMap(imageIds::get, id -> "resource" + id + "." + imageExtension));
        Map<Integer, BufferedImage> textures = readTextures(rootFolderPath, textureJsonModels);
        return readImages(imageJsonModels, textures, imageNames, false);
    }

    @Override
    public Map<String, ImageModel> resolveUnitImages(MainFileJsonModel mainFileJsonModel,
                                                     String rootFolderPath) {
        GlobalContentJsonModel globalContentJsonModel = mainFileJsonModel.getGlobalContent();
        Map<Integer, ImageJsonModel> imageJsonModels = globalContentJsonModel.getImages();
        Map<Integer, TextureJsonModel> textureJsonModels = globalContentJsonModel.getTextures();
        Map<Integer, String> imageNames = globalContentJsonModel.getImagesNames();
        Map<Integer, BufferedImage> textures = readTextures(rootFolderPath, textureJsonModels);
        return readImages(imageJsonModels, textures, imageNames, true);
    }

    @Override
    public String getImageName(Map<String, ImageModel> images, int id) {
        return images.entrySet().stream()
                .filter(entry -> entry.getValue().getId() == id)
                .map(Map.Entry::getKey)
                .findAny()
                .orElse(null);
    }

    private Map<String, ImageModel> readImages(Map<Integer, ImageJsonModel> imageJsonModels,
                                               Map<Integer, BufferedImage> textures,
                                               Map<Integer, String> imagesNames,
                                               boolean isGuiFormat) {
        Map<String, ImageModel> result = new HashMap<>();
        imagesNames.forEach((key, entry) -> {
            ImageJsonModel imageJsonModel = imageJsonModels.get(key);
            int textureId = imageJsonModel.getTexture();
            BufferedImage texture = textures.get(textureId);
            List<Double> pos = imageJsonModel.getPos();
            List<Double> size = imageJsonModel.getSize();
            double xOffset = 0.0;
            double yOffset = 0.0;
            if (pos != null) {
                xOffset = pos.get(0);
                yOffset = pos.get(1);
            }
            double xSize = size.get(0);
            double ySize = size.get(1);
            BufferedImage icon = getIcon(texture, xOffset, yOffset, xSize, ySize, isGuiFormat);
            if (entry != null) {
                ImageModel imageModel = new ImageModel();
                imageModel.setId(key);
                imageModel.setImage(icon);
                result.put(entry, imageModel);
            }
        });
        return result;
    }

    private Map<Integer, BufferedImage> readTextures(String rootFolderPath, Map<Integer, TextureJsonModel> textureJsonModels) {
        Map<Integer, BufferedImage> textures = new HashMap<>();
        textureJsonModels.forEach((id, texture) -> {
            List<Object> urls = texture.getUrls();
            if (urls == null || urls.isEmpty() || !(urls.get(0) instanceof List<?>)) {
                // skip non-gui item
                return;
            }
            String texturePath = (String) ((List<?>) urls.get(0)).get(0);
            try {
                File textureFile = new File(rootFolderPath + PATH_DELIMITER + texturePath);
                if (!textureFile.exists()) {
                    return;
                }
                BufferedImage textureImg = ImageIO.read(textureFile);
                textures.put(id, textureImg);
            } catch (IOException ex) {
                LOG.error("Cannot load the image: {}", texturePath);
                throw new IllegalStateException(ex);
            }
        });
        return textures;
    }

    /**
     * Gui images stored with negative y size
     */
    private BufferedImage getIcon(BufferedImage icon, double xOffset, double yOffset, double xSize, double ySize, boolean isGuiFormat) {
        int width = icon.getWidth();
        int height = icon.getHeight();
        int x = (int) Math.round(xOffset * width);
        int y;
        if (isGuiFormat) {
            y = (int) Math.round((1 - yOffset) * height);
        } else {
            y = (int) Math.round(yOffset * height);
        }
        int w = (int) Math.round(xSize * width);
        int h = (int) Math.round(Math.abs(ySize) * height);
        try {
            return icon.getSubimage(x, y, w, h);
        } catch (RasterFormatException ex) {
            LOG.error("Image bounds exceeded. height = {}, width = {}, x = {}, y = {}, w = {}, h = {}", height, width, x, y, w, h);
            throw new IllegalArgumentException(ex);
        }
    }
}
