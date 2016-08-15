package org.expert.database.controllers.rest;


import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
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

    @RequestMapping(value = {"/skill/category/findall"}, method = RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> FindeAllCategory() {
        HttpEntity<Object> request = new HttpEntity<Object>(header);
        header.set("Accept", MediaType.APPLICATION_JSON_VALUE);
        String URL = WS_URL + "/component/get-skill-categories";
        ResponseEntity<Map> response = rest.exchange(URL, HttpMethod.GET, request, Map.class);
        return new ResponseEntity<Map<String, Object>>(response.getBody(), HttpStatus.OK);
    }

    @RequestMapping(value = {"/city/findall"}, method = RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> FindAllProvince() {
        HttpEntity<Object> request = new HttpEntity<Object>(header);
        header.set("Accept", MediaType.APPLICATION_JSON_VALUE);
        String URL = WS_URL + "/component/provinces";
        ResponseEntity<Map> response = rest.exchange(URL, HttpMethod.GET, request, Map.class);
        return new ResponseEntity<Map<String, Object>>(response.getBody(), HttpStatus.OK);
    }

    @RequestMapping(value = {"/language/findall"}, method = RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> FindAllLanguage() {
        HttpEntity<Object> request = new HttpEntity<Object>(header);
        header.set("Accept", MediaType.APPLICATION_JSON_VALUE);
        String URL = WS_URL + "/component/languages";
        ResponseEntity<Map> response = rest.exchange(URL, HttpMethod.GET, request, Map.class);
        return new ResponseEntity<Map<String, Object>>(response.getBody(), HttpStatus.OK);
    }

    @RequestMapping(value = {"/position/findall"}, method = RequestMethod.GET)
    public ResponseEntity<Map<String, Object>> FindAllPosition() {
        HttpEntity<Object> request = new HttpEntity<Object>(header);
        header.set("Accept", MediaType.APPLICATION_JSON_VALUE);
        String URL = WS_URL + "/component/positions";
        ResponseEntity<Map> response = rest.exchange(URL, HttpMethod.GET, request, Map.class);
        return new ResponseEntity<Map<String, Object>>(response.getBody(), HttpStatus.OK);
    }

}
