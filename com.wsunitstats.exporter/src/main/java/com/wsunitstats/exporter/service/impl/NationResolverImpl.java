package com.wsunitstats.exporter.service.impl;

import com.wsunitstats.domain.submodel.NationModel;
import com.wsunitstats.exporter.model.LocalizationKeyModel;
import com.wsunitstats.exporter.model.lua.MainStartupFileModel;
import com.wsunitstats.exporter.service.FileContentService;
import com.wsunitstats.exporter.service.NationResolver;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

import static com.wsunitstats.utils.Constants.NIL;

@Service
public class NationResolverImpl implements NationResolver {
    @Autowired
    private FileContentService fileContentService;

    private List<NationModel> nations;
    private List<String> unitNations;

    @PostConstruct
    protected void postConstruct() {
        LocalizationKeyModel localizationKeyModel = fileContentService.getLocalizationKeyModel();
        MainStartupFileModel mainModel = fileContentService.getMainStartupFileModel();
        List<String> nationNames = localizationKeyModel.getNationNames();

        unitNations = mainModel.getUnitGroups();
        nations = new ArrayList<>();

        for (int i = 0; i < nationNames.size(); ++i) {
            String nationName = nationNames.get(i);
            NationModel nation = new NationModel();
            nation.setName(nationName);
            nation.setId((long) i);
            nations.add(nation);
        }

        // add "absent" nation in the end
        NationModel nation = new NationModel();
        nation.setName("null");
        nation.setId((long) nationNames.size());
        nations.add(nation);
    }

    @Override
    public NationModel getUnitNation(int unitId) {
        String unitNation = unitNations.get(unitId);
        Integer nationId = NIL.equals(unitNation) ? null : Integer.parseInt(unitNation);
        // if unit has no nation - get 'null' nation from the end
        return nationId == null ? nations.get(nations.size() - 1) : nations.get(nationId);
    }
}
