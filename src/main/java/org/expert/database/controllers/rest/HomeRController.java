package org.expert.database.controllers.rest;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.expert.database.entities.Skill;
import org.expert.database.services.SkillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/skill")
public class HomeRController {

    @Autowired
    private SkillService skillService;

    @RequestMapping(value = {"/findall"}, method = RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> findAll() {
        Map<String, Object> map = new HashMap<String, Object>();
        try{
            ArrayList<Skill> skills=skillService.findAll();            
            if(skills!=null){
                map.put("STATUS", true);
                map.put("MESSAGE", "Skill found");
                map.put("DATA", skills);
            }
        }
        catch(Exception ex){
            map.put("STATUS",false);
            map.put("MESSAGE", "Skill not found");
        }
        return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
    }
}
