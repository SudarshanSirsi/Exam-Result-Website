package kseeb_controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kseeb_dao.dao;
import kseeb_dto.professor_login_dto;

@WebServlet("/professorlogin")
public class login_controller extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	//super.doGet(req, resp);
	
	String email=req.getParameter("email");
	String pwd=req.getParameter("pwd");
	
	dao dao=new dao();
	professor_login_dto dto=dao.validate(email);
	if(dto!=null)
	{
		if(dto.getPwd().equals(pwd))
		{
			RequestDispatcher rd=req.getRequestDispatcher("MultipleOperation.html");
			rd.forward(req, resp);
		}
		else
			resp.getWriter().print("Invalid Password");
			resp.setContentType("text/html");
			RequestDispatcher rd=req.getRequestDispatcher("ProfessorLogin.html");
			rd.include(req, resp);
	}
	else
	{
		resp.getWriter().print("You are not authorised, please get your id registered in the office");
	}
}
}