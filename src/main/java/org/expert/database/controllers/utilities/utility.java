/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.expert.database.controllers.utilities;

import com.sun.org.glassfish.external.statistics.annotations.Reset;
import java.util.HashMap;
import java.util.Map;
import org.expert.database.service.SendMailService;
import org.expert.database.utilities.Sendmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author sokchanny
 */
@Controller
@RequestMapping(value = {"rest/utility"})
public class utility {

    @Autowired
    SendMailService sendMail;
    private Map<String, Object> map;

    @RequestMapping(value = {"/sendmail"}, method = RequestMethod.POST)
    public ResponseEntity<Map<String, Object>> SendMail(@RequestBody Sendmail mail) {
        System.out.print("###" + mail.getSubject() + mail.getTarget() + mail.getText());

        map = new HashMap<String, Object>();
        try {
            sendMail.sendMaile(mail.getTarget(), mail.getSubject(), mail.getText());
            map.put("CODE", "200");
            map.put("MESSAGE", "Success");
            map.put("STATUS", true);
        } catch (Exception ex) {
            map.put("CODE", "303");
            map.put("MESSAGE", "fail");
            map.put("STATUS", false);
            map.put("ERROR", ex.toString());
        }
        return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
    }
}
