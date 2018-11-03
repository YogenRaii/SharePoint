package com.bitMiners.eProgrammerz.services;

import com.bitMiners.eProgrammerz.domain.Chapter;

import java.util.List;

public interface ChapterService {
    public Chapter findOne(Long id);

    public Long save(Chapter chapter);

    public Long delete(Long chapterId);

    Chapter update(Chapter chapter);

    List<Chapter> findChaptersForLang(Long id);

    List<Chapter> findAll(Long languageId);

    List<Chapter> findChaptersForLangId(String id);
}
