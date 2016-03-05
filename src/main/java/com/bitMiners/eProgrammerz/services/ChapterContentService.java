package com.bitMiners.eProgrammerz.services;

import java.util.List;

import org.springframework.http.HttpStatus;

import com.bitMiners.eProgrammerz.domain.ChapterContent;

public interface ChapterContentService {
	public ChapterContent findOne(Long id);

	public List<ChapterContent> findAll(Long id);

	public Long save(ChapterContent chapter);

	public Long delete(Long chapterId);
	
	ChapterContent update(ChapterContent chapter);

	List<ChapterContent> findByChapterId(Long id);

	List<ChapterContent> findByChapterSlug(String id);

	ChapterContent findOneBySlug(String slug);
}
