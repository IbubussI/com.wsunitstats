package com.wsunitstats.exporter.service.impl;

import com.wsunitstats.domain.EntityInfoModel;
import com.wsunitstats.domain.submodel.ResourceModel;
import com.wsunitstats.domain.submodel.ability.ActionAbilityModel;
import com.wsunitstats.domain.submodel.ability.CreateEnvAbilityModel;
import com.wsunitstats.domain.submodel.ability.CreateUnitAbilityModel;
import com.wsunitstats.domain.submodel.ability.DamageAbilityModel;
import com.wsunitstats.domain.submodel.ability.GenericAbility;
import com.wsunitstats.domain.submodel.ability.ResearchAbilityModel;
import com.wsunitstats.domain.submodel.ability.TransformAbilityModel;
import com.wsunitstats.domain.submodel.ability.WorkModel;
import com.wsunitstats.domain.submodel.ability.container.DeathAbilityContainer;
import com.wsunitstats.domain.submodel.ability.container.GenericAbilityContainer;
import com.wsunitstats.domain.submodel.ability.container.OnActionAbilityContainer;
import com.wsunitstats.domain.submodel.ability.container.WorkAbilityContainer;
import com.wsunitstats.domain.submodel.ability.container.ZoneEventAbilityContainer;
import com.wsunitstats.exporter.model.LocalizationKeyModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.CreateEnvJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.EnvJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.UnitJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ZoneEventJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ability.AbilityJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.ability.AbilityOnActionJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.work.WorkJsonModel;
import com.wsunitstats.exporter.service.AbilityMappingService;
import com.wsunitstats.exporter.service.FileContentService;
import com.wsunitstats.exporter.service.ImageService;
import com.wsunitstats.exporter.service.ModelMappingService;
import com.wsunitstats.exporter.service.NationResolver;
import com.wsunitstats.exporter.service.TagResolver;
import com.wsunitstats.utils.Constants;
import com.wsunitstats.utils.Utils;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

@Service
public class AbilityMappingServiceImpl implements AbilityMappingService {
    @Autowired
    private ImageService imageService;
    @Autowired
    private FileContentService fileContentService;
    @Autowired
    private ModelMappingService modelMappingService;
    @Autowired
    private NationResolver nationResolver;
    @Autowired
    private TagResolver tagResolver;

    private LocalizationKeyModel localization;
    private Map<Integer, EnvJsonModel> envMap;

    @PostConstruct
    protected void postConstruct() {
        localization = fileContentService.getLocalizationKeyModel();
        envMap = fileContentService.getGameplayFileModel().getScenes().getEnvs();
    }

    @Override
    public List<GenericAbilityContainer> mapAbilities(UnitJsonModel unitJsonModel) {
        List<GenericAbilityContainer> result = new ArrayList<>();
        List<Integer> specialIdList = new ArrayList<>();
        List<Integer> defaultIdList = new ArrayList<>(IntStream.range(0, unitJsonModel.getAbility().getAbilities().size())
                .boxed()
                .toList());

        AbilityOnActionJsonModel abilityOnActionJsonModel = unitJsonModel.getAbility().getAbilityOnAction();
        if (abilityOnActionJsonModel != null) {
            specialIdList.add(abilityOnActionJsonModel.getAbility());
            GenericAbilityContainer onActionAbility = mapOnActionAbility(unitJsonModel);
            onActionAbility.setContainerName(Constants.AbilityContainerType.SELF.getName());
            onActionAbility.setContainerType(Constants.AbilityContainerType.SELF.getType());
            result.add(onActionAbility);
        }
        ZoneEventJsonModel zoneEventJsonModel = unitJsonModel.getZoneEvent();
        if (zoneEventJsonModel != null) {
            specialIdList.addAll(zoneEventJsonModel.getAbilities());
            GenericAbilityContainer zoneEventAbility = mapZoneEventAbility(unitJsonModel);
            zoneEventAbility.setContainerName(Constants.AbilityContainerType.ZONE_EVENT.getName());
            zoneEventAbility.setContainerType(Constants.AbilityContainerType.ZONE_EVENT.getType());
            result.add(zoneEventAbility);
        }
        Integer abilityOnDeath = unitJsonModel.getAbility().getAbilityOnDeath();
        if (abilityOnDeath != null) {
            specialIdList.add(abilityOnDeath);
            GenericAbilityContainer deathAbilities = mapDeathAbility(unitJsonModel, abilityOnDeath);
            deathAbilities.setContainerName(Constants.AbilityContainerType.DEATH.getName());
            deathAbilities.setContainerType(Constants.AbilityContainerType.DEATH.getType());
            result.add(deathAbilities);
        }

        defaultIdList.removeAll(specialIdList);
        result.addAll(defaultIdList.stream()
                .map(abilityId -> mapContainer(unitJsonModel, abilityId))
                .toList());
        return result;
    }

    private GenericAbilityContainer mapContainer(UnitJsonModel unitJsonModel, Integer abilityId) {
        Constants.AbilityType abilityType = getAbilityType(unitJsonModel.getAbility().getAbilities().get(abilityId));
        switch (abilityType) {
            case CREATE_UNIT, TRANSFORM, RESEARCH, CREATE_ENV -> {
                GenericAbilityContainer workAbility = mapWorkAbility(unitJsonModel, abilityId);
                workAbility.setContainerName(Constants.AbilityContainerType.WORK.getName());
                workAbility.setContainerType(Constants.AbilityContainerType.WORK.getType());
                return workAbility;
            }
            default -> {
                return null;
            }
        }
    }

    private WorkAbilityContainer mapWorkAbility(UnitJsonModel unitJsonModel, int abilityId) {
        WorkAbilityContainer workAbilityContainer = new WorkAbilityContainer();
        AbilityJsonModel abilityJsonModel = unitJsonModel.getAbility().getAbilities().get(abilityId);
        workAbilityContainer.setAbility(mapAbility(unitJsonModel, abilityJsonModel, abilityId));

        int workId = getWorkId(unitJsonModel, abilityId);
        WorkJsonModel workJsonModel = null;
        if (workId != -1) {
            workJsonModel = unitJsonModel.getAbility().getWork().get(workId);
        }

        workAbilityContainer.setWork(mapWork(workJsonModel, workId));
        return workAbilityContainer;
    }

    private OnActionAbilityContainer mapOnActionAbility(UnitJsonModel unitJsonModel) {
        OnActionAbilityContainer onActionAbilityContainer = new OnActionAbilityContainer();
        AbilityOnActionJsonModel abilityOnActionJsonModel = unitJsonModel.getAbility().getAbilityOnAction();
        Integer abilityId = abilityOnActionJsonModel.getAbility();
        AbilityJsonModel abilityJsonModel = unitJsonModel.getAbility().getAbilities().get(abilityId);
        onActionAbilityContainer.setAbility(mapAbility(unitJsonModel, abilityJsonModel, abilityId));
        onActionAbilityContainer.setDistance(modelMappingService.map(abilityOnActionJsonModel.getDistance()));
        onActionAbilityContainer.setOnAgro(abilityOnActionJsonModel.getOnAgro());
        onActionAbilityContainer.setEnabled(abilityOnActionJsonModel.getEnabled() != null ? abilityOnActionJsonModel.getEnabled() : true );
        onActionAbilityContainer.setRechargeTime(Utils.intToDoubleShift(abilityOnActionJsonModel.getRestore()));
        return onActionAbilityContainer;
    }

    private ZoneEventAbilityContainer mapZoneEventAbility(UnitJsonModel unitJsonModel) {
        ZoneEventAbilityContainer zoneEventAbilityContainer = new ZoneEventAbilityContainer();
        ZoneEventJsonModel zoneEventJsonModel = unitJsonModel.getZoneEvent();
        List<Integer> abilityIds = zoneEventJsonModel.getAbilities();
        zoneEventAbilityContainer.setAbilities(abilityIds.stream()
                .map(abilityId -> mapAbility(unitJsonModel, unitJsonModel.getAbility().getAbilities().get(abilityId), abilityId))
                .collect(Collectors.toList()));
        zoneEventAbilityContainer.setSize(zoneEventJsonModel.getSize());
        zoneEventAbilityContainer.setEnvSearchDistance(zoneEventJsonModel.getEnvSearchDistance());
        zoneEventAbilityContainer.setEnvTags(tagResolver.getEnvSearchTags(zoneEventJsonModel.getEnvTags()));
        return zoneEventAbilityContainer;
    }

    private DeathAbilityContainer mapDeathAbility(UnitJsonModel unitJsonModel, int abilityId) {
        DeathAbilityContainer deathAbilityContainer = new DeathAbilityContainer();
        deathAbilityContainer.setAbility(mapAbility(unitJsonModel, unitJsonModel.getAbility().getAbilities().get(abilityId), abilityId));
        return deathAbilityContainer;
    }

    private GenericAbility mapAbility(UnitJsonModel unitJsonModel, AbilityJsonModel abilityJsonModel, int abilityId) {
        GenericAbility genericAbility;
        Constants.AbilityType abilityType = getAbilityType(abilityJsonModel);
        switch (abilityType) {
            case SELF_BUFF -> genericAbility = mapActionAbility(abilityJsonModel);
            case DAMAGE -> genericAbility = mapDamageAbility(abilityJsonModel);
            case RESEARCH -> genericAbility = mapResearchAbility(abilityJsonModel);
            case TRANSFORM -> genericAbility = mapTransformAbility(abilityJsonModel);
            case CREATE_ENV -> genericAbility = mapCreateEnvAbility(abilityJsonModel, unitJsonModel);
            case CREATE_UNIT -> genericAbility = mapCreateUnitAbility(abilityJsonModel);
            default -> {
                return null;
            }
        }
        genericAbility.setRequirements(modelMappingService.map(abilityJsonModel.getRequirements()));
        genericAbility.setAbilityId(abilityId);
        genericAbility.setAbilityType(abilityType.getType());
        return genericAbility;
    }

    private GenericAbility mapActionAbility(AbilityJsonModel abilityJsonModel) {
        ActionAbilityModel abilityModel = new ActionAbilityModel();
        EntityInfoModel entityInfoModel = new EntityInfoModel();
        Integer entityId = abilityJsonModel.getData().getResearch();
        String entityType = Constants.EntityType.UPGRADE.getName();
        entityInfoModel.setEntityImage(imageService.getImageName(entityType, entityId));
        entityInfoModel.setEntityName(localization.getResearchNames().get(entityId));
        entityInfoModel.setEntityId(entityId);
        abilityModel.setEntityInfo(entityInfoModel);
        abilityModel.setDuration(Utils.intToDoubleShift(abilityJsonModel.getData().getDuration()));
        return abilityModel;
    }

    private GenericAbility mapDamageAbility(AbilityJsonModel abilityJsonModel) {
        DamageAbilityModel abilityModel = new DamageAbilityModel();
        abilityModel.setDamage(modelMappingService.map(abilityJsonModel.getData()));
        return abilityModel;
    }

    private GenericAbility mapResearchAbility(AbilityJsonModel abilityJsonModel) {
        ResearchAbilityModel abilityModel = new ResearchAbilityModel();
        EntityInfoModel entityInfoModel = new EntityInfoModel();
        Integer entityId = abilityJsonModel.getData().getResearch();
        String entityType = Constants.EntityType.UPGRADE.getName();
        entityInfoModel.setEntityImage(imageService.getImageName(entityType, entityId));
        entityInfoModel.setEntityName(localization.getResearchNames().get(entityId));
        entityInfoModel.setEntityId(entityId);
        abilityModel.setEntityInfo(entityInfoModel);
        return abilityModel;
    }

    private GenericAbility mapTransformAbility(AbilityJsonModel abilityJsonModel) {
        TransformAbilityModel abilityModel = new TransformAbilityModel();
        EntityInfoModel entityInfoModel = new EntityInfoModel();
        Integer entityId = abilityJsonModel.getData().getUnit();
        String entityType = Constants.EntityType.UNIT.getName();
        entityInfoModel.setEntityImage(imageService.getImageName(entityType, entityId));
        entityInfoModel.setEntityName(localization.getUnitNames().get(entityId));
        entityInfoModel.setEntityNation(nationResolver.getUnitNation(entityId));
        entityInfoModel.setEntityId(entityId);
        abilityModel.setEntityInfo(entityInfoModel);
        return abilityModel;
    }

    private GenericAbility mapCreateEnvAbility(AbilityJsonModel abilityJsonModel, UnitJsonModel unitJsonModel) {
        CreateEnvAbilityModel abilityModel = new CreateEnvAbilityModel();
        EntityInfoModel entityInfoModel = new EntityInfoModel();

        Integer createEnvId = abilityJsonModel.getData().getId();
        CreateEnvJsonModel createEnvSource = unitJsonModel.getCreateEnvs().get(createEnvId);
        String createEnvTag = createEnvSource.getTag();
        int entityId = envMap.entrySet().stream()
                .filter(env -> createEnvTag.equals(env.getValue().getCreateTag()))
                .findAny()
                .orElseThrow()
                .getKey();

        String entityType = Constants.EntityType.ENV.getName();
        entityInfoModel.setEntityImage(imageService.getImageName(entityType, entityId));
        entityInfoModel.setEntityName(localization.getEnvNames().get(entityId));
        entityInfoModel.setEntityId(entityId);
        abilityModel.setEntityInfo(entityInfoModel);
        abilityModel.setCount(createEnvSource.getCount());
        return abilityModel;
    }

    private GenericAbility mapCreateUnitAbility(AbilityJsonModel abilityJsonModel) {
        CreateUnitAbilityModel abilityModel = new CreateUnitAbilityModel();
        EntityInfoModel entityInfoModel = new EntityInfoModel();
        Integer entityId = abilityJsonModel.getData().getUnit();
        String entityType = Constants.EntityType.UNIT.getName();
        entityInfoModel.setEntityImage(imageService.getImageName(entityType, entityId));
        entityInfoModel.setEntityName(localization.getUnitNames().get(entityId));
        entityInfoModel.setEntityNation(nationResolver.getUnitNation(entityId));
        entityInfoModel.setEntityId(entityId);
        abilityModel.setEntityInfo(entityInfoModel);
        abilityModel.setCount(abilityJsonModel.getData().getCount());
        abilityModel.setLifeTime(Utils.intToDoubleShift(abilityJsonModel.getData().getLifeTime()));
        return abilityModel;
    }

    private int getWorkId(UnitJsonModel unitJsonModel, int abilityId) {
        List<WorkJsonModel> work = unitJsonModel.getAbility().getWork();
        return IntStream.range(0, work.size())
                .filter(i -> abilityId == work.get(i).getAbility())
                .findFirst()
                .orElse(-1);
    }

    private WorkModel mapWork(WorkJsonModel workJsonModel, int workId) {
        WorkModel workModel = new WorkModel();
        workModel.setWorkId(workId);
        workModel.setCost(getWorkCost(workJsonModel));
        if (workJsonModel != null) {
            workModel.setMakeTime(Utils.intToDoubleShift(workJsonModel.getMaketime()));
            workModel.setReserve(modelMappingService.map(workJsonModel.getReserve()));
            workModel.setEnabled(workJsonModel.getEnabled() != null ? workJsonModel.getEnabled() : true);
        }
        return workModel;
    }

    private List<ResourceModel> getWorkCost(WorkJsonModel workSource) {
        if (workSource == null) {
            return modelMappingService.mapResources(Arrays.asList(0, 0, 0));
        }
        List<Integer> costOrder = workSource.getCostOrder();
        List<Integer> costProcess = workSource.getCostProcess();
        List<Integer> costStart = workSource.getCostStart();

        if (costOrder != null && costProcess == null && costStart == null) {
            return modelMappingService.mapResources(costOrder);
        } else if (costOrder == null && costProcess != null && costStart == null) {
            return modelMappingService.mapResources(costProcess);
        } else if (costOrder == null && costProcess == null && costStart != null) {
            return modelMappingService.mapResources(costStart);
        } else {
            return modelMappingService.mapResources(Arrays.asList(0, 0, 0));
        }
    }

    private Constants.AbilityType getAbilityType(AbilityJsonModel abilitySource) {
        Integer typeId = abilitySource.getType();
        return Constants.AbilityType.get(typeId != null ? typeId : 0);
    }
}
