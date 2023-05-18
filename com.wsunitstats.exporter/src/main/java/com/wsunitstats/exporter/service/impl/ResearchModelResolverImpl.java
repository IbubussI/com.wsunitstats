package com.wsunitstats.exporter.service.impl;

import com.wsunitstats.domain.ResearchModel;
import com.wsunitstats.domain.submodel.UpgradeModel;
import com.wsunitstats.exporter.model.LocalizationKeyModel;
import com.wsunitstats.exporter.model.json.gameplay.GameplayFileJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.researches.ResearchJsonModel;
import com.wsunitstats.exporter.model.json.gameplay.submodel.researches.UpgradeJsonModel;
import com.wsunitstats.exporter.service.FileContentService;
import com.wsunitstats.exporter.service.ImageService;
import com.wsunitstats.exporter.service.ModelMappingService;
import com.wsunitstats.exporter.service.ResearchModelResolver;
import com.wsunitstats.utils.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class ResearchModelResolverImpl implements ResearchModelResolver {
    @Autowired
    private ModelMappingService mappingService;
    @Autowired
    private ImageService imageService;
    @Autowired
    private FileContentService fileContentService;

    @Override
    public List<ResearchModel> resolve() {
        GameplayFileJsonModel gameplayModel = fileContentService.getGameplayFileModel();
        LocalizationKeyModel localizationKeyModel = fileContentService.getLocalizationKeyModel();

        Map<Integer, ResearchJsonModel> researches = gameplayModel.getResearches().getList();
        Map<Integer, UpgradeJsonModel> upgrades = gameplayModel.getResearches().getUpgrades();

        List<ResearchModel> result = new ArrayList<>();
        for (Map.Entry<Integer, ResearchJsonModel> entry : researches.entrySet()) {
            int id = entry.getKey();
            ResearchJsonModel researchJsonModel = entry.getValue();
            ResearchModel researchModel = new ResearchModel();
            researchModel.setGameId(id);
            researchModel.setImage(imageService.getImageName(Constants.EntityType.UPGRADE.getName(), id));
            researchModel.setName(localizationKeyModel.getResearchNames().get(id));
            researchModel.setDescription(localizationKeyModel.getResearchTexts().get(id));
            researchModel.setUpgrades(getUpgrades(researchJsonModel, upgrades));
            result.add(researchModel);
        }
        return result;
    }

    private List<UpgradeModel> getUpgrades(ResearchJsonModel research, Map<Integer, UpgradeJsonModel> upgrades) {
        return research == null ? null : research.getUpgrades().stream()
                .map(upgradeId -> mappingService.map(upgradeId, upgrades.get(upgradeId)))
                .collect(Collectors.toList());
    }
}
