package com.bitMiners.eProgrammerz.controller.cms;

import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.bitMiners.eProgrammerz.domain.Language;
import com.bitMiners.eProgrammerz.domain.User;
import com.bitMiners.eProgrammerz.services.LanguageService;
import com.bitMiners.eProgrammerz.services.UserService;
import com.bitMiners.eProgrammerz.services.exceptions.LanguageAlreadyExistsException;
import com.bitMiners.eProgrammerz.services.exceptions.UserAlreadyExistsException;

@RestController
@RequestMapping("/cms/languages")
public class LanguageController {

	@Autowired
	private LanguageService languageService;
	
	@Autowired
	private HttpServletRequest servletContext;

	@RequestMapping(method = RequestMethod.GET)
	public ResponseEntity<List<Language>> getAllLanguages() {
		List<Language> languages = languageService.findAll();
		if (languages == null) {
			return new ResponseEntity<List<Language>>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<List<Language>>(languages, HttpStatus.OK);
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public ResponseEntity<Language> getOneLangauage(@PathVariable("id") Long id) {
		Language language = languageService.findOne(id);
		if (language != null) {
			return new ResponseEntity<Language>(language, HttpStatus.OK);
		}
		return new ResponseEntity<Language>(HttpStatus.NOT_FOUND);
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public ResponseEntity<Language> addLanguage(@RequestParam("file") MultipartFile file,@RequestParam("name")String name,@RequestParam("id")Long id,ServletRequest request) throws IOException {
		System.out.println(file.getContentType());

		Language language=new Language();
		language.setName(name);
		
		String langId = name.toLowerCase().replaceAll(" ", "-");
		language.setLangId(langId);
		
		
		if(id != null){
			language.setId(id);
		}
		
		String location = "/resources/front/img/languages/1_logo.png";
		
		if (!file.isEmpty()) {
			
			String uploadDir ="/resources/front/img/languages";
			String realPathToUpload = request.getServletContext().getRealPath(uploadDir);
			if( ! new File(realPathToUpload).exists()){
				new File(realPathToUpload).mkdir();
			}
			
			String orgName = file.getOriginalFilename();
//			realPathToUpload =  "www.programmingaccelerator.com/resources/front/img/languages";
            String filePath = realPathToUpload + File.separator+orgName;
            File dest = new File(filePath);
            file.transferTo(dest);
            System.out.println(dest);
            location = uploadDir + File.separator + orgName;
		}
		
		language.setImage(location);
		
		if(language.getId() != 0){
			Language updatedLanguage = languageService.update(language);
			return new ResponseEntity<Language>(updatedLanguage,HttpStatus.OK);
		}
		
		try {
			Long idGenerated = languageService.save(language);
			language.setId(idGenerated);
			return new ResponseEntity<Language>(language,HttpStatus.CREATED);
		} catch (LanguageAlreadyExistsException ex) {
			return new ResponseEntity<Language>(HttpStatus.CONFLICT);
		}
	}

	@RequestMapping(value = "/update", method = RequestMethod.PUT)
	public ResponseEntity<Language> updateLanguage(@Valid @RequestBody Language language) {
		Language updatedLanguage = languageService.update(language);
		return new ResponseEntity<Language>(updatedLanguage, HttpStatus.OK);
	}

	@RequestMapping(value = "/delete/{languageId}", method = RequestMethod.DELETE)
	public @ResponseBody void deleteLanguage(@PathVariable Long languageId) {
		languageService.delete(languageId);
	}

	static final String rPath = "/resources/front/img/languages";
	
	
	@RequestMapping(headers = "content-type=multipart/*",value = "/upload")
	public ResponseEntity<Language> upload(@RequestParam("file") MultipartFile file,@RequestParam("lang") String languageName,@RequestParam("id")Long id,HttpSession session, ServletRequest request)
			throws IOException {

		System.out.println(file.getContentType());
		
		if(languageName == null || id==null){
			return new ResponseEntity<Language>(HttpStatus.NOT_ACCEPTABLE);
		}
		
		Language language=new Language();
		language.setName(languageName);
		
		languageName = languageName.toLowerCase().replaceAll(" ", "_");
		language.setLangId(languageName);
		
		
		if(id != null){
			language.setId(id);
		}
		
		byte[] bytes;

		if (!file.isEmpty()) {
			bytes = file.getBytes();
			// store file in storage
			BufferedImage src = ImageIO.read(new ByteArrayInputStream(bytes));
			String rootPath = request.getServletContext().getRealPath("/") + rPath;
			System.out.println("rootPath = " + rootPath);
	        File dir = new File(rootPath);
	        if (!dir.exists())
	            dir.mkdirs();
	        String fileName = file.getOriginalFilename();
	        File serverFile = new File(dir.getAbsolutePath()
	                + File.separator + fileName);
			
			
			// File destination = new File("File directory with file name"); //
			// something like C:/Users/tom/Documents/nameBasedOnSomeId.png
			ImageIO.write(src, "png", serverFile);
			// Save the id you have used to create the file name in the DB. You
			// can retrieve the image in future with the ID.
			
			language.setImage(rPath+File.separator+fileName);
			System.out.println(serverFile);
		}
		
		if(language.getId() != 0){
			Language updatedLanguage = languageService.update(language);
			return new ResponseEntity<Language>(updatedLanguage,HttpStatus.OK);
		}
		
		try {
			Long idGenerated = languageService.save(language);
			language.setId(idGenerated);
			return new ResponseEntity<Language>(language,HttpStatus.CREATED);
		} catch (LanguageAlreadyExistsException ex) {
			return new ResponseEntity<Language>(HttpStatus.CONFLICT);
		}
	}
}
