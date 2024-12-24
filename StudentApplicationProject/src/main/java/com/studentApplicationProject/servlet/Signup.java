package com.studentApplicationProject.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import com.studentApplicationProject.DAO.StudentDAO;
import com.studentApplicationProject.DAO.StudentDAOImpl;
import com.studentApplicationProject.DTO.Student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class Signup extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name=req.getParameter("name");
		String phonenumber=req.getParameter("phone");
		String mail=req.getParameter("mail");
		String branch=req.getParameter("branch");
		String loc=req.getParameter("location");
		String password=req.getParameter("password");
		String confirm=req.getParameter("confirm");
		
		long phone=Long.parseLong(phonenumber);
//		PrintWriter out=resp.getWriter();
		
		Student s=new Student();
		StudentDAO sdao=new StudentDAOImpl();
		
		if(password.equals(confirm))
		{
			s.setName(name);
			s.setPhone(phone);
			s.setMailid(mail);
			s.setBranch(branch);
			s.setLocation(loc);
			s.setPassword(password);
			
			boolean result=sdao.insertStudent(s);
			if(result==true)
			{
				req.setAttribute("success", "Account Created Successfully...");
				RequestDispatcher rd=req.getRequestDispatcher("signup.jsp");
				rd.forward(req, resp);
				
//				s=sdao.getStudent(mail, password);
//				out.println("<h1>Account Created Successfully... Your Student Id is: "+s.getId()+"</h1>");
			}
			else
			{
				req.setAttribute("fail", "Failed to create account please try again...");
				RequestDispatcher rd=req.getRequestDispatcher("signup.jsp");
				rd.forward(req, resp);
//				out.println("Failed to create the Account");
			}
		}
		else {
			req.setAttribute("mismatch", "Password mismatch");
			RequestDispatcher rd=req.getRequestDispatcher("signup.jsp");
			rd.forward(req, resp);
		}
	}
	
}