package com.bitMiners.eProgrammerz.services;

import java.util.List;

import com.bitMiners.eProgrammerz.domain.Language;

public interface LanguageService {
	public Language findOne(Long id);

	public List<Language> findAll();

	public Long save(Language language);

	public Long delete(Long laLong);
	
	Language update(Language language);

	Language findLangByLangId(String id);
}
