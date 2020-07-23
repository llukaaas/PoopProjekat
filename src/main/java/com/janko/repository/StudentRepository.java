package com.janko.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.janko.model.Student;

public interface StudentRepository extends JpaRepository<Student, Long> {

}
