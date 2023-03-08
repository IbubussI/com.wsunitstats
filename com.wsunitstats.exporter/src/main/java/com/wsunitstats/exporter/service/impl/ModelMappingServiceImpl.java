package com.wsunitstats.exporter.service.impl;

import com.wsunitstats.domain.submodel.ability.AbilityModel;
import com.wsunitstats.domain.submodel.ability.RequirementsModel;
import com.wsunitstats.domain.submodel.ability.ResearchRequirementModel;
import com.wsunitstats.domain.submodel.ability.UnitRequirementModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ArmorJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.CreateEnvJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.EnvJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.GatherJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.MovementJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.TransportingJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ability.AbilityDataJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ability.AbilityJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ability.RequirementsJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ability.UnitRequirementJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.work.WorkJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.work.WorkReserveJsonModel;
import com.wsunitstats.exporter.model.lua.MainStartupFileModel;
import com.wsunitstats.exporter.model.lua.SessionInitFileModel;
import com.wsunitstats.exporter.service.ModelMappingService;
import com.wsunitstats.utils.Util;
import com.wsunitstats.exporter.model.LocalizationKeyModel;
import com.wsunitstats.domain.submodel.ArmorModel;
import com.wsunitstats.domain.submodel.GatherModel;
import com.wsunitstats.domain.submodel.MovementModel;
import com.wsunitstats.domain.submodel.ResourceModel;
import com.wsunitstats.domain.submodel.TransportingModel;
import com.wsunitstats.utils.Constants.AbilityType;
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

import static com.wsunitstats.utils.Constants.AbilityType.CREATE_ENV;
import static org.apache.commons.collections4.ListUtils.emptyIfNull;

@Service
public class ModelMappingServiceImpl implements ModelMappingService {
    private static final Logger LOG = LoggerFactory.getLogger(ModelMappingServiceImpl.class);

    private static final Pattern LOCALIZATION_PATTERN = Pattern.compile("^localize\\(\"(<\\*[a-zA-Z0-9/]+>)\"\\)$", Pattern.MULTILINE);
    private static final Pattern MAP_ENTRY_PATTERN = Pattern.compile("^\\[(\\d*)]=localize\\(\"(<\\*[a-zA-Z0-9/]+>)\"\\)$", Pattern.MULTILINE);
    private static final int PROBABILITY_MAX = 100;
    private static final int RESOURCES_COUNT = 3;

    @Override
    public ArmorModel map(ArmorJsonModel.Entry source, int probabilitiesSum) {
        if (source == null) {
            return null;
        }
        ArmorModel armorModel = new ArmorModel();
        armorModel.setValue(Util.intToDoubleShift(source.getObject()));
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
    public GatherModel map(GatherJsonModel source, LocalizationKeyModel localization) {
        if (source == null) {
            return null;
        }
        GatherModel gatherModel = new GatherModel();
        gatherModel.setBagSize(Util.intToDoubleShift(source.getBagsize()));
        gatherModel.setGatherDistance(Util.intToDoubleShift(source.getGatherdistance()));
        gatherModel.setPerSecond(Util.intToDoubleTick(source.getPertick()));
        gatherModel.setFindTargetDistance(Util.intToDoubleShift(source.getFindtargetdistance()));
        gatherModel.setPutDistance(Util.intToDoubleShift(source.getPutdistance()));
        gatherModel.setEnv(localization.getEnvSearchTagNames().get(getBitPosition(source.getEnvtags())));
        gatherModel.setResource(localization.getResourceNames().get(source.getResource()));
        return gatherModel;
    }

    @Override
    public List<ResourceModel> map(List<Integer> source, LocalizationKeyModel localization) {
        List<ResourceModel> resources = new ArrayList<>();
        if (source != null && !source.isEmpty()) {
            for (int i = 0; i < RESOURCES_COUNT; ++i) {
                ResourceModel resource = new ResourceModel();
                resource.setResource(localization.getResourceNames().get(i));
                resource.setValue(Util.intToDoubleShift(source.get(i)).intValue());
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
        movementModel.setRotationSpeed(Util.intToDoubleShift(source.getRotationSpeed()));
        return movementModel;
    }

    @Override
    public LocalizationKeyModel map(SessionInitFileModel sessionInitSource, MainStartupFileModel mainStartupSource) {
        LocalizationKeyModel localizationModel = new LocalizationKeyModel();
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

    @Override
    public AbilityModel map(AbilityJsonModel abilitySource,
                            WorkJsonModel workSource,
                            List<CreateEnvJsonModel> createEnvSource,
                            Map<Integer, EnvJsonModel> envSources,
                            LocalizationKeyModel localization) {
        AbilityModel abilityModel = new AbilityModel();
        AbilityType abilityType = getAbilityType(abilitySource);
        AbilityDataJsonModel abilityData = abilitySource.getData();
        WorkReserveJsonModel workReserve = workSource != null ? workSource.getReserve() : null;
        int entityId = getAbilityEntityId(abilityData);
        abilityModel.setEntityId(entityId);
        abilityModel.setAbilityType(abilityType.getName());
        abilityModel.setEntityName(getAbilityEntityName(abilityType, entityId, createEnvSource, envSources, localization));
        abilityModel.setCount(getEnvCount(abilityData, abilityType, entityId, createEnvSource));
        abilityModel.setCost(getWorkCost(workSource, localization));
        abilityModel.setLifeTime(abilityData.getLifeTime());
        abilityModel.setMakeTime(workReserve != null ? workSource.getMaketime() : null);
        abilityModel.setDuration(abilityData.getDuration());
        abilityModel.setRequirements(getRequirements(abilitySource.getRequirements(), localization));
        abilityModel.setReserveLimit(workReserve != null ? workReserve.getLimit() : null);
        abilityModel.setReserveTime(workReserve != null ? workReserve.getTime() : null);
        return abilityModel;
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
            if (ir1.contains("{")) {
                ++i; // skip ir2 value
                ir1 = ir1.replace("{", StringUtils.EMPTY);
            }
            String nationName;
            nationName = convertToLocalizationTag(ir1);
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

    private int getAbilityEntityId(AbilityDataJsonModel abilityData) {
        Integer id = abilityData.getId();
        Integer research = abilityData.getResearch();
        Integer unit = abilityData.getUnit();
        if (id != null && research == null && unit == null) {
            return id;
        }
        if (id == null && research != null && unit == null) {
            return research;
        }
        if (id == null && research == null && unit != null) {
            return unit;
        }
        throw new IllegalStateException("Ambiguous ID in AbilityDataJsonModel");
    }

    private String getAbilityEntityName(AbilityType abilityType,
                                        int entityId,
                                        List<CreateEnvJsonModel> createEnvSource,
                                        Map<Integer, EnvJsonModel> envSource,
                                        LocalizationKeyModel localization) {
        switch (abilityType) {
            case CREATE_UNIT, TRANSFORM -> {
                return localization.getUnitNames().get(entityId);
            }
            case RESEARCH, BUFF -> {
                return localization.getResearchNames().get(entityId);
            }
            case CREATE_ENV -> {
                String tag = createEnvSource.get(entityId).getTag();
                Map.Entry<Integer, EnvJsonModel> envEntry = envSource.entrySet().stream()
                        .filter(env -> tag.equals(env.getValue().getCreateTag()))
                        .findAny()
                        .orElseThrow();
                return localization.getEnvNames().get(envEntry.getKey());
            }
            default -> {
                return null;
            }
        }
    }

    private Integer getEnvCount(AbilityDataJsonModel abilityData, AbilityType abilityType, int entityId, List<CreateEnvJsonModel> createEnvSource) {
        Integer count = abilityData.getCount();
        //case for wheat
        if (count == null && abilityType == CREATE_ENV) {
            count = createEnvSource.get(entityId).getCount();
        }
        return count;
    }

    private AbilityType getAbilityType(AbilityJsonModel abilitySource) {
        Integer typeId = abilitySource.getType();
        return AbilityType.get(typeId != null ? typeId : 0);
    }

    private List<ResourceModel> getWorkCost(WorkJsonModel workSource, LocalizationKeyModel localization) {
        if (workSource == null) {
            return new ArrayList<>();
        }
        List<Integer> costOrder = workSource.getCostOrder();
        List<Integer> costProcess = workSource.getCostProcess();
        List<Integer> costStart = workSource.getCostStart();

        if (costOrder != null && costProcess == null && costStart == null) {
            return map(costOrder, localization);
        } else if (costOrder == null && costProcess != null && costStart == null) {
            return map(costProcess, localization);
        } else if (costOrder == null && costProcess == null && costStart != null) {
            return map(costStart, localization);
        } else {
            return new ArrayList<>();
        }
    }

    private RequirementsModel getRequirements(RequirementsJsonModel requirementsSource, LocalizationKeyModel localization) {
        if (requirementsSource == null) {
            return null;
        }
        RequirementsModel requirementsModel = new RequirementsModel();
        List<Integer> researches = requirementsSource.getResearches();
        List<ResearchRequirementModel> researchRequirementModels = emptyIfNull(researches)
                .stream()
                .map(researchId -> {
                    ResearchRequirementModel result = new ResearchRequirementModel();
                    result.setResearchId(researchId);
                    result.setResearchName(localization.getResearchNames().get(researchId));
                    return result;
                })
                .toList();
        List<UnitRequirementJsonModel> units = requirementsSource.getUnits();
        List<UnitRequirementModel> unitRequirementModels = emptyIfNull(units)
                .stream()
                .map(unitJson -> {
                    UnitRequirementModel result = new UnitRequirementModel();
                    int id = unitJson.getType();
                    result.setMax(unitJson.getMax());
                    result.setMin(unitJson.getMin());
                    result.setUnitId(id);
                    result.setUnitName(localization.getUnitNames().get(id));
                    return result;
                })
                .toList();
        requirementsModel.setResearches(researchRequirementModels);
        requirementsModel.setUnits(unitRequirementModels);
        requirementsModel.setResearchesAll(requirementsSource.getResearchesAll());
        requirementsModel.setUnitsAll(requirementsSource.getUnitsAll());
        return requirementsModel;
    }
}
