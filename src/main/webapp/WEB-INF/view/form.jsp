<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Save Customer</title>
<style type="text/css">

table{
	width: 50%;
	height: 50px;
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
label{
	font-size: 20px;
	color: #ff1050;
}
h1{
color: green;
text-align: center;
font-size: 50px;
background-color: #ddd;
padding: 20px 0 20px 0;
}

</style>
</head>
<body>

<h1>Add Customer Details</h1>

<form:form action="saveCustomer" modelAttribute="customer" method="POST">
	<form:hidden path="id"/>
	<table>
		<tbody>
			<tr>
				<td><label>Firstname</label></td>
				<td><form:input path="firstName" /></td>
			</tr>
			<tr>
				<td><label>Lastname</label></td>
				<td><form:input path="lastName" /></td>
			</tr>
			<tr>
				<td><label>Email</label></td>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<td><label></label></td>
				<td><input type="submit" value="save" /></td>
			</tr>
		</tbody>
	</table>
</form:form>

<p>

	<a href="${pageContext.request.contextPath}/customer/list">Back to  List </a>

</p>


</body>
</html>