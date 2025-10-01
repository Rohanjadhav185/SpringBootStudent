package com.sbcrud.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sbcrud.model.Student;
import com.sbcrud.servicei.Servicei;

@Controller
public class StudentController {
	@Autowired
	Servicei si;

	@RequestMapping("/")
	public String logPage() {

		return "login";
	}

	@RequestMapping("/register")
	public String regPage() {
		return "register";
	}

	@RequestMapping("/save")
	public String regData(@ModelAttribute Student s) {
		System.out.println("In controller class");
		si.saveStudent(s);
		return "login";
	}

	@RequestMapping("/log")
	public String sucPage(@RequestParam("username") String un, @RequestParam("password") String ps, Model m) {
		Student st = si.loginStudent(un, ps);
		if (st == null && un.equals("admin") && ps.equals("123")) {

			Iterable<Student> stu = si.getStudent();
			m.addAttribute("student", stu);
			return "succsess";
		} else if (st != null) {

			List<Student> singleStu = new ArrayList<>();
			singleStu.add(st);
			m.addAttribute("student", singleStu);
			return "succsess";
		} else
			return "login";
	}

	@RequestMapping("/delete")
	public String deletePage(@ModelAttribute Student s, Model m) {

		si.deleteStudent(s);
		Iterable<Student> stlist = si.getStudent();

		m.addAttribute("student", stlist);
		return "succsess";
	}

	@RequestMapping("/edit")
	public String editPage(@RequestParam("rollno") int rn, Model m) {
		Student st = si.editStudent(rn);
		m.addAttribute("stu", st);

		return "edit";
	}

	@RequestMapping("/update")
	public String editPage(@ModelAttribute Student s, Model m)

	{
		si.saveStudent(s);
		Iterable<Student> stlist = si.getStudent();
		m.addAttribute("student", stlist);
		return "succsess";
	}
}
