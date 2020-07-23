package com.janko.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.janko.model.Student;
import com.janko.services.StudentService;

@org.springframework.web.bind.annotation.RestController
public class RestController {
	
	@Autowired
	private StudentService studentService;
	
	@GetMapping("/")
	public String hello() {
		return "This is Home page";
	}
	
	
	
	@GetMapping("/savestudent")
	public String saveStudent(@RequestParam String ime,@RequestParam String prezime,@RequestParam String email,@RequestParam String jmbg,@RequestParam String password,@RequestParam String indeks,@RequestParam int godina) {
		//Student student = new Student(ime, prezime, email, jmbg, password,indeks, godina);
		Student student = new Student(ime, prezime, email, jmbg, password, indeks, godina);
		studentService.saveMyStudent(student);
		
		return "Student sacuvan";
	}
}
