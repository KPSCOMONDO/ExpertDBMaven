package org.expert.database.services;

import java.util.ArrayList;
import org.expert.database.entities.Skill;

public interface SkillService {
    public ArrayList<Skill> findAll();
    public ArrayList<Skill> findAllByCatId(byte skill_category_id);
    public Skill findByID(int skill_id);
    public void Insert(Skill skill);
    public void Update(Skill skill);
    public void Delete(int skill_id);
}
