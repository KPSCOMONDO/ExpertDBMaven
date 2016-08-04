package org.expert.database.entities;

public class Expert {

    private int expert_id;
    private String expert_first_name;
    private String expert_last_name;
    private String expert_gender;
    private String expert_date_of_birth;
    private byte expert_age;
    private String expert_address;
    private float expert_salary;
    private byte expert_year_experience;
    private byte province_id;
    private String expert_interest;

    public Expert(int expert_id, String expert_first_name, String expert_last_name, String expert_gender, String expert_date_of_birth, byte expert_age, String expert_address, float expert_salary, byte expert_year_experience, byte province_id, String expert_interest) {
        this.expert_id = expert_id;
        this.expert_first_name = expert_first_name;
        this.expert_last_name = expert_last_name;
        this.expert_gender = expert_gender;
        this.expert_date_of_birth = expert_date_of_birth;
        this.expert_age = expert_age;
        this.expert_address = expert_address;
        this.expert_salary = expert_salary;
        this.expert_year_experience = expert_year_experience;
        this.province_id = province_id;
        this.expert_interest = expert_interest;
    }

    public Expert() {
    }

    public int getExpert_id() {
        return expert_id;
    }

    public void setExpert_id(int expert_id) {
        this.expert_id = expert_id;
    }

    public String getExpert_first_name() {
        return expert_first_name;
    }

    public void setExpert_first_name(String expert_first_name) {
        this.expert_first_name = expert_first_name;
    }

    public String getExpert_last_name() {
        return expert_last_name;
    }

    public void setExpert_last_name(String expert_last_name) {
        this.expert_last_name = expert_last_name;
    }

    public String getExpert_gender() {
        return expert_gender;
    }

    public void setExpert_gender(String expert_gender) {
        this.expert_gender = expert_gender;
    }

    public String getExpert_date_of_birth() {
        return expert_date_of_birth;
    }

    public void setExpert_date_of_birth(String expert_date_of_birth) {
        this.expert_date_of_birth = expert_date_of_birth;
    }

    public byte getExpert_age() {
        return expert_age;
    }

    public void setExpert_age(byte expert_age) {
        this.expert_age = expert_age;
    }

    public String getExpert_address() {
        return expert_address;
    }

    public void setExpert_address(String expert_address) {
        this.expert_address = expert_address;
    }

    public float getExpert_salary() {
        return expert_salary;
    }

    public void setExpert_salary(float expert_salary) {
        this.expert_salary = expert_salary;
    }

    public byte getExpert_year_experience() {
        return expert_year_experience;
    }

    public void setExpert_year_experience(byte expert_year_experience) {
        this.expert_year_experience = expert_year_experience;
    }

    public byte getProvince_id() {
        return province_id;
    }

    public void setProvince_id(byte province_id) {
        this.province_id = province_id;
    }

    public String getExpert_interest() {
        return expert_interest;
    }

    public void setExpert_interest(String expert_interest) {
        this.expert_interest = expert_interest;
    }

}
