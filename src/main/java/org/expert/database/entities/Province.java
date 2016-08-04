package org.expert.database.entities;
public class Province {
    private byte province_id;
    private String province_status;

    public Province(byte province_id, String province_status) {
        this.province_id = province_id;
        this.province_status = province_status;
    }

    public Province() {
    }

    public byte getProvince_id() {
        return province_id;
    }

    public void setProvince_id(byte province_id) {
        this.province_id = province_id;
    }

    public String getProvince_status() {
        return province_status;
    }

    public void setProvince_status(String province_status) {
        this.province_status = province_status;
    }
    
    
}
