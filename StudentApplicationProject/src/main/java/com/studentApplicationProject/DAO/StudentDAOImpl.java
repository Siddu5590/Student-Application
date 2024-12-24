package com.studentApplicationProject.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.studentApplicationProject.DTO.Student;
import com.studentApplicationProject.connection.ConnectionFactory;

public class StudentDAOImpl implements StudentDAO {

	private Connection con;

	public StudentDAOImpl() {
		this.con = ConnectionFactory.requestConnection();
	}

	@Override
	public boolean insertStudent(Student s) {
		// JDBC logic for insert operation
		String query = "INSERT INTO STUDENT VALUES(0,?,?,?,?,?,?,SYSDATE())";
		PreparedStatement ps = null;
		int res = 0;
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, s.getName());
			ps.setLong(2, s.getPhone());
			ps.setString(3, s.getMailid());
			ps.setString(4, s.getBranch());
			ps.setString(5, s.getLocation());
			ps.setString(6, s.getPassword());
			res = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if (res > 0) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public boolean updateStudent(Student s) {
		String query = "UPDATE STUDENT SET NAME=?,PHONE=?,MAILID=?,BRANCH=?,LOCATION=?,PASSWORD=? WHERE ID=?";
		PreparedStatement ps = null;
		int res = 0;
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, s.getName());
			ps.setLong(2, s.getPhone());
			ps.setString(3, s.getMailid());
			ps.setString(4, s.getBranch());
			ps.setString(5, s.getLocation());
			ps.setString(6, s.getPassword());
			ps.setInt(7, s.getId());

			res = ps.executeUpdate();

		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		if (res > 0) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public boolean deleteStudent(int id) {
		String query = "DELETE FROM STUDENT WHERE ID=?";
		PreparedStatement ps = null;
		int res = 0;
		try {
			ps = con.prepareStatement(query);
			ps.setInt(1, id);
			res = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if (res > 0) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public Student getStudent(String mail, String pass) {
		String query = "SELECT * FROM STUDENT WHERE MAILID=? AND PASSWORD=?";
		PreparedStatement ps = null;
		Student s = null;
		ResultSet rs = null;
		try {
			ps = con.prepareStatement(query);

			ps.setString(1, mail);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				s = new Student();
//				int id=rs.getInt("id");
//				s.setId(id);
				s.setId(rs.getInt("id"));
				s.setName(rs.getString("name"));
				s.setPhone(rs.getLong("phone"));
				s.setMailid(rs.getString("mailid"));
				s.setBranch(rs.getString("branch"));
				s.setLocation(rs.getString("location"));
				s.setPassword(rs.getString("password"));
				s.setDate(rs.getString("date"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return s;

	}

	@Override
	public List<Student> getStudent() {
		ArrayList<Student> students = new ArrayList<Student>();
		Student s = null;
		String query = "SELECT * FROM STUDENT";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = con.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				s = new Student();
//				int id=rs.getInt("id");
//				s.setId(id);
				s.setId(rs.getInt("id"));
				s.setName(rs.getString("name"));
				s.setPhone(rs.getLong("phone"));
				s.setMailid(rs.getString("mailid"));
				s.setBranch(rs.getString("branch"));
				s.setLocation(rs.getString("location"));
				s.setPassword(rs.getString("password"));
				s.setDate(rs.getString("date"));

				students.add(s);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return students;

	}

	@Override
	public Student getStudent(String mail,long phone) {
		
		String query = "SELECT * FROM STUDENT WHERE PHONE=? AND MAILID=?";
		PreparedStatement ps = null;
		Student s = null;
		ResultSet rs = null;
		try {
			ps = con.prepareStatement(query);

			ps.setLong(1, phone);
			ps.setString(2, mail);

			rs = ps.executeQuery();
			while (rs.next()) {
				s = new Student();
				s.setId(rs.getInt("id"));
				s.setName(rs.getString("name"));
				s.setPhone(rs.getLong("phone"));
				s.setMailid(rs.getString("mailid"));
				s.setBranch(rs.getString("branch"));
				s.setLocation(rs.getString("location"));
				s.setPassword(rs.getString("password"));
				s.setDate(rs.getString("date"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return s;
	}
}