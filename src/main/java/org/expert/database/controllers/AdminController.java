package org.expert.database.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value={"/admin"})
public class AdminController {
    
    @RequestMapping(value={"/",""})
    public String admin(){
        return "/backs/admins/admin";
    }
    
    @RequestMapping(value = {"/expert/list"})
    public String expertList(){
        return "/backs/admins/expert-list";
    }
    
    @RequestMapping(value = {"/skill"})
    public String skill(){
        return "/backs/admins/expert-list";
    }
    
    @RequestMapping(value = {"/expert/skill/category"})
    public String skillCategory(){
        return "/backs/admins/skill-category-list";
    }
    
    @RequestMapping(value = {"/expert/province"})
    public String province(){
        return "/backs/admins/province-list";
    }
}
