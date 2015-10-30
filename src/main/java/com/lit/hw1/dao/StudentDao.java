package com.lit.hw1.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
		ResultSet rs = null;
		PreparedStatement ps = null;
		try {
			cnn = dataSource.getConnection();
			String sql = "select * from student ORDER BY id;";
			ps = cnn.prepareStatement(sql);
			System.out.println(ps.toString());
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
		} finally {
			try {
				rs.close();
				ps.close();
				cnn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	public boolean add(Student stu) {
		PreparedStatement ps = null;
		try {
			cnn = dataSource.getConnection();
			ps = cnn.prepareStatement("INSERT INTO student(first_name,last_name,classroom) " + "VALUES (?,?,?);");
			ps.setString(1, stu.getFirstname());
			ps.setString(2, stu.getLastname());
			ps.setString(3, stu.getClassroom());
			System.out.println(ps.toString());
			if (ps.executeUpdate() > 0)
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
				cnn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}

	public boolean update(Student stu) {
		PreparedStatement ps = null;
		try {
			cnn = dataSource.getConnection();
			ps = cnn.prepareStatement(
					"update student set " + "first_name = ?, " + "last_name = ?, " + "classroom= ? " + "where id = ?");
			ps.setString(1, stu.getFirstname());
			ps.setString(2, stu.getLastname());
			ps.setString(3, stu.getClassroom());
			ps.setInt(4, stu.getId());
			System.out.println(ps.toString());
			if (ps.executeUpdate() > 0)
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				ps.close();
				cnn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}

	public boolean delete(int stuId) {
		PreparedStatement ps = null;
		try {
			cnn = dataSource.getConnection();
			ps = cnn.prepareStatement("Delete from student where id = ?");
			ps.setInt(1, stuId);
			System.out.println(ps.toString());
			if (ps.executeUpdate() > 0)
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				ps.close();
				cnn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}

	public Student show(int stuId) {
		ResultSet rs = null;
		PreparedStatement ps = null;
		try {
			cnn = dataSource.getConnection();
			String sql = "select * from student where id = ?";
			ps = cnn.prepareStatement(sql);
			ps.setInt(1, stuId);
			System.out.println(ps.toString());
			rs = ps.executeQuery();
			if (rs.next()) {
				Student s = new Student();
				s.setId(rs.getInt("id"));
				s.setFirstname(rs.getString("first_name"));
				s.setLastname(rs.getString("last_name"));
				s.setClassroom(rs.getString("classroom"));
				return s;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				ps.close();
				cnn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	public ArrayList<Student> search(String keyword, String type){
		ResultSet rs = null;
		PreparedStatement ps = null;
		try {
			cnn = dataSource.getConnection();
			String sql = "select * from student where LOWER("+ type +") like LOWER(?) ORDER BY " + type;
			ps = cnn.prepareStatement(sql);
			System.out.println(ps.toString());
			ps.setString(1, keyword + "%");
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
		} finally {
			try {
				rs.close();
				ps.close();
				cnn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
}
