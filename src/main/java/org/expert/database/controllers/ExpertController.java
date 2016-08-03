package org.expert.database.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ExpertController {
    @RequestMapping(value={"/expert/detail"})
    public String detail() {
        return "/fronts/experts/detail";
    }
    @RequestMapping(value={"/expert"})
    public String expert() {
        return "/fronts/experts/expert";
    }
}