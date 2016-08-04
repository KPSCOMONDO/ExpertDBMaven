package org.expert.database.repositories;

import java.util.ArrayList;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.expert.database.entities.Skill;
import org.expert.database.utilities.SqlScript;
import org.springframework.stereotype.Repository;

@Repository
public interface SkillRepository {

//    @Results(value = {        
//        @Result(property = "skill_category.skill_category_id", column = "skill_category_id"),
//        @Result(property = "skill_category.skill_category_status", column = "skill_category_status")
//    })
    @Select(SqlScript.RS_SKILL)
    public ArrayList<Skill> findAll();
    @Select(SqlScript.RS_SKILL_BY_CAT)
    public ArrayList<Skill> findAllByCatId(byte skill_category_id);

    @Select(SqlScript.R_SKILL)
    public Skill findByID(int skill_id);

    @Insert(SqlScript.C_SKILL)
    public void Insert(Skill skill);

    @Update(SqlScript.U_SKILL)
    public void Update(Skill skill);

    @Delete(SqlScript.D_SKILL)
    public void Delete(int skill_id);
}
