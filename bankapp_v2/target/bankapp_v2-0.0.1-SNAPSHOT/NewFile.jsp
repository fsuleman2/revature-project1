<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Syed's Bank</title>
  
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat|Ubuntu" rel="stylesheet">
  
    <!-- CSS Stylesheets -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="styles.css">
  
    <!-- Font Awesome -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
  
    <!-- Bootstrap Scripts -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </head>
<body>
<section class="colored-section" id="title">

        <div class="container-fluid">
    
          <!-- Nav Bar -->
    
          <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
            <div class="container">
              <a class="navbar-brand" href="index.html">Syed's Bank</a>
      
            <button class="navbar-toggler" data-target="#my-nav" data-toggle="collapse" aria-controls="my-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="my-nav">
                <ul class="navbar-nav ml-auto">
                  <li class="nav-item active"><a class="nav-link" href="index.html"><span class="fa fa-home fa-lg"></span> Home</a>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="./aboutus.html"><span class="fa fa-info fa-lg"></span>
                            About</a></li>
                        <li class="nav-item"><a class="nav-link" href="./contactus.html"><span
                                class="fa fa-address-card fa-lg"></span> Contact</a></li>
                    </ul>
                </div>
            </div>
            
        </nav>
          <!-- Title -->
           <br><br>
          <div class="row">
            <marquee width="100%" direction="right" height="50px">
              Welcome to Login Portal
               </marquee>
            <div class="col-lg-6" >
              
              <h3>Login for Employee</h3>
              <form action="openaccount.html">
                <div class="form-group">
                   
                  <label for="validationCustomUsername">Username</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="inputGroupPrepend"><i class="fas fa-user"></i></span>
                    </div>
                    <input type="text" class="form-control" id="empusername" placeholder="Enter Username"required>
              </div>
            </div>
        <div class="form-group">
          <label for="exampleInputPassword1"><strong><strong>Password</strong></strong></label>
          <div class="input-group">
              <div class="input-group-prepend">
                  <span class="input-group-text" id="inputGroupPrepend"><i class="fas fa-key"></i></span>
                </div>
                <input type="password" class="form-control" id="emppassword" placeholder="Enter Your Password">
          </div>
        </div>
                <button type="submit" id="#" class="btn btn-primary">Login</button><br><br>
              </form>
            </div>
            <br><br>       
                <div class="col-lg-6">
                  <h3>Login for Customer</h3>
                  
                  <form action="customerlogin" method="POST">
                    <div class="form-group">
                       
                      <label for="validationCustomUsername">Username</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <span class="input-group-text" id="inputGroupPrepend"><i class="fas fa-user"></i></span>
                        </div>
                        <input type="text" class="form-control" name="username" id="username" placeholder="Enter Username"required>
                  </div>
                </div>
            <div class="form-group">
              <label for="exampleInputPassword1"><strong><strong>Password</strong></strong></label>
              <div class="input-group">
                  <div class="input-group-prepend">
                      <span class="input-group-text" id="inputGroupPrepend"><i class="fas fa-key"></i></span>
                    </div>
                    <input type="password" class="form-control" name="password" id="password" placeholder="Enter Your Password">
              </div>
            </div>
            <input type="submit"  id="b1" class="btn btn-primary" value="login"></td>
                    <!-- <button type="submit" id="b2" class="btn btn-primary">Login</button><br><br> -->
                  </form>
                  <div id="results" class="container"></div>
                </div> <!--for col-lg-6-->
               
            </div>
            </div>
           
    
          </div>
    
      </section>
</body>
</html>