package com.wsunitstats.exporter.service.impl;

import com.wsunitstats.exporter.model.json.gameplay.submodel.ArmorJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.GatherJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.MovementJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.TransportingJsonModel;
import com.wsunitstats.exporter.model.lua.MainStartupFileModel;
import com.wsunitstats.exporter.model.lua.SessionInitFileModel;
import com.wsunitstats.exporter.service.ObjectMappingService;
import com.wsunitstats.exporter.util.Utilities;
import com.wsunitstats.model.LocalizationModel;
import com.wsunitstats.model.submodel.ArmorModel;
import com.wsunitstats.model.submodel.GatherModel;
import com.wsunitstats.model.submodel.MovementModel;
import com.wsunitstats.model.submodel.ResourceModel;
import com.wsunitstats.model.submodel.TransportingModel;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
public class ObjectMappingServiceImpl implements ObjectMappingService {
    private static final Logger LOG = LoggerFactory.getLogger(ObjectMappingServiceImpl.class);

    private static final Pattern LOCALIZATION_PATTERN = Pattern.compile("^localize\\(\"(<\\*[a-zA-Z0-9/]+>)\"\\)$", Pattern.MULTILINE);
    private static final Pattern MAP_ENTRY_PATTERN = Pattern.compile("^\\[(\\d*)]=localize(\"(<\\*[a-zA-Z0-9/]+>)\")$", Pattern.MULTILINE);
    private static final int PROBABILITY_MAX = 100;
    private static final String NATION_DELIMITER = "/";
    private static final int RESOURCES_COUNT = 3;

    @Override
    public ArmorModel map(ArmorJsonModel.Entry source, int probabilitiesSum) {
        if (source == null) {
            return null;
        }
        ArmorModel armorModel = new ArmorModel();
        armorModel.setValue(Utilities.intToDoubleShift(source.getObject()));
        Optional.ofNullable(source.getProbability()).ifPresentOrElse(
                armorModel::setProbability,
                () -> {
                    if (probabilitiesSum == 0) {
                        armorModel.setProbability(PROBABILITY_MAX);
                    } else {
                        armorModel.setProbability(PROBABILITY_MAX - probabilitiesSum);
                    }
                }
        );
        return armorModel;
    }

    @Override
    public GatherModel map(GatherJsonModel source, LocalizationModel localization) {
        if (source == null) {
            return null;
        }
        GatherModel gatherModel = new GatherModel();
        gatherModel.setBagSize(Utilities.intToDoubleShift(source.getBagsize()));
        gatherModel.setGatherDistance(Utilities.intToDoubleShift(source.getGatherdistance()));
        gatherModel.setPerSecond(Utilities.intToDoubleTick(source.getPertick()));
        gatherModel.setFindTargetDistance(Utilities.intToDoubleShift(source.getFindtargetdistance()));
        gatherModel.setPutDistance(Utilities.intToDoubleShift(source.getPutdistance()));
        gatherModel.setEnv(localization.getEnvSearchTagNames().get(getBitPosition(source.getEnvtags())));
        gatherModel.setResource(localization.getResourceNames().get(source.getResource()));
        return gatherModel;
    }

    @Override
    public List<ResourceModel> map(List<Integer> source, LocalizationModel localization) {
        List<ResourceModel> resources = new ArrayList<>();
        if (source != null && !source.isEmpty()) {
            for (int i = 0; i < RESOURCES_COUNT; ++i) {
                ResourceModel resource = new ResourceModel();
                resource.setResource(localization.getResourceNames().get(i));
                resource.setValue(Utilities.intToDoubleShift(source.get(i)).intValue());
                resources.add(resource);
            }
        }
        return resources;
    }

    @Override
    public TransportingModel map(TransportingJsonModel source) {
        if (source == null) {
            return null;
        }
        TransportingModel transportingModel = new TransportingModel();
        transportingModel.setCarrySize(source.getVolume());
        transportingModel.setOwnSize(source.getOwnVolume());
        transportingModel.setOnlyInfantry(source.getUnitLimit() != null ? true : null);
        return transportingModel;
    }

    @Override
    public MovementModel map(MovementJsonModel source) {
        if (source == null) {
            return null;
        }
        MovementModel movementModel = new MovementModel();
        movementModel.setSpeed(source.getSpeed());
        movementModel.setRotationSpeed(Utilities.intToDoubleShift(source.getRotationSpeed()));
        return movementModel;
    }

    @Override
    public LocalizationModel map(SessionInitFileModel sessionInitSource, MainStartupFileModel mainStartupSource) {
        LocalizationModel localizationModel = new LocalizationModel();
        localizationModel.setNationNames(convertToNationNames(sessionInitSource.getNationNames()));
        localizationModel.setResearchNames(convertToLocalizationTags(sessionInitSource.getResearchNames()));
        localizationModel.setResearchTexts(convertToLocalizationTags(sessionInitSource.getResearchTexts()));
        localizationModel.setUnitNames(convertToLocalizationTags(sessionInitSource.getUnitNames()));
        localizationModel.setUnitTexts(convertToLocalizationTags(sessionInitSource.getUnitTexts()));
        localizationModel.setUnitTagNames(convertToLocalizationTags(mainStartupSource.getUnitTagNames()));
        localizationModel.setUnitSearchTagNames(convertToLocalizationTags(mainStartupSource.getUnitSearchTagNames()));
        localizationModel.setEnvNames(convertToLocalizationTagMap(sessionInitSource.getEnvNames()));
        localizationModel.setEnvTagNames(convertToLocalizationTags(mainStartupSource.getEnvTagNames()));
        localizationModel.setEnvSearchTagNames(convertToLocalizationTags(mainStartupSource.getEnvSearchTagNames()));
        localizationModel.setAgeNames(convertToLocalizationTags(sessionInitSource.getAgeNames()));
        localizationModel.setResourceNames(convertToLocalizationTags(mainStartupSource.getResourceNames()));
        return localizationModel;
    }

    /**
     * Converts list of next format: {[0]=localize("<*sample_tag/0>"), ...} to map where key - env id, value - localization key
     */
    private Map<Integer, String> convertToLocalizationTagMap(List<String> list) {
        Map<Integer, String> result = new HashMap<>();
        list.forEach(item -> {
            Matcher matcher = MAP_ENTRY_PATTERN.matcher(item);
            if (matcher.find()) {
                result.put(Integer.parseInt(matcher.group(1)), matcher.group(2));
            }
        });
        return result;
    }

    /**
     * Converts localize("<*sample_tag/10>") to <*sample_tag/10>
     */
    private List<String> convertToLocalizationTags(List<String> values) {
        List<String> result = new ArrayList<>();
        values.forEach(value -> result.add(convertToLocalizationTag(value)));
        return result;
    }

    /**
     * Converts localize("<*sample_tag/10>") to <*sample_tag/10>
     */
    private String convertToLocalizationTag(String value) {
        Matcher matcher = LOCALIZATION_PATTERN.matcher(value);
        if (matcher.find()) {
            return matcher.group(1);
        }
        LOG.error("Value {} does not match pattern {}", value, LOCALIZATION_PATTERN);
        throw new IllegalStateException("Localization Tag expected");
    }

    private List<String> convertToNationNames(List<String> rawNationNames) {
        List<String> result = new ArrayList<>();
        for (int i = 0; i < rawNationNames.size(); ++i) {
            String ir1 = rawNationNames.get(i);
            String ir2 = null;
            if (ir1.contains("{")) {
                ++i;
                ir2 = rawNationNames.get(i);
                ir1 = ir1.replace("{", StringUtils.EMPTY);
                ir2 = ir2.replace("}", StringUtils.EMPTY);
            }
            String nationName;
            if (ir2 != null) {
                nationName = convertToLocalizationTag(ir1) +
                        NATION_DELIMITER +
                        convertToLocalizationTag(ir2);
            } else {
                nationName = convertToLocalizationTag(ir1);
            }
            result.add(nationName);
        }
        return result;
    }

    private int getBitPosition(int i) {
        int pos = 0;
        while (i != 1) {
            i = i >> 1;
            pos++;
        }
        return pos;
    }

}
