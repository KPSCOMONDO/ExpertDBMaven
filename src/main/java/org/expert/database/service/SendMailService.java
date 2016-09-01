package org.expert.database.service;

import org.springframework.stereotype.Service;

@Service
public interface SendMailService {
    public void sendMaile(String address, String type, String msg);
}
