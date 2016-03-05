package com.bitMiners.eProgrammerz.services.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitMiners.eProgrammerz.domain.Chapter;
import com.bitMiners.eProgrammerz.domain.Language;
import com.bitMiners.eProgrammerz.repository.ChapterRepository;
import com.bitMiners.eProgrammerz.services.ChapterService;
import com.bitMiners.eProgrammerz.services.LanguageService;
import com.bitMiners.eProgrammerz.services.exceptions.ChapterAlreadyExistsException;

@Service
public class ChapterServiceImpl implements ChapterService {

	@Autowired
	private ChapterRepository chapterRepository;
	
	@Autowired LanguageService languageService;
	
	@Override
	public Chapter findOne(Long id) {
		return chapterRepository.findOne(id);
	}

	@Override
	public List<Chapter> findAll(Long langId) {
		return chapterRepository.findChaptersByLangId(langId);
	}

	@Override
	public Long save(Chapter chapter) {
		String langInDb = chapterRepository.findChapterByTitle(chapter.getTitle());
		if (langInDb != null ) {
			throw new ChapterAlreadyExistsException();
		}
		chapter.setDateCreated(new Date());
		chapter.setActive(false);
		chapter.setDisplayOrder(1);
		chapter.setNumberOfViewers(1);
		chapter.setSlug(chapter.getTitle());
		chapter = chapterRepository.save(chapter);
		return chapter.getId();
	}

	@Override
	public Long delete(Long id) {
		chapterRepository.delete(id);
		return id;
	}

	@Override
	public Chapter update(Chapter chapter) {
		return chapterRepository.saveAndFlush(chapter);
	}

	@Override
	public List<Chapter> findChaptersForLang(Long id) {
		return chapterRepository.findChaptersByLangId(id);
	}

	@Override
	public List<Chapter> findChaptersForLangId(String id) {
		return chapterRepository.findChaptersByLangId(id);
	}

}
