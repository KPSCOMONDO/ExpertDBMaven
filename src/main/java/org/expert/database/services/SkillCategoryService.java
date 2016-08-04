package org.expert.database.services;

import java.util.ArrayList;
import org.expert.database.entities.SkillCategory;

public interface SkillCategoryService {
    public ArrayList<SkillCategory> findAll();
    public SkillCategory findByID(byte skill_category_id);
    public void Insert(SkillCategory skill_category);
    public void Update(SkillCategory skill_category);
    public void Delete(int skill_category_id);
}
