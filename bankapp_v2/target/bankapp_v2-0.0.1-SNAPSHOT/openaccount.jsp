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
        <%if(session.getAttribute("bank")==null){
        	response.sendRedirect("login.html");
        	}
        %>
        ${customer}
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
                                <li class="nav-item"><a class="nav-link" href="#"><span class="fa fa-info fa-lg"></span>
                                    About</a></li>
                                <li class="nav-item"><a class="nav-link" href="#"><span
                                        class="fa fa-address-card fa-lg"></span> Contact</a></li>
                            </ul>
                        </div>
                            <!--Modal_Login starts-->
           <span class="navbar-text">
            <!-- <a id="buttonLogin" href="logout">
            <span class="fa-solid fa-user"></span><b>Login</b></a> -->
            <form action="customerlogout">
              <input type="submit"  class="btn btn-danger" value="Logout">
            </form>
            
        </span>
    <!--Modal_Login ends-->
                    </div>
                    
                </nav>
                  <!-- Title -->
                   <br><br>
                  <div class="row">
                   <!-------------------------------------------------- Marquee Tag Starts-------------------------------------------------->
                   <marquee width="100%" direction="right" height="50px">
                    <strong style="color:white; font-size: large;">Welcome ${bank} to Syed's Bank!!!</strong>
               </marquee>
        <!---------------------------------------------- ------Marquee Tag End---------------------------------------------------->
                    <div class="col-lg-6">
                      <h3>&nbsp&nbspCustomer Account Opening Form</h3>
                        <form action="employeewelcomepage.jsp" method="POST">
                              <div class="form-group">
                               
                                    <label for="validationCustomUsername">Username</label>
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroupPrepend"><i class="fas fa-user"></i></span>
                                      </div>
                                      <input type="text" class="form-control" id="custusername" placeholder="Enter Username"required>
                                </div>
                              </div>
                       
                            <div class="form-group">
                              <label for="exampleInputEmail1"><strong>First Name</strong></label>
                              <input type="text" class="form-control" id="custfname" placeholder="Enter Your Full Name">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1"><strong>Last Name</strong></label>
                                <input type="text" class="form-control" id="custlname" placeholder="Enter Your Full Name">
                              </div>
                              <div class="form-group">
                                <!-- <label for="numberofguest" class="col-form-label">Gender<strong></strong></label> -->
                                    <strong>Gender</strong>&nbsp
                                    <div>
                                        <input type="radio" name="gender" value="male" onclick="myFunction(this.value)" id="Male">&nbsp;<label><h5>Male</h5></label>&nbsp;&nbsp;
                                        <input type="radio" name="gender" value="female" onclick="myFunction(this.value)" id="Female">&nbsp;<label><h5>Female</h5></label>&nbsp;&nbsp;
                                        <input type="radio" name="gender" value="other" onclick="myFunction(this.value)" id="Other">&nbsp;<label><h5>Other</h5></label>&nbsp;&nbsp;
                                    </div>
                                    <input type="text" id="gender" class="form-control" readonly>
                                </div>
                                <div class="form-group">
                                        <label for="birthday"><strong>Date of Birth</strong></label>
                                        <div><input type="date" id="myDate" value="2014-02-09" name="custdob"></div>
                                </div>
                                <div class="form-group">
                                    <label for="for mobile"><strong>Mobile Number</strong></label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="inputGroupPrepend"><i class="fas fa-mobile"></i></span>
                                          </div>
                                        <input type="number" class="form-control" id="custmobileno" placeholder="Enter Your Mobile Number">
                                      </div>
                                </div>
                             <div class="form-group">
                                <label for="for pan"><strong>Pan Number</strong></label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroupPrepend"><i class="fas fa-id-card"></i></span>
                                    </div>
                                    <input type="text" class="form-control" id="custpan" placeholder="Enter Your Pan Number">
                                </div>
                             </div>
                             <div class="form-group">
                                 <label for="for city"><strong>City</strong></label>
                                 <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroupPrepend"><i class="fas fa-building"></i></span>
                                    </div>
                               <input type="text" class="form-control" id="custcity" placeholder="Enter Your City">
                                 </div>
                             </div>
                            
                             <div class="form-group">
                                 <label for="for state">State</label>
                                <div class="input-group">
                                   <div class="input-group-prepend">
                                       <span class="input-group-text" id="inputGroupPrepend"> <i class="fas fa-map-pin"></i></span>
                                   </div>
                              <input type="text" class="form-control" id="custstate" placeholder="Enter Your State">
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label for="for state">Opening Balance</label>
                               <div class="input-group">
                                  <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroupPrepend"><i class="fas fa-rupee-sign"></i></span>
                                  </div>
                             <input type="text" class="form-control" id="openingbalance" placeholder="Enter Your Opening Balance">
                               </div>
                           </div>
                           
                      <button type="submit" id = "b1" class="btn btn-success">Register</button><br><br>
                    </form>
                    </div>
                    <br><br>       
                    <!-- future image -->
                        <!-- <div class="col-lg-6">
                          <h3>Login for Customer</h3>
                          
                          <form action="">
                            <div class="form-group">
                              <label for="exampleInputEmail1"><strong>Username</strong></label>
                              <input type="username" class="form-control" id="empusername" placeholder="Enter Your Username">
                            </div>
                            <div class="form-group">
                              <label for="exampleInputPassword1"><strong>Password</strong></label>
                              <input type="password" class="form-control" id="emppassword" placeholder="Enter Your Password">
                            </div>
                            <button type="submit" class="btn btn-primary">Login</button><br><br>
                          </form>
                        </div> -->
                       
                    </div>
                    </div>
                   
            
                  </div>
            
              </section>
             
        </body>
          <!-- Footer -->
  <footer>
    <!-- Bootstrap Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <script src="./openaccount.js"></script>
    <footer class="white-section" id="footer">
     <div class="container-fluid">
       <i class="social-icon fab fa-facebook-f"></i>
       <i class="social-icon fab fa-twitter"></i>
       <i class="social-icon fab fa-instagram"></i>
       <i class="social-icon fas fa-envelope"></i>
       <p>© Copyright 2021 Syed's Bank</p>
     </div>
   </footer>
</html>