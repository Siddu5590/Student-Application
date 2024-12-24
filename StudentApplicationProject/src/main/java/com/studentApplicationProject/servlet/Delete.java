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

@WebServlet("/delete")
public class Delete extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id=req.getParameter("id");
		
		int sid=Integer.parseInt(id);
		
		HttpSession session=req.getSession();
		
		StudentDAO sdao=new StudentDAOImpl();
		Student admin=(Student)session.getAttribute("student");
		Student s1=new Student();
		if(admin.getId()!=sid)
		{
			s1.setId(sid);
			boolean res=sdao.deleteStudent(sid);
			if(res)
			{
				req.setAttribute("success","User data Deleted Successfully..." );
				RequestDispatcher rd=req.getRequestDispatcher("users.jsp");
				rd.forward(req, resp);
			}
			else {
				req.setAttribute("fail", "failed to Delete the Account");
				RequestDispatcher rd=req.getRequestDispatcher("users.jsp");
				rd.forward(req, resp);
			}
		}
		else {
			req.setAttribute("fail", "Cannot Delete Admin Account");
			RequestDispatcher rd=req.getRequestDispatcher("users.jsp");
			rd.forward(req, resp);
		}
		
	}
}
