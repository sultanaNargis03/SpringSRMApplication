package com.telusko.service;
import java.util.List;

import com.telusko.model.Student;
public interface IStudentService 
{
	public List<Student> getAllStudents();
	public void addStudent(Student student);
	public Student findStudentById(String id);
	public void deleteById(String id);
}
