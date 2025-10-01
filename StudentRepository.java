
package com.sbcrud.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sbcrud.model.Student;

@Repository
public interface StudentRepository extends CrudRepository<Student, Integer> {

	public Student getStudentByRollno(int rollno);

	public Student findByUsernameAndPassword(String un, String ps);

}
