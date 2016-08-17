package org.expert.database.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

public class AddExpertAddress {
	
	@JsonProperty("COMMUNE")
	private String commune="PP";
	
	@JsonProperty("DISTRICT")
	private String district="PP";
	
	@JsonProperty("CITY")
	private String city="PP";
	
	@JsonProperty("COUNTRY")
	private String country="PP";

	public String getCommune() {
		return commune;
	}

	public void setCommune(String commune) {
		this.commune = commune;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
}
