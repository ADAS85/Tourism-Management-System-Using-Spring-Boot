<html>

<head>
<title>View Package</title>
<style>   
Body {  
background-image: url("/Files/download2.jpg");
background-repeat: no-repeat;
    background-size: 100% 100%;
  font-family: sans-serif, Helvetica, sans-serif;  
  background-color: coral;  
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
 input[type=text], input[type=number] {   
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

<body style='color:blue;'>
<form method="post">
<h1> <label>Enter the new title </label> </h1>  
            <input type="text" placeholder="Enter the new title" name="title" required >
            <br>
            
             <button type="submit">Submit</button>  
         </form> 
</body>

</html>