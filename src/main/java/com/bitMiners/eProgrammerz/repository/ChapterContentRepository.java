package com.bitMiners.eProgrammerz.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bitMiners.eProgrammerz.domain.ChapterContent;
@Repository
public interface ChapterContentRepository extends JpaRepository<ChapterContent, Long>{

	@Query("select c from ChapterContent c where c.chapter.id =?1")
	List<ChapterContent> findByChapterId(Long id);

	@Query("select c from ChapterContent c where c.chapter.slug =?1")
	List<ChapterContent> findByChapterSlug(String id);

	@Query("select c from ChapterContent c where c.slug =?1")
	ChapterContent findBySlug(String slug);
	
}
