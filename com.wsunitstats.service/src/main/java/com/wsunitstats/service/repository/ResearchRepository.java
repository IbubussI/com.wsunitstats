package com.wsunitstats.service.repository;

import com.wsunitstats.domain.ResearchModel;
import com.wsunitstats.service.model.EntityOption;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import java.util.Collection;
import java.util.List;

public interface ResearchRepository extends CrudRepository<ResearchModel, Long>, PagingAndSortingRepository<ResearchModel, Long> {
    List<ResearchModel> findByNameIn(Collection<String> names, Pageable pageable);

    List<ResearchModel> findByGameIdIn(Collection<Integer> ids, Pageable pageable);

    List<ResearchModel> findByGameIdIn(Collection<Integer> ids);

    @Query(nativeQuery = true, value = """
            SELECT COLUMN_NAME
            FROM INFORMATION_SCHEMA.COLUMNS
            WHERE TABLE_NAME = 'research'
            """)
    List<String> getColumnNames();

    @Query(nativeQuery = true,value = """
            SELECT research.name, research.gameId, research.id, research.image FROM wsunitstats.localization_entries
            RIGHT JOIN wsunitstats.research ON localization_entries.entries_KEY = research.name
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

    @Query(nativeQuery = true, value = """
            SELECT DISTINCT research.name, research.gameId, research.id, research.image FROM wsunitstats.research
            INNER JOIN research_upgrades ON research.id = research_upgrades.research_id
            INNER JOIN upgrade ON upgrade.id = research_upgrades.upgrades_id
            WHERE upgrade.entityId IN :unitId
            """)
    List<EntityOption> findByUnitIds(@Param("unitId") Collection<Integer> unitId);
}
