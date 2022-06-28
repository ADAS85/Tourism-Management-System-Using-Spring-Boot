<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-color:#F2F8F4;}

#zero{
margin:0px;
text-align:center;
font-family:Georgia;
background-image:url("IMG3.jpg");
background-size:cover;
padding:50px 100px;
padding-bottom:200px;
opacity:0.9;
color:#652B6A;
}
li{
padding:50px;}
li,a{
display:inline-block;
font-weight:bold;
font-size:15;
text-decoration:none;
color:brown;
}
a:hover{
color:orchid;
}
h1{
font-size:25;
}
#homo{
background-color:whitesmoke;
padding:40px 0px;
margin:0px 300px;
border:solid black 2px;
}
</style>
</head>
<body>

	<div id="zero">
	<div id="homo">
		<h1><u>Payment Options</u></h1>
		<br><br>
		<h2><i>Your total payment is Rs. ${bill }</i></h2></div><br><br>
		<ul>
			<li><a href="http://localhost:8080/netbanking">Net Banking</a></li>
			<li><a href="http://localhost:8080/creditcard">Credit Card</a></li>
			<li><a href="http://localhost:8080/debitcard">Debit Card</a></li>
			<li><a href="http://localhost:8080/upi">UPI</a></li>
		</ul>
	</div>
</body>
</html>