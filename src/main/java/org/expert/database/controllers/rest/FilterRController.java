package org.expert.database.controllers.rest;

import ch.qos.logback.core.CoreConstants;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@RequestMapping("/rest/filter")
@CrossOrigin
public class FilterRController {
    @Autowired
    private String WS_URL;
    @Autowired
    private HttpHeaders header;
    @Autowired
    private RestTemplate rest;
    
    @RequestMapping(value = {"/skill/findall"}, method = RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> FindeAllSkill() {
        HttpEntity<Object> request = new HttpEntity<Object>(header);
        ResponseEntity<Map> response = rest.exchange("http://192.168.178.137:8081/api/component/get-skill-categories",
                HttpMethod.GET, request, Map.class);
        return new ResponseEntity<Map<String, Object>>(response.getBody(), HttpStatus.OK);
    }
    
    @RequestMapping(value = {"/skill/find-by-catid"}, method = RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> FindeAllSkillByCatId(@PathVariable("cat_id") byte skill_category_id) {
        HttpEntity<Object> request = new HttpEntity<Object>(header);
        ResponseEntity<Map> response = rest.exchange("http://192.168.178.137:8081/api/component/get-skill-categories",
                HttpMethod.GET, request, Map.class);
        return new ResponseEntity<Map<String, Object>>(response.getBody(), HttpStatus.OK);
    }
    
    @RequestMapping(value = {"/skill/category/findall"}, method = RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> FindeAllCategory() {
        HttpEntity<Object> request = new HttpEntity<Object>(header);
        ResponseEntity<Map> response = rest.exchange("http://192.168.178.137:8081/api/component/get-skill-categories",
                HttpMethod.GET, request, Map.class);
        return new ResponseEntity<Map<String, Object>>(response.getBody(), HttpStatus.OK);
    }
       
    /**
     * Province rest
     * @return 
     */
    
    @RequestMapping(value = {"/city/findall"}, method = RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> FindAllProvince() {
        HttpEntity<Object> request = new HttpEntity<Object>(header);
        ResponseEntity<Map> response = rest.exchange("http://192.168.178.137:8081/api/component/get-skill-categories",
                HttpMethod.GET, request, Map.class);
        return new ResponseEntity<Map<String, Object>>(response.getBody(), HttpStatus.OK);
    }
    
    @RequestMapping(value = {"/language/findall"}, method = RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> FindAllLanguage() {
        HttpEntity<Object> request = new HttpEntity<Object>(header);
        ResponseEntity<Map> response = rest.exchange("http://192.168.178.137:8081/api/component/languages",
                HttpMethod.GET, request, Map.class);
        System.out.println("Fuck :"+ WS_URL + "/component/languages");
        return new ResponseEntity<Map<String, Object>>(response.getBody(), HttpStatus.OK);
    }
    
    @RequestMapping(value = {"/position/findall"}, method = RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> FindAllPosition() {
        HttpEntity<Object> request = new HttpEntity<Object>(header);
        ResponseEntity<Map> response = rest.exchange("http://192.168.178.137:8081/api/component/positions",
                HttpMethod.GET, request, Map.class);
        return new ResponseEntity<Map<String, Object>>(response.getBody(), HttpStatus.OK);
    }            
}
