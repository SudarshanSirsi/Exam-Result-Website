package kseeb_dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import kseeb_dto.professor_login_dto;
import kseeb_dto.student_dto;



public class dao {
	EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("dev");
	EntityManager entityManager=entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction=entityManager.getTransaction();
	
	public String insert(student_dto dto)
	{
		entityTransaction.begin();
		entityManager.persist(dto);
		entityTransaction.commit();
		
		return "Data Inserted Successfully";
	}
	
	public String insert_professor(professor_login_dto dto)
	{
		entityTransaction.begin();
		entityManager.persist(dto);
		entityTransaction.commit();
		
		return "Data Inserted";
	} 
	
	public student_dto update(String usn)
	{
		student_dto dto=entityManager.find(student_dto.class, usn);
		return dto;
	}
	
	public String delete(String usn)
	{
		student_dto dto=entityManager.find(student_dto.class, usn);
		if(dto!=null)
		{
			entityTransaction.begin();
			entityManager.remove(dto);
			entityTransaction.commit();
			
			return "Data has been Removed";
		}
		return "USN not found to perform delete operation";
	}
	
	public List<student_dto> fetchall()
	{
		Query query=entityManager.createQuery("select a from student_dto a", student_dto.class);
		List<student_dto> l1=query.getResultList();
		return l1;
	}
	
	public student_dto fetchbyUSN(String usn)
	{
		student_dto dto=entityManager.find(student_dto.class, usn);
		return dto;
	}
	
	public professor_login_dto validate(String email)
	{
		professor_login_dto dto=entityManager.find(professor_login_dto.class, email);
			return dto;
	}
	
	public String updateurl(String usn, String name, String dob, String fname, String mname, double eng, double kan, double maths, double science, double socialscience)
	{
		student_dto dto=entityManager.find(student_dto.class, usn);
		if(dto!=null)
		{
			dto.setName(name);
			dto.setDob(dob);
			dto.setFather_name(fname);
			dto.setMother_name(mname);
			dto.setEnglish(eng);
			dto.setKannada(kan);
			dto.setMaths(maths);
			dto.setScience(science);
			dto.setSocial_science(socialscience);
			
			entityTransaction.begin();
			entityManager.persist(dto);
			entityTransaction.commit();
			
			return "Data Updated Successfully";
		}
		return "Details cannot be Updated, Invalid USN";
	}
}
