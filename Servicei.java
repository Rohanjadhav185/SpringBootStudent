package com.sbcrud.servicei;

import com.sbcrud.model.Student;

public interface Servicei {

	public void saveStudent(Student s);

	public Iterable<Student> getStudent();

	public void deleteStudent(Student s);

	public Student editStudent(int rollno);

	public Student loginStudent(String un, String ps);
}
