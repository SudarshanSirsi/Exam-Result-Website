package kseeb_dto;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class student_dto {
	@Override
	public String toString() {
		return "student_dto [usn=" + usn + ", name=" + name + ", dob=" + dob + ", father_name=" + father_name
				+ ", mother_name=" + mother_name + ", english=" + english + ", kannada=" + kannada + ", maths=" + maths
				+ ", science=" + science + ", social_science=" + social_science + "]";
	}
	@Id
	private String usn;
	private String name;
	private String dob;
	private String father_name;
	private String mother_name;
	
	private double english;
	private double kannada;
	private double maths;
	private double science;
	private double social_science;
	public String getUsn() {
		return usn;
	}
	public void setUsn(String usn) {
		this.usn = usn;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getFather_name() {
		return father_name;
	}
	public void setFather_name(String father_name) {
		this.father_name = father_name;
	}
	public String getMother_name() {
		return mother_name;
	}
	public void setMother_name(String mother_name) {
		this.mother_name = mother_name;
	}
	public double getEnglish() {
		return english;
	}
	public void setEnglish(double english) {
		this.english = english;
	}
	public double getKannada() {
		return kannada;
	}
	public void setKannada(double kannada) {
		this.kannada = kannada;
	}
	public double getMaths() {
		return maths;
	}
	public void setMaths(double maths) {
		this.maths = maths;
	}
	public double getScience() {
		return science;
	}
	public void setScience(double science) {
		this.science = science;
	}
	public double getSocial_science() {
		return social_science;
	}
	public void setSocial_science(double social_science) {
		this.social_science = social_science;
	}
	
	

}
