package org.expert.company;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class companyController {
    @RequestMapping(value={"/company"})
    public String company(){
        return "/fronts/companies/company";
    }
    @RequestMapping(value={"/company/detail"})
    public String detail(){
        return "/fronts/companies/detail";
    }
}
