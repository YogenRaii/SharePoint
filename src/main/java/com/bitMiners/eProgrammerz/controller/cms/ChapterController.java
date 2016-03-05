package com.bitMiners.eProgrammerz.controller.cms;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.bitMiners.eProgrammerz.domain.Chapter;
import com.bitMiners.eProgrammerz.domain.Language;
import com.bitMiners.eProgrammerz.services.ChapterService;
import com.bitMiners.eProgrammerz.services.LanguageService;
import com.bitMiners.eProgrammerz.services.exceptions.ChapterAlreadyExistsException;

@RestController("chapterControllerCms")
@RequestMapping("/cms/{languageId}/chapters")
public class ChapterController {
	@Autowired
	private ChapterService chapterService;
	
	@Autowired
	private LanguageService languageService;
	
	@RequestMapping(method=RequestMethod.GET)
	public ResponseEntity<List<Chapter>> getAllChapters(@PathVariable("languageId")Long languageId){
		List<Chapter> chapters = chapterService.findAll(languageId);
		if(chapters == null){
			return new ResponseEntity<List<Chapter>>(HttpStatus.NOT_FOUND);
		}
		return new ResponseEntity<List<Chapter>>(chapters,HttpStatus.OK);
	}
	
	@RequestMapping(value = "/{id}",method=RequestMethod.GET)
	public ResponseEntity<Chapter> getOneChapter(@PathVariable("id") Long id){
		Chapter chapter = chapterService.findOne(id);
		
		if (chapter == null) {
			return new ResponseEntity<Chapter>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<Chapter>(chapter,HttpStatus.OK);
	}
	
	@RequestMapping(value ="/add",method=RequestMethod.POST)
	public ResponseEntity<Chapter> addChapter(@Valid @RequestBody Chapter chapter,@PathVariable("languageId")Long languageId){
		Language language= languageService.findOne(languageId);
		chapter.setLanguage(language);
		try{
			Long generatedId = chapterService.save(chapter);
			chapter.setId(generatedId);
			return new ResponseEntity<Chapter>(chapter,HttpStatus.CREATED);
		}catch(ChapterAlreadyExistsException ex){
			return new ResponseEntity<Chapter>(HttpStatus.CONFLICT);
		}
	}
	
	@RequestMapping(value = "/update",method = RequestMethod.PUT)
	public ResponseEntity<Chapter> updateChapter(@Valid @RequestBody Chapter chapter){
		Chapter updatedChapter = chapterService.update(chapter);
		return new ResponseEntity<Chapter>(updatedChapter,HttpStatus.OK);
	}
	
	@RequestMapping(value = "/delete/{id}",method = RequestMethod.DELETE)
	public @ResponseBody void deleteChapter(@PathVariable Long id){
		chapterService.delete(id);
	}
}
