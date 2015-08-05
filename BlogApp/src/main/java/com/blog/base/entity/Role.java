package com.blog.base.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Role {
	@Id
	@GeneratedValue
	private Long id;
	
	private RoleStatus name;

	public RoleStatus getName() {
		return name;
	}

	public void setName(RoleStatus name) {
		this.name = name;
	}

}
