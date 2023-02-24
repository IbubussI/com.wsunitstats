package com.ws.unit.stats.mapping.mapper;

import com.ws.unit.stats.model.mapped.submodel.ResourceModel;
import com.ws.unit.stats.mapping.factory.MapperType;

import java.util.List;

@MapperType
public class ResourceMapper implements Mapper<List<Integer>, ResourceModel> {

    @Override
    public ResourceModel map(List<Integer> source) {
        if (source == null) {
            return null;
        }
        ResourceModel resourceModel = new ResourceModel();
        resourceModel.setFood(source.get(0));
        resourceModel.setWood(source.get(1));
        resourceModel.setIron(source.get(2));
        return resourceModel;
    }

}
