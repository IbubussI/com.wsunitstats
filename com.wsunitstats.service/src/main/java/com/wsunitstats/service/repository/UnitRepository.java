package com.wsunitstats.service.repository;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.service.model.EntityOption;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import java.util.Collection;
import java.util.List;

public interface UnitRepository extends CrudRepository<UnitModel, Long>, PagingAndSortingRepository<UnitModel, Long> {
    List<UnitModel> findByNameIn(Collection<String> names, Pageable pageable);

    List<UnitModel> findByNationIn(Collection<String> nations, Pageable pageable);

    List<UnitModel> findByGameIdIn(Collection<Integer> ids, Pageable pageable);

    List<UnitModel> findByIdIn(Collection<Long> ids, Pageable pageable);

    @Query(nativeQuery = true, value = """
            SELECT COLUMN_NAME
            FROM INFORMATION_SCHEMA.COLUMNS
            WHERE TABLE_NAME = 'unit'
            """)
    List<String> getColumnNames();

    @Query(nativeQuery = true, value = """
            SELECT unit.name, unit.gameId, unit.id, unit.nation, unit.image FROM wsunitstats.localization_entries
            RIGHT JOIN wsunitstats.unit ON localization_entries.entries_KEY = unit.name
            WHERE localization_id = (SELECT id FROM wsunitstats.localization WHERE locale = :locale)
            AND entries_KEY LIKE :entryPattern
            AND entries LIKE :textPattern
            ORDER BY entries
            LIMIT :size
            """)
    List<EntityOption> findByPatternContaining(@Param("locale") String locale,
                                               @Param("entryPattern") String entryPattern,
                                               @Param("textPattern") String textPattern,
                                               @Param("size") int size);
}
