package com.bitMiners.eProgrammerz.controller.api;

import com.bitMiners.eProgrammerz.domain.ChapterContent;
import com.bitMiners.eProgrammerz.services.ChapterContentService;
import com.bitMiners.eProgrammerz.services.LanguageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller("chapterContentControllerFront")
@RequestMapping("/{chapterSlug}/contents")
public class ChapterContentController {

    @Autowired
    private ChapterContentService chapterContentService;

    @Autowired
    private LanguageService languageService;

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<List<ChapterContent>> getTutorialForChapter(@PathVariable("chapterSlug") String id) {
        List<ChapterContent> contents = chapterContentService.findByChapterSlug(id);
        if (contents != null) {
            return new ResponseEntity<List<ChapterContent>>(contents, HttpStatus.OK);
        }
        return new ResponseEntity<List<ChapterContent>>(HttpStatus.NO_CONTENT);
    }

    @RequestMapping(value = "/{contentSlug}", method = RequestMethod.GET)
    public ResponseEntity<ChapterContent> getOneContent(@PathVariable("contentSlug") String slug) {
        return new ResponseEntity<ChapterContent>(chapterContentService.findOneBySlug(slug), HttpStatus.OK);
    }
}
