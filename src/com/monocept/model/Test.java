package com.monocept.model;

import java.util.List;

import com.monocept.model.Student;
import com.monocept.repositor.StudentRepository;
import com.monocept.service.StudentService;

public class Test {
	public static void main(String[] args) {
	List<Student> students=StudentService.getObject().getStudents();
	for(Student st:students)
		System.out.println(st.getFirstName());
	}
}
