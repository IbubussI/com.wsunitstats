package com.wsunitstats.service.repository;

import com.wsunitstats.domain.ResearchModel;
import com.wsunitstats.service.model.ResearchOption;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ResearchRepository extends CrudRepository<ResearchModel, Long>, PagingAndSortingRepository<ResearchModel, Long> {
    List<ResearchModel> findByNameIn(List<String> names, Pageable pageable);

    List<ResearchModel> findByGameIdIn(List<Integer> ids, Pageable pageable);

    Page<ResearchModel> findAll(Pageable pageable);

    @Query(nativeQuery = true, value = """
            SELECT COLUMN_NAME
            FROM INFORMATION_SCHEMA.COLUMNS
            WHERE TABLE_NAME = 'research'
            """)
    List<String> getColumnNames();

    @Query(nativeQuery = true,value = """
            SELECT research.name, research.gameId, research.id FROM wsunitstats.localization_entries
            RIGHT JOIN wsunitstats.research ON localization_entries.entries_KEY = research.name
            WHERE localization_id = (SELECT id FROM wsunitstats.localization WHERE locale = :locale)
            AND entries_KEY LIKE :entryPattern
            AND entries LIKE :textPattern
            ORDER BY entries
            LIMIT :size
            """)
    List<ResearchOption> findByPatternContaining(@Param("locale") String locale,
                                                 @Param("entryPattern") String entryPattern,
                                                 @Param("textPattern") String textPattern,
                                                 @Param("size") int size);
}
