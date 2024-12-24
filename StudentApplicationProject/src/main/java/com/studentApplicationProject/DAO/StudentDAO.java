package com.studentApplicationProject.DAO;

import java.util.List;

import com.studentApplicationProject.DTO.Student;


//DAO:Data Access Object
public interface StudentDAO {
	
	public boolean insertStudent(Student s);
	public boolean updateStudent(Student s);
	public boolean deleteStudent(int id);
	public Student getStudent(String mail,long phone);
	public Student getStudent(String mail, String pass);

	public List<Student> getStudent();
	
}