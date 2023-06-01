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

@WebServlet("/delete")
public class delete extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doGet(req, resp);
		
		String usn=req.getParameter("usn");
		dao dao=new dao();
		String msg=dao.delete(usn);
		
		HttpSession httpSession=req.getSession();
		httpSession.setAttribute("msg", msg);
	
		
		RequestDispatcher rd=req.getRequestDispatcher("commonpage.jsp");
		rd.include(req, resp);
	}
}
