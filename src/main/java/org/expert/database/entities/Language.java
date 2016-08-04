package org.expert.database.entities;

public class Language {
    private byte language_id;
    private String language_status;

    public Language(byte language_id, String language_status) {
        this.language_id = language_id;
        this.language_status = language_status;
    }

    public Language() {
    }

    public byte getLanguage_id() {
        return language_id;
    }

    public void setLanguage_id(byte language_id) {
        this.language_id = language_id;
    }

    public String getLanguage_status() {
        return language_status;
    }

    public void setLanguage_status(String language_status) {
        this.language_status = language_status;
    }
    
}
