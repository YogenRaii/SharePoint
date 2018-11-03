package com.bitMiners.eProgrammerz.controller;

import com.bitMiners.eProgrammerz.services.LanguageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping({"/", ""})
public class HomeController {

    @Autowired
    private LanguageService languageService;

    @RequestMapping(method = RequestMethod.GET)
    public String getHomePage(Model model) {
        model.addAttribute("languages", languageService.findAll());
        return "home";
    }
}
