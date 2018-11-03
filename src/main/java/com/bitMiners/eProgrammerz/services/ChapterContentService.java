package com.bitMiners.eProgrammerz.services;

import com.bitMiners.eProgrammerz.domain.ChapterContent;

import java.util.List;

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
