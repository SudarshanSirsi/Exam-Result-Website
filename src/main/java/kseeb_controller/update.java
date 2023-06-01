package kseeb_controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kseeb_dao.dao;
import kseeb_dto.student_dto;

@WebServlet("/update")
public class update extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	//super.doGet(req, resp);
	String usn=req.getParameter("usn");
		
	dao dao=new dao();
	student_dto dto= dao.update(usn);
	if(dto==null)
	{
		String msg="Cannot update, because USN is invalid";
		HttpSession httpSession=req.getSession();
		httpSession.setAttribute("msg", msg);
		
		RequestDispatcher rd=req.getRequestDispatcher("commonpage.jsp");
		rd.include(req, resp);
	}
	else
	{
		ArrayList l1=new ArrayList<>();
		l1.add(dto.getUsn());
		l1.add(dto.getName());
		l1.add(dto.getDob());
		l1.add(dto.getFather_name());
		l1.add(dto.getMother_name());
		l1.add(dto.getEnglish());
		l1.add(dto.getKannada());
		l1.add(dto.getMaths());
		l1.add(dto.getScience());
		l1.add(dto.getSocial_science());
	
		req.setAttribute("studentrow", l1);
	
		RequestDispatcher rd=req.getRequestDispatcher("update.jsp");
		rd.include(req, resp);
	}
}
}
