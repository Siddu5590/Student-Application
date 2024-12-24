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
import jakarta.servlet.http.HttpSession;

@WebServlet("/forgot")
public class ResetPassword extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String mail=req.getParameter("mail");
		String phoneNumber=req.getParameter("phone");
		String password=req.getParameter("password");
		String confirm = req.getParameter("confirm");
		
		long phone=Long.parseLong(phoneNumber);
		PrintWriter out=resp.getWriter();
		
		//session ge
		HttpSession session=req.getSession(false);
		
		
		StudentDAO sdao=new StudentDAOImpl();
		Student s=sdao.getStudent(mail,phone);
		if(s!=null && phone==(s.getPhone())&& mail.equals(s.getMailid()) && password.equals(confirm))
		{
			s.setPassword(password);
			boolean res=sdao.updateStudent(s);
			if(res)
			{
				req.setAttribute("success", "Password Set Successfully");
				RequestDispatcher rd= req.getRequestDispatcher("login.jsp");
				rd.forward(req, resp);
				
				
				
//				out.println("<h1> Hey, "+s.getName()+" your password has been updated Successfully...</h1>"
//						+"<a href=\"login.html\">Back</a> ");
			}
			else
			{
				req.setAttribute("failed","Failed to update password");
				RequestDispatcher rd=req.getRequestDispatcher("resetpassword.jsp");
				rd.forward(req, resp);
//				out.println("<h1>Failed to change the password</h1>"+"<a href=\"login.html\">Back</a> ");
			}
		}
		else
		{
			req.setAttribute("failed","Invalid Credentials...");
			RequestDispatcher rd=req.getRequestDispatcher("resetpassword.jsp");
			rd.forward(req, resp);
//			out.println("<h1>Password Mismatch</h1>");
		}
	}
	}