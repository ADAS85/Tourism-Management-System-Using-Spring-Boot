package com.spring.boot.project.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
	
@Entity
@Table(name="user_complains")
public class UserComplains 
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@Column(name="customer_name")
	private String name;
	@Column(name="complaint")
	private String complaint;

	public String getComplaint() 
	{
		return complaint;
	}

	public void setComplaint(String complaint) 
	{
		this.complaint = complaint;
	}

	public int getId() 
	{
		return id;
	}
	
	public void setId(int id) 
	{
		this.id = id;
	}
	
	public String getName() 
	{
		return name;
	}
	
	public void setName(String name) 
	{
		this.name = name;
	}
}
