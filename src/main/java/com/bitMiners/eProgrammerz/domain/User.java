package com.bitMiners.eProgrammerz.domain;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="User")
public class User implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 3422865380258587823L;
	@Id @GeneratedValue
	private Long id;
	
	@NotNull @NotEmpty
	private String firstName;
	@NotNull @NotEmpty
	private String lastName;
	@Email @NotNull @NotEmpty
	private String email;
	@NotNull @NotEmpty
	private String password;
	
	@Enumerated(EnumType.STRING)
	private Role role;
	
	@ManyToMany(fetch=FetchType.EAGER)
	@JoinTable
	  (
	      name="Writer_language",
	      joinColumns=@JoinColumn(name="writer_id", referencedColumnName="id"),
	      inverseJoinColumns=@JoinColumn(name="language_id", referencedColumnName="id", unique=false)
	  )
	private List<Language> languages;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
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
	public List<Language> getLanguages() {
		return languages;
	}
	public void setLanguages(List<Language> languages) {
		this.languages = languages;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	
	@Override
	public String toString(){
		return "["+id+", "+ firstName+", "+lastName+", "+email+", "+password+", "+languages+"]";
	}

}
