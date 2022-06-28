<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Inquiry</title>
<style>
div{
text-align:center;
padding-top:70px;
}
#button{
padding:10px;
color:white;
background-color:#518242;
}
</style>
</head>
<body>
	<div>
		<h1>Post your Inquiries to the Manager</h1><br>
		<h4>You will surely get your reply within 24 hours</h4><br><br><br>
		<form action="/inquirysuccessful" method="post">
		<textarea name="textarea" rows=10 cols=30 placeholder="Enter your inquiry"></textarea><br><br>
		<input type="submit" id="button" value="Submit">
		</form>
	</div>
</body>
</html>