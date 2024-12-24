package com.studentApplicationProject.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.studentApplicationProject.DAO.StudentDAO;
import com.studentApplicationProject.DAO.StudentDAOImpl;
import com.studentApplicationProject.DTO.Student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class Login extends HttpServlet{
 
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String mail=req.getParameter("mail");
		String password=req.getParameter("password");
		
		HttpSession session=req.getSession();
		
//		PrintWriter out=resp.getWriter();
		StudentDAO sdao=new StudentDAOImpl();
		Student s=sdao.getStudent(mail, password);
		
		
		if(s!=null)
		{
			
				session.setAttribute("student", s);
				RequestDispatcher rd=req.getRequestDispatcher("dashboard.jsp");
				rd.forward(req, resp);
			}
			
		
		else
		{
			req.setAttribute("fail", "Invalid Email or Password...");
			RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
			rd.forward(req, resp);
			
//			resp.sendRedirect("failure.html");
//			out.println("<h1>Invalid mail or password,</h1>"+"<br>"+"<a href=\"login.html\">Back</a> ");
		}
	}
}