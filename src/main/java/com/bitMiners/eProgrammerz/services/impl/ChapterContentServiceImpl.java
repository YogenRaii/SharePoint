package com.bitMiners.eProgrammerz.services.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitMiners.eProgrammerz.domain.ChapterContent;
import com.bitMiners.eProgrammerz.repository.ChapterContentRepository;
import com.bitMiners.eProgrammerz.services.ChapterContentService;

@Service
public class ChapterContentServiceImpl implements ChapterContentService{

	@Autowired
	private ChapterContentRepository chapterContentRepository;
	
	@Override
	public ChapterContent findOne(Long id) {
		return chapterContentRepository.findOne(id);
	}

	@Override
	public List<ChapterContent> findAll(Long id) {
		return chapterContentRepository.findByChapterId(id);
	}

	@Override
	public Long save(ChapterContent chapterContent) {
		
		chapterContent.setActive(false);
		chapterContent.setDateCreated(new Date());
		chapterContent.setDisplayOrder(1);
		chapterContent.setNumberOfViewers(1);
		chapterContent.setSlug(chapterContent.getTitle());
		chapterContent = chapterContentRepository.save(chapterContent);
		return chapterContent.getId();
	}

	@Override
	public Long delete(Long id) {
		chapterContentRepository.delete(id);
		return id;
	}

	@Override
	public ChapterContent update(ChapterContent chapterContent) {
		return chapterContentRepository.saveAndFlush(chapterContent);
	}

	@Override
	public List<ChapterContent> findByChapterId(Long id) {
		return chapterContentRepository.findByChapterId(id);
	}

	@Override
	public List<ChapterContent> findByChapterSlug(String id) {
		return chapterContentRepository.findByChapterSlug(id);
	}

	@Override
	public ChapterContent findOneBySlug(String slug) {
		return chapterContentRepository.findBySlug(slug);
	}

}
