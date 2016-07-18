package org.expert.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class homeController {
    @RequestMapping(value={"/", "/home"})
    public String home() {
        return "/fronts/homes/home";
    }
}
