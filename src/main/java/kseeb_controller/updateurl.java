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

@WebServlet("/updateurl")
public class updateurl extends HttpServlet {
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	//super.doGet(req, resp);
	String usn=req.getParameter("usn");
	String name=req.getParameter("name");
	String dob=req.getParameter("dob");
	String f_name=req.getParameter("fname");
	String m_name=req.getParameter("mname");
	
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
	
	dao dao=new dao();
	String msg=dao.updateurl(usn, name, dob, f_name, m_name, eng1, kan1, maths1, sci1, ss1);
	
	HttpSession httpSession=req.getSession();
	httpSession.setAttribute("msg", msg);
	
	RequestDispatcher rd=req.getRequestDispatcher("commonpage.jsp");
	rd.include(req, resp);
	
	
}
}
