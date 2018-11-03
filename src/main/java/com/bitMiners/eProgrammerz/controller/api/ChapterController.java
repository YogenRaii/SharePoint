package com.bitMiners.eProgrammerz.controller.api;

import com.bitMiners.eProgrammerz.domain.Chapter;
import com.bitMiners.eProgrammerz.services.ChapterService;
import com.bitMiners.eProgrammerz.services.LanguageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller("chapterControllerFront")
@RequestMapping("/{languageId}")
public class ChapterController {

    @Autowired
    private ChapterService chapterService;

    @Autowired
    private LanguageService languageService;

    @RequestMapping(method = RequestMethod.GET)
    public String getTutorialForChapter(@PathVariable("languageId") String id, Model model) {
        List<Chapter> chapters = chapterService.findChaptersForLangId(id);
        model.addAttribute("chapters", chapters);
        model.addAttribute("language", languageService.findLangByLangId(id));

        return "chapters";
    }

    @RequestMapping(value = "/{chapterId}", method = RequestMethod.GET)
    public ResponseEntity<Chapter> getChapterForId(@PathVariable("chapterId") Long chapterId) {
        Chapter chapter = chapterService.findOne(chapterId);
        if (chapter == null) {
            return new ResponseEntity<Chapter>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<Chapter>(chapter, HttpStatus.OK);
    }
}
