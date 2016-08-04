package org.expert.database.entities;
public class ExpertContact {
    private int contact_id;
    private int expert_id;
    private String expert_email;
    private String expert_phone;
    private String expert_linke_in;
    private String expert_website;

    public int getContact_id() {
        return contact_id;
    }

    public void setContact_id(int contact_id) {
        this.contact_id = contact_id;
    }

    public int getExpert_id() {
        return expert_id;
    }

    public void setExpert_id(int expert_id) {
        this.expert_id = expert_id;
    }

    public String getExpert_email() {
        return expert_email;
    }

    public void setExpert_email(String expert_email) {
        this.expert_email = expert_email;
    }

    public String getExpert_phone() {
        return expert_phone;
    }

    public void setExpert_phone(String expert_phone) {
        this.expert_phone = expert_phone;
    }

    public String getExpert_linke_in() {
        return expert_linke_in;
    }

    public void setExpert_linke_in(String expert_linke_in) {
        this.expert_linke_in = expert_linke_in;
    }

    public String getExpert_website() {
        return expert_website;
    }

    public void setExpert_website(String expert_website) {
        this.expert_website = expert_website;
    }

    public ExpertContact(int contact_id, int expert_id, String expert_email, String expert_phone, String expert_linke_in, String expert_website) {
        this.contact_id = contact_id;
        this.expert_id = expert_id;
        this.expert_email = expert_email;
        this.expert_phone = expert_phone;
        this.expert_linke_in = expert_linke_in;
        this.expert_website = expert_website;
    }

    public ExpertContact() {
    }

}
