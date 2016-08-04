package org.expert.database.services.implement;

import java.util.ArrayList;
import org.expert.database.entities.SkillCategory;
import org.expert.database.repositories.SkillCategoryRepository;
import org.expert.database.services.SkillCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SkillCategoryServiceImpl implements SkillCategoryService{
    @Autowired
    private SkillCategoryRepository skillCategoryRepository;

    @Override
    public ArrayList<SkillCategory> findAll() {
        return skillCategoryRepository.findAll();
    }

    @Override
    public SkillCategory findByID(byte skill_category_id) {
        return skillCategoryRepository.findByID(skill_category_id);
    }

    @Override
    public void Insert(SkillCategory skill_category) {
        skillCategoryRepository.Insert(skill_category);
    }

    @Override
    public void Update(SkillCategory skill_category) {
        skillCategoryRepository.Update(skill_category);
    }

    @Override
    public void Delete(int skill_category_id) {
        skillCategoryRepository.Delete(skill_category_id);
    }        
}
