<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="com.spring.boot.project.data.UserFeedbackForm"%>
<%@ page import="java.util.List"%>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
div{
font-family:Georgia;
text-align:center;
padding-top:15px;
}
</style>
</head>
<body>

<div><h1><u>User Feedback Form</u></h1><h3>Please, kindly fill the feedback form</h3></div>

	<form action=/feedbackUser>
	<%
	List<UserFeedbackForm> list = (List<UserFeedbackForm>) request.getAttribute("data");
	int n = (list.size())-1;
	out.print("<div style=text-align:center;padding:40px;background-color:#F8F8F6;>");
	out.print("<label style=padding:10px>" + list.get(n).getField1() + "</label><input name=one style=padding:10px type=text placeholder=Enter your response><br><br><br>");
	out.print("<label style=padding:10px>" + list.get(n).getField2() + "</label><input name=two style=padding:10px type=text placeholder=Enter your response><br><br><br>");
	out.print("<label style=padding:10px>" + list.get(n).getField3() + "</label><input name=three style=padding:10px type=text placeholder=Enter your response><br><br><br>");
	out.print("<label style=padding:10px>" + list.get(n).getField4() + "</label><input name=four style=padding:10px type=text placeholder=Enter your response><br><br><br>");
	out.print("<input style=padding:5px;background-color:#40612A;color:whitesmoke type=submit value=Submit>");
	out.print("</div>");
	%>
	</form>
</body>
</html>