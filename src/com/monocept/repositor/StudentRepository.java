package com.monocept.repositor;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.monocept.model.Student;

public class StudentRepository {
	public List<Student> getStudents() {
		List<Student> students = new ArrayList<Student>();
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rohandbms?useSSL=false&serverTimezone=UTC",
					"root", "root");
			System.out.println(con.getClass());
		} catch (ClassNotFoundException e) {
			System.out.println(e + "   from class not found");
			e.printStackTrace();
		} catch (SQLException e1) {
			System.out.println(e1 + "   sql exception");
			e1.printStackTrace();
		}

		try {
			PreparedStatement ps = con.prepareStatement("select * from student");
			ResultSet resultSet;
			resultSet = ps.executeQuery();
			int code;

			while (resultSet.next()) {
				int id = Integer.valueOf(resultSet.getInt("rollno"));
				String fName = resultSet.getString("firstName").trim();
				String lName = resultSet.getString("lastName").trim();
				double cgpa = Double.valueOf(resultSet.getString("cgpa"));
				System.out.println("roll : " + id + "  name : " + fName + " last name : " + lName + " cgpa : " + cgpa);
				students.add(new Student(fName, lName, id, cgpa));
			}

			resultSet.close();
			ps.close();
			con.close();

		} catch (Exception e) {

		}
		return students;
	}
}
