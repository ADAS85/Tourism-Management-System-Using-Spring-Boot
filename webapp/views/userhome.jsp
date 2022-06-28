<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
#first,#second,#third,#fourth{
margin-top:20px;
text-align:center;
}
#bt5,#bt6,#bt7,#bt8{
padding:10px;
background-color:#44815B;
color:whitesmoke;
}
</style>
</head>
<body>

<center><h1>Hi ${name} here is the list of packages:</h1></center>
<br>
<p style='color:red';>

 <table>
<c:forEach items="${packs}" var="pack">
				<tr>
					<td> <c:out value="${pack}"/></td>
				</tr>
			</c:forEach>
			</table>
 </p>

<form method="post">
<form class="example">
  <input type="text" placeholder="Search by duration" name="duration">
  <button type="submit"><i class="fa fa-search"></i></button>
</form>


<form class="example">
  <input type="text" placeholder="Search by location" name="location">
  <button type="submit"><i class="fa fa-search"></i></button>
</form>
</form>

<div id="first">
<a href="http://localhost:8080/packageList"><button id="bt5" type="submit">Proceed to Package Lists</button></a>
</div>
<div id="second">
<a href="http://localhost:8080/inquiry"><button id="bt6" type="submit">Post Inquiries</button></a>
</div>
<div id="third">
<a href="http://localhost:8080/complain"><button id="bt7" type="submit">Raise Complain</button></a>
</div>
<div id="fourth">
<a href="http://localhost:8080/formCreation"><button id="bt8" type="submit">Feedback Form</button></a>
</div>
</body>
</html> 
