package org.expert.database.repositories;

import java.util.ArrayList;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.expert.database.entities.Skill;
import org.springframework.stereotype.Repository;

@Repository
public interface SkillRepository {
    final String C_SKILL = "INSER INTO exp_skills (skill_id,skill_name) VALUES(#{skill_id},#{skill_name})";
    final String R_SKILL="SELECT skill_id,skill_name FROM exp_skills WHERE skill_id=#{skill_id}";
    final String RS_SKILL="SELECT skill_id,skill_name FROM exp_skills";
    final String D_SKILL="DELETE FROM exp_skills WHERE skill_id=#{skill_id}";
    final String U_SKILL="UPDATE exp_skills SET skill_name=#{skill_name} WHERE skill_id=#{skill_id}";
    
    @Select(RS_SKILL)
    public ArrayList<Skill> findAll();
    @Select(R_SKILL)
    public Skill findByID(int skill_id);
    @Insert(C_SKILL)
    public void Insert(Skill skill);
    @Update(U_SKILL)
    public void Update(Skill skill);
    @Delete(D_SKILL)
    public void Delete(int skill_id);
}
