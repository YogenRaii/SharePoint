package com.bitMiners.eProgrammerz.controller.cms;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.bitMiners.eProgrammerz.domain.Chapter;
import com.bitMiners.eProgrammerz.services.ChapterService;
import com.bitMiners.eProgrammerz.services.exceptions.ChapterAlreadyExistsException;

@Controller
@RequestMapping("/cms")
public class CmsController {
	
	@RequestMapping(method=RequestMethod.GET)
	public String getLoginPage(HttpSession session){
		if(session != null){
			SecurityContextHolder.getContext().setAuthentication(null);
			session.invalidate();
		}
		return "cms/login";
	}
}
