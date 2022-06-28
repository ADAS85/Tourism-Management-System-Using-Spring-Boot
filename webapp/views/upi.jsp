<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
div{
text-align:center;
padding-top:20px;
background-color:#F8F8F6;
padding-bottom:20px;
}
label,input{
padding:15px;
}
select{
padding:20px;}
input[type=submit]{
padding:8px;
background-color:#3E6325;
color:whitesmoke;
}
</style>
</head>
<body>
<div>
<h2>Choose your bank and make Payment</h2>
<form action="/paymentSuccessful" method="post">
<select>
<option>State Bank of India</option>
<option>Bank of Baroda</option>
<option>HDFC Bank</option>
<option>Central Bank of India</option>
<option>United Bank of India</option>
<option>Bank of India</option>
<option>Indian Bank</option>
<option>Punjab National Bank</option>
</select><br><br><br><br>
<input type="text" placeholder="Enter UPI ID"><br><br><br><br>
<input type="submit" value="Pay">
</form>
</div>
</body>
</html>