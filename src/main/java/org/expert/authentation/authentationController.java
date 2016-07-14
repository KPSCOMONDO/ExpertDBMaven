package org.expert.authentation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class authentationController {
    @RequestMapping(value={"login"})
    public String login(){
        return "/fronts/authentations/login";
    }
}
