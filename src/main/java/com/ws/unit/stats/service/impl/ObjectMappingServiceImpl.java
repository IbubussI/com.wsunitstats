package com.ws.unit.stats.service.impl;

import com.ws.unit.stats.model.mapped.LocalizationModel;
import com.ws.unit.stats.model.mapped.submodel.ArmorModel;
import com.ws.unit.stats.model.mapped.submodel.GatherModel;
import com.ws.unit.stats.model.mapped.submodel.MovementModel;
import com.ws.unit.stats.model.mapped.submodel.NationNameModel;
import com.ws.unit.stats.model.mapped.submodel.ResourceModel;
import com.ws.unit.stats.model.mapped.submodel.TransportingModel;
import com.ws.unit.stats.model.raw.json.gameplay.submodel.ArmorJsonModel;
import com.ws.unit.stats.model.raw.json.gameplay.submodel.GatherJsonModel;
import com.ws.unit.stats.model.raw.json.gameplay.submodel.MovementJsonModel;
import com.ws.unit.stats.model.raw.json.gameplay.submodel.TransportingJsonModel;
import com.ws.unit.stats.model.raw.lua.MainStartupFileModel;
import com.ws.unit.stats.model.raw.lua.SessionInitFileModel;
import com.ws.unit.stats.service.ObjectMappingService;
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

import static com.ws.unit.stats.util.Utilities.intToDoubleShift;
import static com.ws.unit.stats.util.Utilities.intToDoubleTick;

@Service
public class ObjectMappingServiceImpl implements ObjectMappingService {
    private static final Logger LOG = LoggerFactory.getLogger(ObjectMappingServiceImpl.class);

    private static final Pattern LOCALIZATION_PATTERN = Pattern.compile("^localize\\(\"(<\\*[a-zA-Z0-9/]*>)\"\\)$", Pattern.MULTILINE);
    private static final Pattern MAP_ENTRY_PATTERN = Pattern.compile("^\\[(\\d*)]=localize(\"(<\\*[a-zA-Z0-9/]*>)\")$", Pattern.MULTILINE);
    private static final String NIL = "nil";
    private static final int PROBABILITY_100 = 100;

    @Override
    public ArmorModel map(ArmorJsonModel.Entry source) {
        if (source == null) {
            return null;
        }
        ArmorModel armorModel = new ArmorModel();
        armorModel.setValue(intToDoubleShift(source.getObject()));
        Optional.ofNullable(source.getProbability()).ifPresentOrElse(
                armorModel::setProbability,
                () -> armorModel.setProbability(PROBABILITY_100)
        );
        return armorModel;
    }

    @Override
    public GatherModel map(GatherJsonModel gatherSource, LocalizationModel localizationSource) {
        if (gatherSource == null || localizationSource == null) {
            return null;
        }
        GatherModel gatherModel = new GatherModel();
        gatherModel.setBagSize(intToDoubleShift(gatherSource.getBagsize()));
        gatherModel.setGatherDistance(intToDoubleShift(gatherSource.getGatherdistance()));
        gatherModel.setPerSecond(intToDoubleTick(gatherSource.getPertick()));
        gatherModel.setFindTargetDistance(intToDoubleShift(gatherSource.getFindtargetdistance()));
        gatherModel.setPutDistance(intToDoubleShift(gatherSource.getPutdistance()));
        gatherModel.setEnv(localizationSource.getEnvTagNames().get(getBitPosition(gatherSource.getEnvtags())));
        gatherModel.setResource(localizationSource.getResourceNames().get(gatherSource.getResource()));
        return gatherModel;
    }

    @Override
    public ResourceModel map(List<Integer> source) {
        if (source == null) {
            return null;
        }
        ResourceModel resourceModel = new ResourceModel();
        resourceModel.setFood(intToDoubleShift(source.get(0)).intValue());
        resourceModel.setWood(intToDoubleShift(source.get(1)).intValue());
        resourceModel.setIron(intToDoubleShift(source.get(2)).intValue());
        return resourceModel;
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
        movementModel.setRotationSpeed(intToDoubleShift(source.getRotationSpeed()));
        return movementModel;
    }

    @Override
    public LocalizationModel map(SessionInitFileModel sessionInitSource, MainStartupFileModel mainStartupSource) {
        if (sessionInitSource == null || mainStartupSource == null) {
            return null;
        }
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

    private List<NationNameModel> convertToNationNames(List<String> rawNationNames) {
        List<NationNameModel> result = new ArrayList<>();
        for (int i = 0; i < rawNationNames.size(); ++i) {
            String ir1 = rawNationNames.get(i);
            String ir2 = ir1;
            if (ir1.contains("{")) {
                ++i; //NOSONAR consume next value and exclude it from further processing
                ir2 = rawNationNames.get(i);
                ir1 = ir1.replace("{", StringUtils.EMPTY);
                ir2 = ir2.replace("}", StringUtils.EMPTY);
            }
            NationNameModel nationName = new NationNameModel();
            nationName.setIr1(convertToLocalizationTag(ir1));
            nationName.setIr1(convertToLocalizationTag(ir2));
            result.add(nationName);
        }
        return result;
    }

    /**
     * Converts string to integer, nil to null
     */
    private List<Integer> convertToNullableIntegers(List<String> unitNations) {
        List<Integer> result = new ArrayList<>();
        unitNations.forEach(unitNation -> {
            if (NIL.equals(unitNation)) {
                result.add(null);
            } else {
                result.add(Integer.parseInt(unitNation));
            }
        });
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
