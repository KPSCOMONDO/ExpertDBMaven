/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.expert.database.controllers.utilities;

import java.util.Map;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author sokchanny
 */
@Controller
@CrossOrigin
@RequestMapping(value = {"/utility"})
public class utility {
    @RequestMapping(value = {"/sendmail"},method = RequestMethod.POST)
    public ResponseEntity<Map<String, Object>> findExpertAdvance() {
        
//        ResponseEntity<Map> response = rest.exchange(URL, HttpMethod.POST, request, Map.class);
//        return new ResponseEntity<Map<String, Object>>(response.getBody(), HttpStatus.OK);
    }
}
