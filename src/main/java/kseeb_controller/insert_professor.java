package kseeb_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kseeb_dao.dao;
import kseeb_dto.professor_login_dto;

@WebServlet("/professor_insert")
public class insert_professor extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doPost(req, resp);
		
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String pwd=req.getParameter("pwd");
		
		professor_login_dto dto=new professor_login_dto();
		dto.setName(name);
		dto.setEmail(email);
		dto.setPwd(pwd);
		
		dao dao=new dao();
		String msg=dao.insert_professor(dto);
		resp.getWriter().print(msg);
	}

}
