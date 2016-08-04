package org.expert.database.entities;
public class SkillCategory {
    private byte skill_category_id;
    private String skill_category_status;

    public SkillCategory(byte skill_category_id, String skill_category_status) {
        this.skill_category_id = skill_category_id;
        this.skill_category_status = skill_category_status;
    }

    public SkillCategory() {
    }

    public byte getSkill_category_id() {
        return skill_category_id;
    }

    public void setSkill_category_id(byte skill_category_id) {
        this.skill_category_id = skill_category_id;
    }

    public String getSkill_category_status() {
        return skill_category_status;
    }

    public void setSkill_category_status(String skill_category_status) {
        this.skill_category_status = skill_category_status;
    }
    
}
