package org.expert.database.services.implement;

import java.util.ArrayList;
import org.expert.database.entities.Province;
import org.expert.database.repositories.ProvinceRepository;
import org.expert.database.security.*;
import org.expert.database.services.ProvinceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProvincelServiceImpl implements ProvinceService{
    @Autowired
    private  ProvinceRepository provinceRepository;
    @Override
    public ArrayList<Province> findAll() {
        return provinceRepository.findAll();
    }

    @Override
    public Province findByID(byte privince_id) {
        return provinceRepository.findByID(privince_id);
    }

    @Override
    public void Insert(Province province) {
        provinceRepository.Insert(province);
    }

    @Override
    public void Update(Province province) {
        provinceRepository.Update(province);
    }

    @Override
    public void Delete(int province_id) {
        provinceRepository.Delete(province_id);
    }  
    
}
