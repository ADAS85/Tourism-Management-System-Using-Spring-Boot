<html>

<head>
<title>Add Package</title>
<style>   
Body {  
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

<body>

<center><h1 text-center>Add Package</h1></center>
<h1 style='color:black;'>${success}</h1>
	<form action="/packagesAdded" method="post">
	<div class="container">   
            <label>Title </label>   
            <input type="text" placeholder="Enter title" name="title" required ><br><br>
            <label>Price </label>   
            <input type="text" placeholder="Enter price" name="price" required> <br><br>
            <label>Description </label>   
            <input type="text" placeholder="Enter description" name="description" required > <br><br>
             <label >Choose a location :</label>

<select name="location" id="cars">
  <option value="Ooty">Ooty</option>
  <option value="Andaman">Andaman</option>
  <option value="Goa">Goa</option>
  <option value="Manali">Manali</option>
  <option value="Shimla">Shimla</option>
  <option value="Sikkim">Sikkim</option>
  <option value="J&K">Jammu</option>
  <option value="Kedarnath">Kedarnath</option>
  <option value="Nainital">Nainital</option>
  <option value="Agra">Agra</option>
  <option value="Dehra Dun">Dehra Dun</option>
  <option value="Haridwar">Haridwar</option>
  <option value="Kashmir">Kashmir</option>
  <option value="Vellore">Vellore</option>
  <option value="Rajasthan">Rajasthan</option>
  <option value="Jaipur">Jaipur</option>
  <option value="Gangtok">Gangtok</option>
  <option value="Darjeeling">Darjeeling</option>
</select>
<br><br><br>
<label >Duration:</label>
<select name="duration" id="duration">
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
    <option value="5">5</option>
  <option value="6">6</option>
  <option value="7">7</option>
  <option value="8">8</option>
</select>
            <button type="submit">Submit</button>     
        </div>   
    </form> 
</body>

</html>