package com.wsunitstats.service.repository;

import com.wsunitstats.domain.UnitModel;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import java.util.List;

public interface UnitRepository extends CrudRepository<UnitModel, Long>, PagingAndSortingRepository<UnitModel, Long> {
    List<UnitModel> findByNameIn(List<String> names, Pageable pageable);

    List<UnitModel> findByNationIn(List<String> nations, Pageable pageable);

    List<UnitModel> findByGameIdIn(List<Integer> ids, Pageable pageable);

    Page<UnitModel> findAll(Pageable pageable);
}
