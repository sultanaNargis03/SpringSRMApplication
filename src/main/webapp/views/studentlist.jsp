<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>SRM Home Page</title>
		<link type=text/css rel="stylesheet" href="./css/style.css">
	</head>
	<body>
		<div id="wrapper">
	    	<div id="header">
	    		<h1>Student Relationship Management Application</h1>
	    	</div>
	    </div>	
			
		<div id="container">
	    	<div id="content">
	    		<input type="button" value="Register Student" 
	    		onClick="window.location.href='/SRM/showRegForm'; return false;" class="add-button" />
	    	
	    		<table border="1">
	    	           <tr>
		    	           <th>First Name</th>
		    	           <th>Last Name</th>
		    	           <th>age</th>
		    	           <th>City</th>
		    	           <th>Update Data</th>
		    	           <th>Delete Data</th> 
	    	           </tr>
	    	           <c:forEach var="student"  items="${students}"> 	
	    	           <c:url var="UpdateLink" value="/updateForm">
    	           	   <c:param name="studentId" value="${student.id}"></c:param>
    	           	   </c:url> 
    	           	   <c:url var="DeleteLink" value="/deleteData">
	    	           <c:param name="studentId" value="${student.id}"></c:param>
	    	           </c:url>          
	    	           <tr>
	    	              <td>${student.firstName}</td>
	    	              <td>${student.lastName}</td>
	       	              <td>${student.age}</td>
	    	              <td>${student.city}</td>
	    	              
	    	              <td><a href="${UpdateLink}">Update Data</a> </td>
    	            	  <td><a href="${DeleteLink}">Delete Data</a> </td>
	    	           </tr>
	    	           </c:forEach>
	    	    </table>
	    	    
	    	    
	    	</div>
	    </div>	
	</body>
</html>