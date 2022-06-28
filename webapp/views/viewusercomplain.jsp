<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="com.spring.boot.project.data.UserComplains"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Query</title>
<style>
body {
	background-color: #664149;
}

div {
	text-align: center;
	margin: 20px 50px 10px 90px;
	padding-top: 20px;
	width: 80%;
}

table {
	font-family: cambria math;
	border-collapse: collapse;
	text-align: justify;
	margin: 100px 0px 0px 170px;
	background-color: whitesmoke;
}

th {
	padding: 20px 100px;;
	border: solid black 1px;
	text-align: center;
}

tr {
	padding: 20px 100px;;
	border: solid black 1px;
	text-align: center;
}

h1 {
	color: whitesmoke;
}
#first{
text-align:center;
margin-left:170px;}
</style>
</head>

<body>
	<div>
	<div id="first">
		<h1>
			<u>User Complaints</u>
		</h1></div>
		<table>
			<tr>
				<th>ID</th>
				<th>Customer Name</th>
				<th>Customer Complaint</th>
			</tr>
			<%
			List<UserComplains> list = (List<UserComplains>) request.getAttribute("data");
			for (int c = 0; c < list.size(); c++) {
				out.print("<tr>");
				out.print("<td style=padding:20px;border:solid black 1px;>" + list.get(c).getId() + "</td>");
				out.print("<td style=padding:20px;border:solid black 1px;>" + list.get(c).getName() + "</td>");
				out.print("<td style=padding:20px;border:solid black 1px;>" + list.get(c).getComplaint() + "</td>");
				out.print("</tr>");
			}
			%>
		</table>
	</div>
</body>
</html>