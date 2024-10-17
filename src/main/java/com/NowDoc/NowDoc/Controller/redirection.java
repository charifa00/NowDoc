package com.NowDoc.NowDoc.Controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.view.RedirectView;

    @Controller
    public class redirection {
        @GetMapping("/")
        public RedirectView redirectToMapage() {
            return new RedirectView("/ma");
        }
    }


