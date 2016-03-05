package com.bitMiners.eProgrammerz.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bitMiners.eProgrammerz.domain.Language;
@Repository
public interface LanguageRepository extends JpaRepository<Language, Long>{
	@Query("SELECT l FROM Language l where l.name =?1")
	public Language findLanguageByName(String name);

	@Query("SELECT l FROM Language l where l.langId =?1")
	public Language findByLangId(String id);
}
