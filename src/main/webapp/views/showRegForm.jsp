<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>SRM Registration Form</title>
		<link type=text/css rel="stylesheet" href="./css/style.css">
		<link type=text/css rel="stylesheet" href="./css/add-customer-style.css">
		
	</head>
	<body>
		<div id="wrapper">
	    	<div id="header">
	    		<h1>Student Registration Form</h1>
	    	</div>
   		 </div>
   		 
    	<form:form action="registerStudent" modelAttribute="student">
		  <table>
	      		<!-- <form:hidden path="id"/> --> 
	      		 <tr>
			          <th>Student Id:</th>
		              <td><form:input path="id" /></td>
		          </tr>
			      <tr>
			          <th>Student First Name:</th>
		              <td><form:input path="firstName" /></td>
		          </tr>
		         <tr>
		            <th>Student Last Name:</th>
		              <td><form:input path="lastName" /></td>
			          </tr>
			           <tr>
			              <th>Student Age:</th>
			              <td><form:input path="age" /></td>
			          </tr>
			           <tr>
			              <th>Student City:</th>
			              <td><form:input path="city" /></td>
			          </tr>
			          <tr>
			              <td colspan="2">
			                  <input type="submit" value="SignUp" />
			              </td>
			          </tr>
			    </table>
	  </form:form>
    			
	</body>
</html>