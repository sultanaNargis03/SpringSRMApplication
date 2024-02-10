package com.telusko.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.telusko.model.Student;

public interface IStudentRepo extends MongoRepository<Student, String> 
{
	
}
