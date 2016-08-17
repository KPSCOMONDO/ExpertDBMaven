package org.expert.database.entities;

import java.util.ArrayList;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

public class AddCategory {
	
	@JsonIgnore
	private int categoryId;
	
	@JsonProperty("CATEGORY STATUS")
	private String status;
	
	@JsonProperty("SKILLS")
	private ArrayList<Skill>skills;
	
	@JsonProperty("DESCRIPTION")
	private String description;
	
	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}	

	public ArrayList<Skill> getSkills() {
		return skills;
	}


	public void setSkills(ArrayList<Skill> skills) {
		this.skills = skills;
	}
	
	public static class Skill{
		
		@JsonProperty("SKILL STATUS")
		private String status;
				
		public String getStatus() {
			return status;
		}

		public void setStatus(String status) {
			this.status = status;
		}
				
	}
	
	public static class UpdateCategory{
		
		@JsonProperty("CATEGORY ID")
		private int id;
		
		@JsonProperty("CATEGORY")
		private String status;
		
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}		
	}
}
