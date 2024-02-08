package com.wsunitstats.exporter.service;

import com.wsunitstats.domain.submodel.TagModel;

import java.util.List;

public interface TagResolver {
    List<TagModel> getUnitTags(Long tags);
    List<TagModel> getUnitSearchTags(Long tags);
    List<TagModel> getEnvSearchTags(Long tags);
}
