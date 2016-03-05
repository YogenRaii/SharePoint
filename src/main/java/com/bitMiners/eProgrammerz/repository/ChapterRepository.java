package com.bitMiners.eProgrammerz.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bitMiners.eProgrammerz.domain.Chapter;
@Repository
public interface ChapterRepository extends JpaRepository<Chapter, Long>{

	@Query("select c.title from Chapter c where c.title =?1")
	String findChapterByTitle(String title);

	@Query("select c from Chapter c where c.language.id =?1")
	List<Chapter> findChaptersByLangId(Long id);
	
	@Query("select c from Chapter c where c.language.langId =?1")
	List<Chapter> findChaptersByLangId(String id);
}
