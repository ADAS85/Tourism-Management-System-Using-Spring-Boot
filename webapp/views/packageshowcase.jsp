<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="com.spring.boot.project.data.PackageDetails"%>
<%@ page import="java.util.List"%>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	font-family: Arial;
}

* {
	box-sizing: border-box;
}

form.example input[type=text] {
	padding: 10px;
	font-size: 17px;
	border: 1px solid grey;
	float: left;
	width: 80%;
	background: #f1f1f1;
}

form.example button {
	float: left;
	width: 20%;
	padding: 10px;
	background: #2196F3;
	color: white;
	font-size: 17px;
	border: 1px solid grey;
	border-left: none;
	cursor: pointer;
}

form.example button:hover {
	background: #0b7dda;
}

form.example::after {
	content: "";
	clear: both;
	display: table;
}
div{
text-align:center;
margin:20px 50px 10px 170px;
padding-top:20px;
width:80%;
}
table {
	font-family: cambria math;
	border-collapse: collapse;
	text-align: justify;
}

th {
	padding: 10px 50px;;
	border: solid black 1px;
	text-align:center;
}

tr {
	padding: 10px 50px;;
	border: solid black 1px;
	text-align:center;
}
#first{
padding:8px;
margin-top:20px;
color:whitesmoke;
background-color:#31501C;
}
</style>
</head>
<body>

	<center>
		<h1>Here are the list of packages :</h1>
	</center>
	<br>
	<p style='color: red';>
	<table>
		<c:forEach items="${packs}" var="pack">
			<tr>
				<td><c:out value="${pack}" /></td>
			</tr>
		</c:forEach>
	</table>
	</p>

	<form method="post">
		<form class="example">
			<input type="text" placeholder="Search by duration" name="duration">
			<button type="submit">
				<i class="fa fa-search"></i>
			</button>
		</form>


		<form class="example">
			<input type="text" placeholder="Search by location" name="location">
			<button type="submit">
				<i class="fa fa-search"></i>
			</button>
		</form>
	</form>
	<div>
		<table>
			<tr>
				<th>ID</th>
				<th>Title</th>
				<th>Location</th>
				<th>Duration</th>
				<th>Price</th>
				<th>Description</th>
			</tr>
			<%
			List<PackageDetails> list = (List<PackageDetails>) request.getAttribute("data");
			for (int c = 0; c < list.size(); c++) {
				out.print("<tr>");
				out.print("<td style=padding:10px;border:solid black thin;><a style=text-decoration:none; href=http://localhost:8080/userDetails>" + list.get(c).getId() + "</a></td>");
				out.print("<td style=padding:10px;border:solid black thin;>" + list.get(c).getTitle() + "</td>");
				out.print("<td style=padding:10px;border:solid black thin;>" + list.get(c).getLocation() + "</td>");
				out.print("<td style=padding:10px;border:solid black thin;>" + list.get(c).getDuration() + "</td>");
				out.print("<td style=padding:10px;border:solid black thin;>" + list.get(c).getPrice() + "</td>");
				out.print("<td style=padding:10px;border:solid black thin;>" + list.get(c).getDescription() + "</td>");
				out.print("</tr>");
			}
			%>
		</table>
	</div>
	
	<div style="text-align:center;">
	<a href="http://localhost:8080"><button id="first" type="submit">Home</button></a>
	</div>
</body>
</html>
