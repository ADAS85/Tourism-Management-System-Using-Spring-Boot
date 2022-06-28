<html>

<head>
<title>Details of Package</title>
<style>   
Body {  
  font-family: sans-serif, Helvetica, sans-serif;  
  background-color: coral;  
}  
button {   
       background-color: #4CAF50;   
       width: 100%;  
        color: green;   
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
    
   td{
   padding:10px 10px;
   text-align:center;
   }
     
 .container {   
        padding: 25px;   
        background-color: lightblue;  
    }   
</style>   
</head>

<body>
<center><h1 text-center>Details Of Package</h1></center>
	<div class="container">   
            <table style="width:100%">
  <tr>
    <th>Title</th>
    <th>Description</th>
    <th>Location</th>
    <th>Price</th>
    <th>Duration</th>
  </tr>
  <tr>
    <td>${title}</td>
    <td>${description}</td>
    <td>${location}</td>
    <td>${price}</td>
    <td>${duration}</td>
  </tr>
  <tr>
    <th><a href="edittitle"><button type="submit">Edit Title </button></a></th>
    <th><a href="editdescription"><button type="submit">Edit Description</button></th>
    <th><a href="editlocation"><button type="submit">Edit Location </button></th>
    <th><a href="editprice"><button type="submit">Edit Price </button></th>
    <th><a href="editduration"><button type="submit">Edit Duration </button></th>
  
</table>
  

            <button type="submit">Edit Package</button>   
            
        </div>   

</body>

</html>