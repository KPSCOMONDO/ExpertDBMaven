package org.expert.database.services.implement;

import java.util.ArrayList;
import org.expert.database.entities.Skill;
import org.expert.database.repositories.SkillRepository;
import org.expert.database.services.SkillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SkillServiceImpl implements SkillService{
    @Autowired
    private SkillRepository skillRepository;
    @Override
    public ArrayList<Skill> findAll() {
        return skillRepository.findAll();
    }

    @Override
    public Skill findByID(int skill_id) {
        return skillRepository.findByID(skill_id);
    }

    @Override
    public void Insert(Skill skill) {
        skillRepository.Insert(skill);
    }

    @Override
    public void Update(Skill skill) {
        skillRepository.Update(skill);
    }

    @Override
    public void Delete(int skill_id) {
        skillRepository.Delete(skill_id);
    }

    
}
