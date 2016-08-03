package org.expert.database.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AuthentationController {
    @RequestMapping(value={"/login"})
    public String login(){
        return "/fronts/authentations/login";
    }
}
