package org.expert.database.repositories;

import java.util.ArrayList;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.expert.database.entities.Language;
import org.expert.database.utilities.SqlScript;
import org.springframework.stereotype.Repository;

@Repository
public interface LanguageRepository {       
    @Select(SqlScript.RS_LANGUAGE)
    public ArrayList<Language> findAll();
    @Select(SqlScript.R_LANGUAGE)
    public Language findByID(int language_id);
    @Insert(SqlScript.C_LANGUAGE)
    public void Insert(Language language);
    @Update(SqlScript.U_LANGUAGE)
    public void Update(Language language);
    @Delete(SqlScript.D_LANGUAGE)
    public void Delete(int language_id);
}
