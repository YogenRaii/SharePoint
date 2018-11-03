package com.bitMiners.eProgrammerz.controller.cms;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/cms")
public class CmsController {

    @RequestMapping(method = RequestMethod.GET)
    public String getLoginPage(HttpSession session) {
        if (session != null) {
            SecurityContextHolder.getContext().setAuthentication(null);
            session.invalidate();
        }
        return "cms/login";
    }
}
