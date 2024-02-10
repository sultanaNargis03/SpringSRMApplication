package com.telusko.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.telusko.repository.IStudentRepo;
import com.telusko.model.Student;

@Service
public class StudentServiceImpl implements IStudentService 
{
	@Autowired
	IStudentRepo repo;

	@Override
	public List<Student> getAllStudents() 
	{
		return repo.findAll();
	}

	@Override
	public void addStudent(Student student) 
	{
		repo.save(student);
	}

	@Override
	public Student findStudentById(String id) 
	{
		Optional<Student> obj = repo.findById(id);
		return obj.get();
		
	}

	
	@Override
	public void deleteById(String id) 
	{
		repo.deleteById(id);
		
	}

	
}
