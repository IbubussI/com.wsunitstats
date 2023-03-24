package com.wsunitstats.service.repository;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.service.model.UnitOption;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface UnitRepository extends CrudRepository<UnitModel, Long>, PagingAndSortingRepository<UnitModel, Long> {
    List<UnitModel> findByNameIn(List<String> names, Pageable pageable);

    List<UnitModel> findByNationIn(List<String> nations, Pageable pageable);

    List<UnitModel> findByGameIdIn(List<Integer> ids, Pageable pageable);

    List<UnitModel> findByIdIn(List<Long> ids, Pageable pageable);

    Page<UnitModel> findAll(Pageable pageable);

    @Query(nativeQuery = true, value = """
            SELECT COLUMN_NAME
            FROM INFORMATION_SCHEMA.COLUMNS
            WHERE TABLE_NAME = 'unit'
            """)
    List<String> getColumnNames();

    @Query(nativeQuery = true, value = """
            SELECT localization_entries.entries, unit.id, unit.nation FROM wsunitstats.localization_entries
            LEFT JOIN wsunitstats.unit ON localization_entries.entries_KEY = unit.name
            WHERE localization_id = (SELECT id FROM wsunitstats.localization WHERE locale = :locale)
            AND entries_KEY LIKE :entryPattern
            AND entries LIKE :textPattern
            ORDER BY entries
            LIMIT :size
            """)
    List<UnitOption> findByPatternContaining(@Param("locale") String locale,
                                             @Param("entryPattern") String entryPattern,
                                             @Param("textPattern") String textPattern,
                                             @Param("size") int size);
}
