package com.sbcrud.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sbcrud.model.Student;
import com.sbcrud.repository.StudentRepository;
import com.sbcrud.servicei.Servicei;

@Service
public class Serviceimpl implements Servicei {

	@Autowired
	StudentRepository sr;

	@Override
	public void saveStudent(Student s) {

		System.out.println("In Service Layer");
		sr.save(s);
	}

	@Override
	public Iterable<Student> getStudent() {

		return sr.findAll();
	}

	@Override
	public void deleteStudent(Student s) {

		sr.delete(s);
	}

	@Override
	public Student editStudent(int rollno) {

		return sr.getStudentByRollno(rollno);
	}

	@Override
	public Student loginStudent(String un, String ps) {

		return sr.findByUsernameAndPassword(un, ps);
	}

}
