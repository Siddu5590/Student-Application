package com.studentApplicationProject.servlet;

import java.io.IOException;

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

@WebServlet("/updateAccount")
public class UpdateAccount extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name=req.getParameter("name");
		String phonenumber=req.getParameter("phone");
		String mail=req.getParameter("mail");
		String branch=req.getParameter("branch");
		String loc=req.getParameter("location");
		
		
		HttpSession session=req.getSession(false);
		long phone=Long.parseLong(phonenumber);
//		PrintWriter out=resp.getWriter();
		
		Student s=(Student)session.getAttribute("student");
		StudentDAO sdao=new StudentDAOImpl();
		
			s.setName(name);
			s.setPhone(phone);
			s.setMailid(mail);
			s.setBranch(branch);
			s.setLocation(loc);
			
			
			boolean result=sdao.updateStudent(s);
			if(result==true)
			{
				req.setAttribute("success", "Your Details Updated Successfully...");
				RequestDispatcher rd=req.getRequestDispatcher("updateAccount.jsp");
				rd.forward(req, resp);
				
//				s=sdao.getStudent(mail, password);
//				out.println("<h1>Account Created Successfully... Your Student Id is: "+s.getId()+"</h1>");
			}
			else
			{
				req.setAttribute("fail", "Failed to update your Details...");
				RequestDispatcher rd=req.getRequestDispatcher("updateAccount.jsp");
				rd.forward(req, resp);
//				out.println("Failed to create the Account");
			}
	}
}
