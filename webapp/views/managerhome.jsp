<html>

<head>
<title>Manager Home</title>
</head>
<style>
body{
background-color:#6B4624;
}
div{
text-align:center;
font-family:georgia;
color:whitesmoke;
padding-top:50px;
}
#first{
margin-top:100px;
}
button {   
       background-color: #4CAF50;   
       width: 100%;  
        color: whitesmoke;   
        padding: 25px;   
        margin: 10px 0px;   
        border: none;   
        cursor: pointer; 
        font-size:18px;
        font-family:cambria math;  
         }
  button:hover {   
        opacity: 0.7;   
    }   
      
         
         </style>

<body style='color:blue;'>
<div><h1>Manager Home Page</h1></div>
	 <a href="http://localhost:8080/userQuery"><button id="first" type="submit">View User Inquiries </button></a>
	<br>
	 <a href="http://localhost:8080/userComplain"><button type="submit">View User Complaints</button></a>
	 <br>
	 <a href="http://localhost:8080/feedbackForm"><button type="submit">Create Feedback Form</button></a>
	 <br>
	 <a href="http://localhost:8080"><button type="submit">Home</button></a>
	 <br>
</body>

</html>