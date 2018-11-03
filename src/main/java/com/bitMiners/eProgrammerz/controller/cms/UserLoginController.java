package com.bitMiners.eProgrammerz.controller.cms;

import com.bitMiners.eProgrammerz.domain.User;
import com.bitMiners.eProgrammerz.services.LanguageService;
import com.bitMiners.eProgrammerz.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/cms")
public class UserLoginController {
    @Autowired
    private UserService userservice;

    @Autowired
    private LanguageService languageService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String getLoginPage(HttpSession session) {
        if (session != null) {
            SecurityContextHolder.getContext().setAuthentication(null);
            session.invalidate();
        }
        return "cms/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String verifylogin(@RequestParam String username,
                              @RequestParam String password, HttpSession session, Model model) {
        System.out.println(username + " " + password + "----------------------------");
        User user = userservice.loginUser(username, password);
        if (user == null) {
            model.addAttribute("loginError", "Invalid UserName or password.");
            return "cms/login";
        }
        session.setAttribute("loginUser", user);
        return "redirect:/cms/loginsuccess";

    }

    @RequestMapping(value = "/loginsuccess", method = RequestMethod.GET)
    public String loginSuccess(HttpSession session, Model model) {
        if (session.getAttribute("loginUser") == null) {
            return "cms/login";
        }
        model.addAttribute("languages", languageService.findAll());
        return "cms/dashBoard";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(Model model, SessionStatus session) {
        SecurityContextHolder.getContext().setAuthentication(null);
        session.setComplete();
        return "cms/login";
    }

}
