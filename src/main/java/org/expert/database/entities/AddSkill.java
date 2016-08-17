package org.expert.database.entities;
import com.fasterxml.jackson.annotation.JsonProperty;

public class AddSkill {

	@JsonProperty("SKILL STATUS")
	private String status;
	
	@JsonProperty("CATEGORY ID")
	private int categoryId;

	public AddSkill(String status, int categoryId) {
		super();
		this.status = status;
		this.categoryId = categoryId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	
}
