package org.expert.database.entities;
public class Skill {
    private int skill_id;
    private String skill_name;
    private byte skill_category_id;
    public int getSkill_id() {
        return skill_id;
    }

    public Skill(int skill_id, String skill_name, byte skill_category_id) {
        this.skill_id = skill_id;
        this.skill_name = skill_name;
        this.skill_category_id = skill_category_id;
    }

    public byte getSkill_category_id() {
        return skill_category_id;
    }

    public void setSkill_category_id(byte skill_category_id) {
        this.skill_category_id = skill_category_id;
    }



    public void setSkill_id(int skill_id) {
        this.skill_id = skill_id;
    }

    public String getSkill_name() {
        return skill_name;
    }

    public void setSkill_name(String skill_name) {
        this.skill_name = skill_name;
    }

    public Skill(int skill_id, String skill_name) {
        this.skill_id = skill_id;
        this.skill_name = skill_name;
    }

    public Skill() {
    }
}
