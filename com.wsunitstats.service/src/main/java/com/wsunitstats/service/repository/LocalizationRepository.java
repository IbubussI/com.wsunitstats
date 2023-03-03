package com.wsunitstats.service.repository;

import com.wsunitstats.model.LocalizationModel;
import org.springframework.data.repository.CrudRepository;

public interface LocalizationRepository extends CrudRepository<LocalizationModel, Long> {
    boolean existsByLocale(String locale);
}
