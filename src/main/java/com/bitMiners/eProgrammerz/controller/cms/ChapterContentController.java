package com.bitMiners.eProgrammerz.controller.cms;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.bitMiners.eProgrammerz.domain.Chapter;
import com.bitMiners.eProgrammerz.domain.ChapterContent;
import com.bitMiners.eProgrammerz.services.ChapterContentService;
import com.bitMiners.eProgrammerz.services.ChapterService;

@RestController
@RequestMapping("/cms/{chapId}/chapterContents")
public class ChapterContentController {
	@Autowired
	private ChapterContentService chapterContentService;

	@Autowired
	private ChapterService chapterService;
	
	@Autowired
	private ServletContext context;

	@RequestMapping(method = RequestMethod.GET)
	public ResponseEntity<List<ChapterContent>> getAllChapters(@PathVariable("chapId") Long chapId) {
		List<ChapterContent> chapters = chapterContentService.findAll(chapId);
		if (chapters == null) {
			return new ResponseEntity<List<ChapterContent>>(HttpStatus.NOT_FOUND);
		}
		return new ResponseEntity<List<ChapterContent>>(chapters, HttpStatus.OK);
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public ResponseEntity<ChapterContent> getOneChapter(@PathVariable("id") Long id) {
		ChapterContent chapterContent = chapterContentService.findOne(id);

		if (chapterContent == null) {
			return new ResponseEntity<ChapterContent>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<ChapterContent>(chapterContent, HttpStatus.OK);
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public ResponseEntity<ChapterContent> addChapter(@Valid @RequestBody ChapterContent chapterContent,
			@PathVariable("chapId") Long chapId) {
		Chapter chapter = chapterService.findOne(chapId);
		chapterContent.setChapter(chapter);
		Long generatedId = chapterContentService.save(chapterContent);
		chapterContent.setId(generatedId);
		return new ResponseEntity<ChapterContent>(chapterContent, HttpStatus.CREATED);

	}

	@RequestMapping(value = "/update", method = RequestMethod.PUT)
	public ResponseEntity<ChapterContent> updateChapter(@Valid @RequestBody ChapterContent chapterContent) {
		ChapterContent updatedChapterContent = chapterContentService.update(chapterContent);
		return new ResponseEntity<ChapterContent>(updatedChapterContent, HttpStatus.OK);
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.DELETE)
	public @ResponseBody void deleteChapter(@PathVariable Long id) {
		chapterContentService.delete(id);
	}

	@RequestMapping(value = "/upload")
	public ResponseEntity<ChapterContent> uploadImage(@RequestParam("file") MultipartFile file,HttpServletRequest request){
		if (!file.isEmpty()) {

			String uploadDir = "/resources/images/tutorial";
			String realPathToUpload = context.getRealPath(uploadDir);
			
//			String realPathToUpload = "http://localhost:8080/ROOT/resources/images/tutorial";
			if (!new File(realPathToUpload).exists()) {
				new File(realPathToUpload).mkdir();
			}

			String orgName = file.getOriginalFilename();
			String filePath = realPathToUpload + File.separator + orgName;
			File dest = new File(filePath);
			try {
				file.transferTo(dest);
			} catch (IllegalStateException e) {
//				System.out.println("State Exception");
				return new ResponseEntity<ChapterContent>(HttpStatus.BAD_REQUEST);
			} catch (IOException e) {
//				System.out.println("IOException");
				return new ResponseEntity<ChapterContent>(HttpStatus.NOT_FOUND);
			}
		}
		return new ResponseEntity<ChapterContent>(HttpStatus.OK);
	}
}
