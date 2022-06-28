<html>

<head>
<title>Admin Jsp</title>
</head>
<style>
button {   
       background-color: #4CAF50;   
       width: 100%;  
        color: whitesmoke;   
        padding: 15px;   
        margin: 10px 0px;   
        border: none;   
        cursor: pointer;   
         }
  button:hover {   
        opacity: 0.7;   
    }   
      
         
         </style>

<body style='color:blue;'>
<h1>
   Hi ${name}
	</h1>
	 <a href="addpackage"><button type="submit">Add Package </button></a>
	<br>
	 <a href="viewpackage"><button type="submit">View Package</button></a>
	 <br>
	 <a href="http://localhost:8080"><button type="submit">Home</button></a>
	 <br>
</body>

</html>