package kseeb_controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kseeb_dao.dao;
import kseeb_dto.student_dto;

@WebServlet("/student_insert")
public class insert_student extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	//super.doPost(req, resp);
	String usn=req.getParameter("usn");
	String name=req.getParameter("name");
	String dob=req.getParameter("dob");
	String f_name=req.getParameter("f_name");
	String m_name=req.getParameter("m_name");
	
	String eng=req.getParameter("eng");
	String kan=req.getParameter("kan");
	String maths=req.getParameter("maths");
	String sci=req.getParameter("sci");
	String ss=req.getParameter("ss");
	
	Double eng1=Double.parseDouble(eng);
	Double kan1=Double.parseDouble(kan);
	Double maths1=Double.parseDouble(maths);
	Double sci1=Double.parseDouble(sci);
	Double ss1=Double.parseDouble(ss);
	
	student_dto dto=new student_dto();
	dto.setUsn(usn);
	dto.setName(name);
	dto.setDob(dob);
	dto.setFather_name(f_name);
	dto.setMother_name(m_name);
	dto.setEnglish(eng1);
	dto.setKannada(kan1);
	dto.setMaths(maths1);
	dto.setScience(sci1);
	dto.setSocial_science(ss1);
	
	dao dao=new dao();
	String msg=dao.insert(dto);
	
	HttpSession httpSession=req.getSession();
	httpSession.setAttribute("msg", msg);
	
	
	RequestDispatcher rd=req.getRequestDispatcher("commonpage.jsp");
	rd.include(req, resp);
}
}
