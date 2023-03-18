package com.wsunitstats.exporter.service.impl;

import com.wsunitstats.exporter.model.json.main.submodel.GlobalContentJsonModel;
import com.wsunitstats.exporter.model.json.main.submodel.TextureJsonModel;
import com.wsunitstats.exporter.service.ImageService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.awt.image.RasterFormatException;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ImageServiceImpl implements ImageService {
    private static final Logger LOG = LoggerFactory.getLogger(ImageServiceImpl.class);
    private static final String PATH_DELIMITER = "/";

    @Override
    public Map<String, BufferedImage> readImages(GlobalContentJsonModel globalContentJson, String rootFolderPath) {
        Map<String, BufferedImage> result = new HashMap<>();
        Map<Integer, BufferedImage> textures = readTextures(rootFolderPath, globalContentJson.getTextures());
        globalContentJson.getImages().forEach((key, entry) -> {
            int textureId = entry.getTexture();
            BufferedImage texture = textures.get(textureId);
            List<Double> pos = entry.getPos();
            List<Double> size = entry.getSize();
            double xOffset = pos.get(0);
            double yOffset = pos.get(1);
            double xSize = size.get(0);
            double ySize = size.get(1);
            BufferedImage icon = getIcon(texture, xOffset, yOffset, xSize, ySize);
            String name = globalContentJson.getImagesNames().get(key);
            if (name != null) {
                result.put(name, icon);
            }
        });
        return result;
    }

    private Map<Integer, BufferedImage> readTextures(String rootFolderPath, Map<Integer, TextureJsonModel> texturesJson) {
        Map<Integer, BufferedImage> textures = new HashMap<>();
        texturesJson.forEach((id, texture) -> {
            String texturePath = texture.getUrls().get(0).get(0);
            try {
                File textureFile = new File(rootFolderPath + PATH_DELIMITER + texturePath);
                BufferedImage textureImg = ImageIO.read(textureFile);
                textures.put(id, textureImg);
            } catch (IOException ex) {
                LOG.error("Cannot load the image: {}", texturePath);
                throw new IllegalStateException(ex);
            }
        });
        return textures;
    }

    private BufferedImage getIcon(BufferedImage icon, double xOffset, double yOffset, double xSize, double ySize) {
        int width = icon.getWidth();
        int height = icon.getHeight();
        int x = (int) Math.round(xOffset * width);
        int y = (int) Math.round((1 - yOffset) * height);
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
