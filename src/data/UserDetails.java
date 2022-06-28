package com.spring.boot.project.data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="USER_DETAILS")
public class UserDetails {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String firstname;
	private String lastname;
	private long number;
	private String email;
	private String password;
	private String date_of_birth;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public long getNumber() {
		return number;
	}
	public void setNumber(long number) {
		this.number = number;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDateofbirth() {
		return date_of_birth;
	}
	public void setDateofbirth(String date_of_birth) {
		this.date_of_birth = date_of_birth;
	}
	@Override
	public String toString() {
		return "UserDetails [id=" + id + ", firstname=" + firstname + ", lastname=" + lastname + ", number=" + number
				+ ", email=" + email + ", password=" + password + ", dateofbirth=" + date_of_birth + "]";
	}
}
