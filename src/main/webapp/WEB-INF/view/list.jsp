<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Details</title>
<style type="text/css">

table{
	width: 100%;
	border-collapse: collapse;
}

th{
	height: 50px;
	color: #ff1050;
}
td{
	text-align: center;
	height:25px;
}

th,td{
	border-bottom: 1px solid #ddd;
}

input {
  transition-duration: 0.4s;
  border-radius: 10px;
  padding: 10px;
}

input:hover {
  background-color: #4CAF50; 
  color: white;
}
h1{
color: green;
text-align: center;
font-size: 50px;
background-color: #ddd;
padding: 20px 0 20px 0;
}
a{
  color: red;
}
</style>
</head>
<body>
<h1>Customer Details</h1>

<div>

	<input type="button" value="Add Customer" onclick="window.location.href='showAddForm'; return false;" />
	<input type="button" value="Delete All Customer" onclick="if(!(confirm('Are you sure you want to delete all the customerdetails?'))) return false; window.location.href='deleteall'; return false;" />

	<table>
		<tr>
			<th>Id</th> 
			<th>First Name </th>
			<th>Last name </th>
			<th>Email </th>
			<th>Action</th>
			
		</tr>
		
		<c:forEach var="tempCustomer" items="${customerdetails}">
		
		<c:url var="updateLink" value="/customer/showUpdate">
			<c:param name="customerId" value="${tempCustomer.id}"></c:param>		
		</c:url>
		
		<c:url var="deleteLink" value="/customer/delete">
			<c:param name="customerId" value="${tempCustomer.id}"></c:param>		
		</c:url>
			<tr>
				<td>${tempCustomer.id}</td>
				<td>${tempCustomer.firstName}</td>
				<td>${tempCustomer.lastName}</td>
				<td>${tempCustomer.email}</td>
				<td>
					<a href="${updateLink}">update</a>
					|
					<a href="${deleteLink}" onclick = "if(!(confirm('Are you sure you want to delete this customerdetails?'))) return false">Delete</a>
				</td>
			</tr>	
		</c:forEach>	
		
	</table>	
		
</div>

</body>
</html>