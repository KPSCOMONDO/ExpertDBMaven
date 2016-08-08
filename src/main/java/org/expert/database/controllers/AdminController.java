package org.expert.database.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value={"/admin"})
public class AdminController {
    
    @RequestMapping(value={"/",""})
    public String Admin(){
        return "/backs/admins/admin";
    }
    
    @RequestMapping(value = {"/expert/list"})
    public String ExpertList(){
        return "/backs/admins/experts/expert";
    }
    
    @RequestMapping(value = {"/skill"})
    public String Skill(){
        return "/backs/admins/skills/skill";
    }
    
    @RequestMapping(value = {"/expert/skill/category"})
    public String SkillCategory(){
        return "/backs/admins/skillcategories/skill-category";
    }
    
    @RequestMapping(value = {"/expert/province"})
    public String Province(){
        return "/backs/admins/provinces/province";
    }
    
    @RequestMapping(value={"/language"})
    public String Language(){
    	return "/backs/admins/languages/language";
    }
    
    @RequestMapping(value={"/Level"})
    public String Level(){
    	return "/backs/admins/levels/level";
    }
    
    @RequestMapping(value={"/position"})
    public String Position(){
    	return "/backs/admins/positions/position";
    }
}
