package kseeb_controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kseeb_dao.dao;
import kseeb_dto.student_dto;

@WebServlet("/fetchall")
public class fetchall extends HttpServlet {
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	//super.doGet(req, resp);
	
	dao dao=new dao();
	List<student_dto> l1=dao.fetchall();
	
	req.setAttribute("studentlist", l1);
	
	RequestDispatcher rd=req.getRequestDispatcher("fetchall.jsp");
	rd.forward(req, resp);
	
	
}
}
