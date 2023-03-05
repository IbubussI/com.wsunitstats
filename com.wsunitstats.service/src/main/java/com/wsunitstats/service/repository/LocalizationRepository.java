package com.wsunitstats.service.repository;

import com.wsunitstats.domain.LocalizationModel;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface LocalizationRepository extends CrudRepository<LocalizationModel, Long> {
    boolean existsByLocale(String locale);

    LocalizationModel findByLocale(String locale);

    @Query(nativeQuery = true, value = """
            SELECT entries_KEY FROM localizationmodel_entries
            WHERE LocalizationModel_id = (SELECT id FROM localizationmodel WHERE locale = :locale)
            AND entries IN (:values)
            """)
    List<String> findKeysByValues(@Param("locale") String locale, @Param("values") List<String> values);
}
