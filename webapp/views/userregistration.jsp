<!doctype html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>User Registration</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="#">USER REGISTRATION</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="http://localhost:8080">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
     </ul>
    <form class="form-inline my-2 my-lg-0">
      <a class="btn btn-light my-2 my-sm-0 mr-1" type="submit" href="userlogin">Login</a>
      <a class="btn btn-light my-2 my-sm-0" type="submit" href="userlogin">Register</a>
    </form>
  </div>
</nav>
<div class="container p-2">
<div class="row">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-body">
<h3 class="text-center">Registration Form</h3>
<h1>${message}</h1>
<form method="post">
<div class="form-group">
<label for="exampleInputEmail1">First Name:-</label><input type="text" class="form-control" id="exampleInputEmail1" name="firstname" aria-describedby="emailHelp" required>
</div>
<div class="form-group">
<label for="exampleInputEmail1">Last Name:-</label><input type="text" class="form-control" id="exampleInputEmail1" name="lastname" aria-describedby="emailHelp" required>
</div>
<div class="form-group">
                    <label for="exampleInputEmail1">Contact Number:-</label>
                    <input type="number" class="form-control"
                        id="exampleInputEmail1" name="number" aria-describedby="emailHelp"required>
                </div>
 <div class="form-group">
 <label for="exampleInputEmail1">Email Address:-</label> <input type="email" class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp"required>
 </div>
 <div class="form-group">
 <label for="exampleInputEmail1">Password:-</label> <input type="password" class="form-control" id="exampleInputPassword1" required name="password">
 </div>
 <div class="form-group">
 <label for="exampleInputEmail1">Date of Birth:-</label> <input type="date" class="form-control" id="exampleInputEmail1" name="date_of_birth" aria-describedby="emailHelp"required>
 </div>
 <button type="submit" class="btn btn-primary">Register</button>
</form>
</div>
</div>
</div>
</div>
</div>
              

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>