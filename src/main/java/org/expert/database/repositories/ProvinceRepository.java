package org.expert.database.repositories;

import java.util.ArrayList;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.expert.database.entities.Province;
import org.expert.database.utilities.SqlScript;
import org.springframework.stereotype.Repository;

@Repository
public interface ProvinceRepository {        
    @Select(SqlScript.RS_PROVINCE)
    public ArrayList<Province> findAll();
    @Select(SqlScript.R_PROVINCE)
    public Province findByID(byte province_id);
    @Insert(SqlScript.C_PROVINCE)
    public void Insert(Province province);
    @Update(SqlScript.U_PROVINCE)
    public void Update(Province province);
    @Delete(SqlScript.D_PROVINCE)
    public void Delete(int province_id);
}
