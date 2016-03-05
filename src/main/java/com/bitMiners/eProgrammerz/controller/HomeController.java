package com.bitMiners.eProgrammerz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bitMiners.eProgrammerz.domain.Message;
import com.bitMiners.eProgrammerz.services.LanguageService;

@Controller
@RequestMapping({"/",""})
public class HomeController {
	
	@Autowired
	private LanguageService languageService;

	@RequestMapping(method=RequestMethod.GET)
	public String getHomePage(Model model){
		model.addAttribute("languages", languageService.findAll());
		return "home";
	}
}
