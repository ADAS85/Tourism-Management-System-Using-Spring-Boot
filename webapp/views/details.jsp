<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Details</title>
<style>
body{
background-color:#92C5B2
}

div{
text-align:center;
background-color:#415576;
border:solid green 10px;
margin:50px 180px;
font-family:Cambria Math;
color:white;
padding:20px;
}
label,input,select{
padding:5px;
margin-bottom:20px;
}
input,select{
width:30%;
}
input[type=submit]{
width:15%;
padding:15px 5px;
font-size:14px;
background-color:#426659;
color:whitesmoke;
margin-top:20px;
border:solid #8AB5A5 2px;
}
h1{
text-decoration-line:underline;
text-decoration-color:#8AB5A5;
margin-bottom:50px;
}

</style>
</head>
<body>
<form action="/formAction" method="post">
	<div>
		<h1>USER DETAILS</h1>
		<label>Number of Persons : </label> 
			<input type="number" name="persons" placeholder="Enter number of persons" required> 
		<br><br> 
		<label>Number of Rooms Required : </label> 
			<input type="number" name="rooms" placeholder="Enter number of rooms" required> 
		<br><br>
		<label>Mode of Transport : </label>
			<select name="modes" required>
			<option>Select Mode : </option>
			<option>Car</option>
			<option>Train</option>
			<option>Bus</option>
			</select>
		<br><br>
		<label>Date of Travel : </label>
			<input type="date" name="dates" placeholder="Enter date" required>
		<br><br>
		<input type="submit" value="Proceed to Payment">
	</div>
</form>
</body>
</html>