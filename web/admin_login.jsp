<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Covid 19 Citizen Details</title>
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap" rel="stylesheet">
    </head>
    <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <h2 style="color: white">Covid19 Citizen Details</h2>
    
<ul class="navbar-nav ml-auto">
    <a class="nav-link " href="login.jsp">
        Admin Log In
      </a>
    </nav>
    
     <!-----------------------admin login---------------------------------->
<section class="my-5" id="abc">
  <div class="py-5">
    <h2 class="text-center">Admin Login</h2>
  </div>
  <div class="w-50 m-auto">
    <form action="login_check.jsp" method="POST">
      <div class="form-group">
        <label>Username</label>
        <input type="text" name="username" autocomplete="off" class="form-control">
      </div>
      <div class="form-group">
        <label>Password</label>
        <input type="password" class="form-control" name="password"></input>
      </div>
 <button type="submit" class="btn btn-success">Login</button>
    </form>
  </div>
</section>
    </body>
</html>
