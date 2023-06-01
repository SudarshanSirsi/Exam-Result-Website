package kseeb_dto;


import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="professor")
public class professor_login_dto {
	
	private String name;
	@Id
	private String email;
	private String pwd;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	
	

}
