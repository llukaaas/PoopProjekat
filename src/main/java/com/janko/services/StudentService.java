package com.janko.services;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.janko.model.Student;
import com.janko.repository.StudentRepository;

@Service
@Transactional
public class StudentService {
	
	private final StudentRepository studentRepository;
	
	public StudentService(StudentRepository studentRepository) {
		this.studentRepository = studentRepository;
	}
	
	public void saveMyStudent(Student student) {
		studentRepository.save(student);
	}
	
	public List<Student> showAllStudents(){
		List<Student> students = new ArrayList<Student>();
		for(Student student : studentRepository.findAll()) {
			students.add(student);
		}
		return students;
	}
	
	public void deleteMyStudent(int id) {
		studentRepository.deleteById((long) id);
	}

	public Student editUser(int id) {
		return studentRepository.findById((long) id).orElse(null);
	}
}
