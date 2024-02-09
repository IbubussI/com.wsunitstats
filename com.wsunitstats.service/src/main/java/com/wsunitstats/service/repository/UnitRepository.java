package com.wsunitstats.service.repository;

import com.wsunitstats.domain.UnitModel;
import com.wsunitstats.service.model.NationOption;
import com.wsunitstats.service.model.TagOption;
import com.wsunitstats.service.model.UnitOption;
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
            SELECT unit.name, unit.gameId, unit.id, nation.name as nation, unit.image FROM wsunitstats.localization_entries
            RIGHT JOIN wsunitstats.unit ON localization_entries.entries_KEY = unit.name
            LEFT JOIN wsunitstats.nation ON nation.id = unit.nation_id
            LEFT JOIN wsunitstats.unit_tags ON unit_tags.unit_id = unit.id
            LEFT JOIN wsunitstats.unit_searchtags ON unit_searchtags.unit_id = unit.id
            WHERE localization_id = (SELECT id FROM wsunitstats.localization WHERE locale = :locale)
            AND entries_KEY LIKE :entryPattern
            AND (:textPattern IS NULL OR entries LIKE :textPattern)
            AND (COALESCE(:gameIds) IS NULL OR unit.gameId IN :gameIds)
            AND (COALESCE(:nations) IS NULL OR unit.nation_id IN :nations)
            AND (COALESCE(:unitTagIds) IS NULL OR unit_tags.tags_id IN :unitTagIds)
            AND (COALESCE(:searchTagIds) IS NULL OR unit_searchtags.searchTags_id IN :searchTagIds)
            GROUP BY unit.id
            ORDER BY :sort :sortDir
            LIMIT :limit
            OFFSET :offset
            """)
    List<UnitOption> findOptions(@Param("locale") String locale,
                                 @Param("entryPattern") String entryPattern,
                                 @Param("textPattern") String textPattern,
                                 @Param("gameIds") List<Integer> gameIds,
                                 @Param("nations") List<Integer> nations,
                                 @Param("unitTagIds") List<Integer> unitTagIds,
                                 @Param("searchTagIds") List<Integer> searchTagIds,
                                 @Param("sort") String sort,
                                 @Param("sortDir") String sortDir,
                                 @Param("offset") int offset,
                                 @Param("limit") int limit);

    @Query(nativeQuery = true, value = """
            SELECT * FROM wsunitstats.nation
            """)
    List<NationOption> findNationOptions();

    @Query(nativeQuery = true, value = """
            SELECT * FROM wsunitstats.tag_general WHERE groupName = :groupName
            """)
    List<TagOption> findTagOptions(@Param("groupName") String groupName);
}
