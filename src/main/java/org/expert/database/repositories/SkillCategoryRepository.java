package org.expert.database.repositories;

import java.util.ArrayList;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.expert.database.entities.SkillCategory;
import org.expert.database.utilities.SqlScript;
import org.springframework.stereotype.Repository;

@Repository
public interface SkillCategoryRepository {

    @Select(SqlScript.RS_SKILL_CATEGORY)
    public ArrayList<SkillCategory> findAll();

    @Select(SqlScript.R_SKILL_CATEGORY)
    public SkillCategory findByID(int skill_id);

    @Insert(SqlScript.C_SKILL_CATEGORY)
    public void Insert(SkillCategory skill_category);

    @Update(SqlScript.U_SKILL_CATEGORY)
    public void Update(SkillCategory skill_category);

    @Delete(SqlScript.D_SKILL_CATEGORY)
    public void Delete(int skill_category_id);
}
