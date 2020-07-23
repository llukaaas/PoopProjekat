package com.janko.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.janko.model.Student;
import com.janko.services.StudentService;

@Controller
public class AppController {
	
	@Autowired
	public StudentService studentServie;
	
	@RequestMapping("/welcome")
	public String Welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}
	
	@RequestMapping("/create-student")
	public String createStudent(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_CREATE_STUDENT");
		return "welcomepage";
	}
	
	@PostMapping("/save-student")
	public String registerStudent(@ModelAttribute Student student,BindingResult bindingResult,HttpServletRequest request) {
		studentServie.saveMyStudent(student);
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}
	
	@GetMapping("/show-students")
	public String showAllStudents(HttpServletRequest request) {
		request.setAttribute("students", studentServie.showAllStudents());
		request.setAttribute("mode", "ALL_STUDENTS");
		return "welcomepage";
	}
	
	@RequestMapping("/delete-student")
	public String deleteStudent(@RequestParam int id, HttpServletRequest request) {
		studentServie.deleteMyStudent(id);
		request.setAttribute("students", studentServie.showAllStudents());
		request.setAttribute("mode", "ALL_STUDENTS");
		return "welcomepage";
	}
	
	@RequestMapping("/edit-student")
	public String editStudent(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("student", studentServie.editUser(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "welcomepage";
	}
}
