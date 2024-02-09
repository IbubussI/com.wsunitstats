package com.wsunitstats.service.repository;

import com.wsunitstats.domain.ResearchModel;
import com.wsunitstats.service.model.ResearchOption;
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

    List<ResearchModel> findByIdIn(Collection<Long> ids);

    @Query(nativeQuery = true, value = """
            SELECT COLUMN_NAME
            FROM INFORMATION_SCHEMA.COLUMNS
            WHERE TABLE_NAME = 'research'
            """)
    List<String> getColumnNames();

    @Query(nativeQuery = true, value = """
            SELECT research.name, research.gameId, research.id, research.image, research.description FROM wsunitstats.localization_entries
            RIGHT JOIN wsunitstats.research ON localization_entries.entries_KEY = research.name
            WHERE localization_id = (SELECT id FROM wsunitstats.localization WHERE locale = :locale)
            AND entries_KEY LIKE :entryPattern
            AND (:textPattern IS NULL OR entries LIKE :textPattern)
            AND (COALESCE(:gameIds) IS NULL OR research.gameId IN :gameIds)
            ORDER BY :sort :sortDir
            LIMIT :limit
            OFFSET :offset
            """)
    List<ResearchOption> findOptionsWithGameIdsFilter(@Param("locale") String locale,
                                                      @Param("entryPattern") String entryPattern,
                                                      @Param("textPattern") String textPattern,
                                                      @Param("gameIds") List<Integer> gameIds,
                                                      @Param("sort") String sort,
                                                      @Param("sortDir") String sortDir,
                                                      @Param("offset") int offset,
                                                      @Param("limit") int limit);
}
