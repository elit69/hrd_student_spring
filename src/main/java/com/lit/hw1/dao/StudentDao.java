package com.lit.hw1.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.sql.DataSource;

import com.lit.hw1.dto.Student;

public class StudentDao {
	private DataSource dataSource;
	private Connection cnn;

	public StudentDao(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public ArrayList<Student> list() {
		try {
			cnn = dataSource.getConnection();
			ResultSet rs = null;
			String sql = "select * from student ORDER BY id;";
			PreparedStatement ps = cnn.prepareStatement(sql);
			rs = ps.executeQuery();
			ArrayList<Student> listStudent = new ArrayList<Student>();
			while (rs.next()) {
				Student s = new Student();
				s.setId(rs.getInt("id"));
				s.setFirstname(rs.getString("first_name"));
				s.setLastname(rs.getString("last_name"));
				s.setClassroom(rs.getString("classroom"));
				listStudent.add(s);
			}
			return listStudent;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public boolean add(Student stu) {
		try {
			cnn = dataSource.getConnection();
			PreparedStatement ps = cnn
					.prepareStatement("INSERT INTO student VALUES(?,?,?,?)");
			ps.setInt(1, stu.getId());
			ps.setString(2, stu.getFirstname());
			ps.setString(3, stu.getLastname());
			ps.setString(4, stu.getClassroom());
			if (ps.executeUpdate() > 0)
				return true;
			System.out.println(ps.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean update(Student stu) {
		try {
			cnn = dataSource.getConnection();
			PreparedStatement ps = cnn
					.prepareStatement("update student set "
							+ "first_name = ?, "
							+ "last_name = ?, "
							+ "classroom= ? "
							+ "where id = ?");
			ps.setInt(1, stu.getId());
			ps.setString(2, stu.getFirstname());
			ps.setString(3, stu.getLastname());
			ps.setString(4, stu.getClassroom());
			if (ps.executeUpdate() > 0)
				return true;
			System.out.println(ps.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean delete(int stuId) {
		try {
			cnn = dataSource.getConnection();
			PreparedStatement ps = cnn
					.prepareStatement("Delete from student where id = ?");
			ps.setInt(1, stuId);
			if (ps.executeUpdate() > 0)
				return true;
			System.out.println(ps.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public Student show(int stuId) {
		try {
			cnn = dataSource.getConnection();
			ResultSet rs = null;
			String sql = "select * from student where id = ?";
			PreparedStatement ps = cnn.prepareStatement(sql);
			ps.setInt(1, stuId);
			rs = ps.executeQuery();
			if(rs.next()){
				Student s = new Student();
				s.setId(rs.getInt("id"));
				s.setFirstname(rs.getString("first_name"));
				s.setLastname(rs.getString("last_name"));
				s.setClassroom(rs.getString("classroom"));
				return s;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
