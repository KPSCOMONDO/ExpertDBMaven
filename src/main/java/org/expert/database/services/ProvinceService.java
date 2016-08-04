package org.expert.database.services;

import java.util.ArrayList;
import org.expert.database.entities.Province;

public interface ProvinceService {
    public ArrayList<Province> findAll();
    public Province findByID(byte province_id);
    public void Insert(Province province);
    public void Update(Province province);
    public void Delete(int province_id);
}
