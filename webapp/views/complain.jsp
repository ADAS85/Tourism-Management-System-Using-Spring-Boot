<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Help Forum</title>
<style>
div{
text-align:center;
font-family:Georgia;
background-color:#6F6FB4;
color:whitesmoke;
padding:50px 0px;
}
input{
padding:5px;}
input[type=submit]{
padding:8px;
background-color:#5C855E;
color:whitesmoke;
}
</style>
</head>
<body>
<div>
<h2>USER HELP FORUM</h2>
<br><br>
<form action="/saveDetails" method="post">
<label>First Name : </label>
<input name="first" type="text" placeholder="Enter first name">
<br><br>
<label>Last Name : </label>
<input name="second" type="text" placeholder="Enter last name">
<br><br><br><br>
<textarea name="third" rows="5" cols="50" placeholder="Write your problem in details"></textarea>
<br><br><br>
<input type="submit" value="Submit">
</form>
</div>
</body>
</html>