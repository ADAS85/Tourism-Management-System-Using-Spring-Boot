<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Feedback Form</title>
<style>
body{
background-color:#5C6D4E;
color:whitesmoke;
}
div {
	text-align: center;
	padding-top: 15px;
}

label {
	padding: 15px;
}

input {
	padding: 15px;
}
input[type=submit]{

padding:8px;
background-color:#D1CB7B;
color:#2E2E2E;
}
</style>
</head>
<body>
	<div>
		<h2>
			<u>Write the field names in the Feedback Form</u>
		</h2><br><br>
		<form action="/fieldSubmit" method="post">
			<label>Form Field 1 : </label> <input name="one" type="text"
				placeholder="Enter form field name"><br>
			<br> <label>Form Field 2 : </label> <input name="two"
				type="text" placeholder="Enter form field name"><br>
			<br> <label>Form Field 3 : </label> <input name="three"
				type="text" placeholder="Enter form field name"><br>
			<br> <label>Form Field 4 : </label> <input name="four"
				type="text" placeholder="Enter form field name"><br>
			<br> <label>Form Field 5 : </label> <input name="five"
				type="text" placeholder="Enter form field name"><br>
			<br> <label>Form Field 6 : </label> <input name="six"
				type="text" placeholder="Enter form field name"><br>
			<br> <label>Form Field 7 : </label> <input name="seven"
				type="text" placeholder="Enter form field name"><br><br>
			<br> <input type="submit" value="Submit">
		</form>
	</div>
</body>
</html>