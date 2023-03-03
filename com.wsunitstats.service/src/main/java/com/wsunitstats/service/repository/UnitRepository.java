package com.wsunitstats.service.repository;

import com.wsunitstats.model.UnitModel;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface UnitRepository extends CrudRepository<UnitModel, Long>, PagingAndSortingRepository<UnitModel, Long> {

}
