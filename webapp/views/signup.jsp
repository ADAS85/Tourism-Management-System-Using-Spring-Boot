<html>

<head>
<title>Manager Signup</title>
<style>   
Body {  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: pink;  
}  
button {   
       background-color: #4CAF50;   
       width: 100%;  
        color: whitesmoke;   
        padding: 15px;   
        margin: 10px 0px;   
        border: none;   
        cursor: pointer;   
         }   
 form {   
        border: 3px solid #f1f1f1;   
    }   
 input[type=text], input[type=password], input[type=email] ,input[type=tel] {   
        width: 100%;   
        margin: 8px 0;  
        padding: 12px 20px;   
        display: inline-block;   
        border: 2px solid green;   
        box-sizing: border-box;   
    }  
 button:hover {   
        opacity: 0.7;   
    }   
    
        
     
 .container {   
        padding: 25px;   
        background-color: lightblue;  
    }   
</style>   
</head>

<body>
<center><h1 text-center>Manager Signup</h1></center>
	<font color="red">${errormessage}</font>
	<form  method="post">
	<div class="container">   
            <label>FirstName : </label>   
            <input type="text" placeholder="Enter firstName" name="firstname" required >  
            <label>LastName : </label>   
            <input type="text" placeholder="Enter lastName" name="lastname" required  required> 
            <label>Email : </label>   
            <input type="text" placeholder="Enter email" name="email" required > 
            <br>
            <label>Password : </label>   
            <input type="password" placeholder="Enter Password" name="password" required >  
            <br>
            <label >Phone Number:</label>
              <input type="tel" id="phone" name="phone" placeholder="Enter phone Number" required size="10">
              <br>  
              <button type="submit">Sign Up</button> 
        </div>   
    </form> 
</body>
</html>
