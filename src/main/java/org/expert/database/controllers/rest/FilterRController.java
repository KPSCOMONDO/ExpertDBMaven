package org.expert.database.controllers.rest;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.expert.database.entities.Language;
import org.expert.database.entities.Province;
import org.expert.database.entities.Skill;
import org.expert.database.entities.SkillCategory;
import org.expert.database.services.LanguageService;
import org.expert.database.services.ProvinceService;
import org.expert.database.services.SkillCategoryService;
import org.expert.database.services.SkillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class FilterRController {

    @Autowired
    private SkillService skillService;
    @Autowired
    private SkillCategoryService skillCategorySevice;
    @Autowired
    private ProvinceService provinceService;
    @Autowired
    private LanguageService languageService;
    /**
     * Skill and it Category 
     */
    @RequestMapping(value = {"/skill/findall"}, method = RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> FindeAllSkill() {
        Map<String, Object> map = new HashMap<String, Object>();
        try{
            ArrayList<Skill> skills=skillService.findAll();            
            if(skills!=null){
                map.put("STATUS", true);
                map.put("MESSAGE", "SUCCESS");
                map.put("DATA", skills);
            }
        }
        catch(Exception ex){
            map.put("STATUS",false);
            map.put("MESSAGE", "FAILE");
        }
        return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
    }
    
    @RequestMapping(value = {"/skill/findbycatid/{cat_id}"}, method = RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> FindeAllSkillByCatId(@PathVariable("cat_id") byte skill_category_id) {
        Map<String, Object> map = new HashMap<String, Object>();
        try{
            ArrayList<Skill> skills=skillService.findAllByCatId(skill_category_id);            
            if(skills!=null){
                map.put("STATUS", true);
                map.put("MESSAGE", "SUCCESS");
                map.put("DATA", skills);
            }
        }
        catch(Exception ex){
            map.put("STATUS",false);
            map.put("MESSAGE", "FAILE");
        }
        return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
    }
    @RequestMapping(value = {"/skill/skillcategory/findall"}, method = RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> FindeAllCategory() {
        Map<String, Object> map = new HashMap<String, Object>();
        try{
            ArrayList<SkillCategory> skillCategory=skillCategorySevice.findAll();            
            if(skillCategory!=null){
                map.put("STATUS", true);
                map.put("MESSAGE", "SUCCESS");
                map.put("DATA", skillCategory);
            }
        }
        catch(Exception ex){
            map.put("STATUS",false);
            map.put("MESSAGE", "FAILE");
        }
        return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
    }
    
    
    /**
     * Province rest
     * @return 
     */
    
    @RequestMapping(value = {"/province/findall"}, method = RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> FindAllProvince() {
        Map<String, Object> map = new HashMap<String, Object>();
        try{
            ArrayList<Province> privinces=provinceService.findAll();            
            if(privinces!=null){
                map.put("STATUS", true);
                map.put("MESSAGE", "SUCCESS");
                map.put("DATA", privinces);
            }
        }
        catch(Exception ex){
            map.put("STATUS",false);
            map.put("MESSAGE", "FAILE");
        }
        return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
    }
    @RequestMapping(value = {"/language/findall"}, method = RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> FindAllLanguage() {
        Map<String, Object> map = new HashMap<String, Object>();
        try{
            ArrayList<Language> languages=languageService.findAll();            
            if(languages!=null){
                map.put("STATUS", true);
                map.put("MESSAGE", "SUCCESS");
                map.put("DATA", languages);
            }
        }
        catch(Exception ex){
            map.put("STATUS",false);
            map.put("MESSAGE", "FAILE");
        }
        return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
    }
}
