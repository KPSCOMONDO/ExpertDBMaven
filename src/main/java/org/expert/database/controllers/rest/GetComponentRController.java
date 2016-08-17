package org.expert.database.controllers.rest;

import java.util.Map;
import org.expert.database.entities.AddCategory;
import org.expert.database.entities.AddLanguage;
import org.expert.database.entities.AddSkill;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

/**
 *
 * @author sokchanny
 */
@RestController
@RequestMapping(value = {"/rest/component"}, method = RequestMethod.GET)
public class GetComponentRController {

    @Autowired
    private String WS_URL;
    @Autowired
    private HttpHeaders header;
    @Autowired
    private RestTemplate rest;

    // find only skill category
    @RequestMapping(value = {"/skill/category/findall"})
    public ResponseEntity<Map<String, Object>> FindeAllCategory() {
        HttpEntity<Object> request = new HttpEntity<Object>(header);
        header.set("Accept", MediaType.APPLICATION_JSON_VALUE);
        String URL = WS_URL + "/component/all-categories";
        ResponseEntity<Map> response = rest.exchange(URL, HttpMethod.GET, request, Map.class);
        return new ResponseEntity<Map<String, Object>>(response.getBody(), HttpStatus.OK);
    }

    // find all category and all in sub skill 
    @RequestMapping(value = {"/skill/category/skill/findall"})
    public ResponseEntity<Map<String, Object>> FindeAllCategorySkill() {
        HttpEntity<Object> request = new HttpEntity<Object>(header);
        header.set("Accept", MediaType.APPLICATION_JSON_VALUE);
        String URL = WS_URL + "/component/skill-categories";
        ResponseEntity<Map> response = rest.exchange(URL, HttpMethod.GET, request, Map.class);
        return new ResponseEntity<Map<String, Object>>(response.getBody(), HttpStatus.OK);
    }
    
    @RequestMapping(value = {"/skill/findall-by-catid/{catId}"})
    public ResponseEntity<Map<String, Object>> FindSkillByCatId(@PathVariable("catId")int catId) {
        HttpEntity<Object> request = new HttpEntity<Object>(header);
        header.set("Accept", MediaType.APPLICATION_JSON_VALUE);
        String URL = WS_URL + "//levels";
        ResponseEntity<Map> response = rest.exchange(URL, HttpMethod.GET, request, Map.class);
        return new ResponseEntity<Map<String, Object>>(response.getBody(), HttpStatus.OK);
    }

    @RequestMapping(value = {"/location/findall"})
    public ResponseEntity<Map<String, Object>> FindAllProvince() {
        HttpEntity<Object> request = new HttpEntity<Object>(header);
        header.set("Accept", MediaType.APPLICATION_JSON_VALUE);
        String URL = WS_URL + "/component/locations";
        ResponseEntity<Map> response = rest.exchange(URL, HttpMethod.GET, request, Map.class);
        return new ResponseEntity<Map<String, Object>>(response.getBody(), HttpStatus.OK);
    }

    @RequestMapping(value = {"/language/findall"})
    public ResponseEntity<Map<String, Object>> FindAllLanguage() {
        HttpEntity<Object> request = new HttpEntity<Object>(header);
        header.set("Accept", MediaType.APPLICATION_JSON_VALUE);
        String URL = WS_URL + "/component/languages";
        ResponseEntity<Map> response = rest.exchange(URL, HttpMethod.GET, request, Map.class);
        return new ResponseEntity<Map<String, Object>>(response.getBody(), HttpStatus.OK);
    }

    @RequestMapping(value = {"/position/findall"})
    public ResponseEntity<Map<String, Object>> FindAllPosition() {
        HttpEntity<Object> request = new HttpEntity<Object>(header);
        header.set("Accept", MediaType.APPLICATION_JSON_VALUE);
        String URL = WS_URL + "/component/positions";
        ResponseEntity<Map> response = rest.exchange(URL, HttpMethod.GET, request, Map.class);
        return new ResponseEntity<Map<String, Object>>(response.getBody(), HttpStatus.OK);
    }

    @RequestMapping(value = {"/level/findall"})
    public ResponseEntity<Map<String, Object>> FindAllLevel() {
        HttpEntity<Object> request = new HttpEntity<Object>(header);
        header.set("Accept", MediaType.APPLICATION_JSON_VALUE);
        String URL = WS_URL + "/component/levels";
        ResponseEntity<Map> response = rest.exchange(URL, HttpMethod.GET, request, Map.class);
        return new ResponseEntity<Map<String, Object>>(response.getBody(), HttpStatus.OK);
    }

}
