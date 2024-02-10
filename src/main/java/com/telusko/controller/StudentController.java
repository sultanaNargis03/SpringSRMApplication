package com.telusko.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.telusko.service.StudentServiceImpl;
import com.telusko.model.Student;

@Controller
public class StudentController 
{
	@Autowired
	StudentServiceImpl service;
	
	@GetMapping("/sxlist")
	public String fetchStudentsData(Model model)
	{
		List<Student> studentlist = service.getAllStudents();
		studentlist.forEach(c->System.out.println(c));
		model.addAttribute("students",studentlist);
		return "studentlist"; 
	}
	
	@GetMapping("/showRegForm")
	public String showRegFormPage(Map<String,Object> model)
	{
		Student student=new Student();
		model.put("student",student);
		
		return "showRegForm"; 
	}
	
	@PostMapping("/registerStudent")
	public String registerStudent(@ModelAttribute("student")Student student)
	{
//		student.setId(student.getId());
//		student.setFirstName(student.getFirstName());
//		student.setLastName(student.getLastName());
//		student.setAge(student.getAge());
//		student.setCity(student.getCity());
		
		service.addStudent(student);
		
		return "redirect:/sxlist"; 
	}
	
	@GetMapping("/updateForm")
	public String updateStudent(@RequestParam("studentId")String id ,Map<String, Object> model)
	{
		Student student = service.findStudentById(id);
		model.put("student", student);
		
		return "updateform"; 
	}
	
	@GetMapping("/deleteData")
	public String deleteStudent(@RequestParam(name="studentId")String id)
	{
		service.deleteById(id);
				
		return "redirect:/sxlist"; 
	}
	
}
