package org.expert.expert;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class expertController {
    @RequestMapping({"/expert/detail"})
    public String detail() {
        return "/fronts/experts/detail";
    }
}