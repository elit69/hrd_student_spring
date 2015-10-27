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
	public StudentDao(DataSource dataSource){
		this.dataSource = dataSource;
	}
	public ArrayList<Student> list(){
		try {
			cnn = dataSource.getConnection();
			ResultSet rs = null;
			String sql = "select * from student ORDER BY id;";
			PreparedStatement ps = cnn.prepareStatement(sql);
			rs = ps.executeQuery();
			ArrayList<Student> listStudent = new ArrayList<Student>();
			while(rs.next()){
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
}
