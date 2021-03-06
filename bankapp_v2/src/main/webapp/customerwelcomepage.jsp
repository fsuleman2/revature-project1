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
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
      </head>
<body>
    <!-- JSP CODE starts-->
    <%if(session.getAttribute("customer")==null){
        response.sendRedirect("login.html");
        }
    %>
      <!-- JSP CODE ends -->
      <section class="colored-section" id="title">

        <div class="container-fluid">
    
          <!-- Nav Bar -->
    
          <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="./customerwelcomepage.jsp">Syed's Bank</a>
      
            <button class="navbar-toggler" data-target="#my-nav" data-toggle="collapse" aria-controls="my-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="my-nav">
                <ul class="navbar-nav ml-auto">
                        <li class="nav-item active"><a class="nav-link" href="./customerwelcomepage.jsp"><span class="fa fa-home fa-lg"></span> Home</a>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="#"><span class="fa fa-info fa-lg"></span>
                            About</a></li>
                        <li class="nav-item"><a class="nav-link" href="#"><span
                                class="fa fa-address-card fa-lg"></span> Contact</a></li>
                    </ul>
                     <!--Logot starts-->
           <span class="navbar-text">
            <!-- <a id="buttonLogin" href="logout">
            <span class="fa-solid fa-user"></span><b>Login</b></a> -->
            <form action="customerlogout">
              <input type="submit"  class="btn btn-danger" value="Logout">
            </form>
            
        </span>
    <!--Logout ends-->
                </div>
            </div>
            
        </nav>
          <!-- Title -->
           <br><br>
           <marquee width="100%" direction="right" height="50px">
           <strong style="color:white; font-size: large;">Welcome ${customer} to Syed's Bank!!!</strong>
             </marquee>
             <div>
                 <h2>Bank Services Panel</h2>
            </div><br><br>
          <div class="row">
            
            <!-- <h3 centre>Services Offered</h3> -->
            <div class="col-lg-6">
               <!------- ---------------------------------------------------------- Deposit amount Section Starts ------------------------------------------------------------>
                <!-- <form action="">
                        <button type="button" id="depositbtn" onclick="deposit.jsp" class="btn btn-success btn-lg btn-block">Deposit Amount</button>
                    </form><br/> -->
                    <div class="card text-center bg-dark" style="width: 18rem;">
                      <img class="card-img-top" src="./images/deposit-1.jpg" alt="Card image cap">
                      <div class="card-body">
                        <h5 class="card-title"></h5>
                        <p class="card-text text-success"><strong>Deposit Money Into Your Account</strong></p>
                        <a href="#" class="btn btn-success btn-lg btn-block" data-toggle="modal" data-target="#depositModal">Deposit</a>
                      </div>
                    </div>
                  <!--------------------------------------------------- Modal for Deposit amount Section Starts -------------------------------------------------------->
                    <div class="modal fade" id="depositModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title text-success" id="depositLabel"><strong>Deposit</strong></h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                            <div class="modal-body text-success">
                              <div class="form-group">
                                <label for="for state">Deposit Amount</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroupPrepend"><i class="fas fa-rupee-sign"></i></span>
                                    </div>
                                    <input type="number" id="deposit" class="form-control" placeholder="Enter Your Deposit Amount(Min 500/-)" required>
                                </div>
                            </div>
                            </div><!--Modal body closed-->
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      <button id="btn1" class="btn btn-success" type="button">Deposit</button>
                    </div>
                  </div>
                </div>
              </div>
                <br><br>
               <!------- ---------------------------------------------------------- Deposit amount Section Ends ------------------------------------------------------------>

<!------- ----------------------------------------------------------View Statement Section Starts ------------------------------------------------------------>
<div class="card text-center bg-dark" style="width: 18rem;">
  <img class="card-img-top" src="./images/viewstatements.jpg" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"></h5>
    <p class="card-text text-danger"><strong>View Account Statements</strong></p>
    <form action="viewstatements.jsp"><input type="submit" class="btn btn-warning btn-lg btn-block" value="View"></form>
  </div>
</div>
<!------- ----------------------------------------------------------View Statement Section Ends ------------------------------------------------------------>
              </div>
               <br>      
                <div class="col-lg-6">
                   <!------- ----------------------------------------------------------Withdrawl amount Section Starts ------------------------------------------------------------>
              <!-- <form action="">
                <button type="button" id="btn" class="btn btn-danger btn-lg btn-block">Withdraw Amount</button>
            </form><br/> -->
         <div class="card text-center bg-dark" style="width: 18rem;">
              <img class="card-img-top" src="./images/withdrawl1.jpg" height="210" alt="Card image cap">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text text-danger"><strong>Withdraw Money From Your Account </strong></p>
                <a href="#" class="btn btn-danger btn-lg btn-block" data-toggle="modal" data-target="#withdrawModal">Withdraw</a>
              </div>
            </div>
          <!--------------------------------------------------- Modal for Withdrawl amount Section Starts -------------------------------------------------------->
            <div class="modal fade" id="withdrawModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title text-danger" id="exampleModalLabel"><strong>Withdraw</strong></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                    <div class="modal-body text-danger">
                      <div class="form-group">
                        <label for="for state"><strong>Withdraw Amount</strong></label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroupPrepend"><i class="fas fa-rupee-sign"></i></span>
                            </div>
                            <input type="number" id="withdraw" class="form-control" placeholder="Enter Amount to Withdraw(Min 500/-)" required>
                        </div>
                    </div>
                    </div><!--Modal body closed-->
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button id="b2" class="btn btn-danger" type="button">Withdraw</button>
              <script>
                
              </script>
            </div>
          </div>
        </div>
      </div><br>
            
              <!------- ----------------------------------------------------------Withdrawl amount Section Ends ------------------------------------------------------------>
                   <!---------------------------------------------------------Transfer amount Section starts ---------------------------------------------------------------->
                   <br> <div class="card text-center bg-warning" style="width: 18rem;">
                    <img class="card-img-top" src="./images/regular-bank-transfer.png" width="600" height="250" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title"></h5>
                      <p class="card-text text-primary"><strong>Transfer Money to Another Account </strong></p>
                      <a href="#" class="btn btn-primary btn-lg btn-block" data-toggle="modal" data-target="#exampleModal">Transfer</a>
                    </div>
                  </div>
                <!--------------------------------------------------- Modal for Transfer Starts-------------------------------------------------------->
                  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title text-primary" id="exampleModalLabel"><strong>Transfer</strong></h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <div class="modal-body text-primary">
                          <form action="transfer" method="POST">
                            <!--Creditor Username Starts  -->
                                <div class="form-group">  
                                    <label for="validationCustomUsername">Creditor Username</label>
                                    <div class="input-group">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroupPrepend"><i class="fas fa-user"></i></span>
                                      </div>
                                      <input type="text" class="form-control" name="creditorname" placeholder="Enter Credtior Username" required>
                                </div>
                              </div>
                             <!--Creditor Username Ends  -->
                             
                                <!--Creditor transferamount starts  -->
                                <div class="form-group">
                                    <label for="for state">Transfer Amount</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="inputGroupPrepend"><i class="fas fa-rupee-sign"></i></span>
                                        </div>
                                        <input type="number" id="transferamount" class="form-control" placeholder="Enter Amount to Transfer" required>
                                    </div>
                                </div>
                                 <!--Creditor transferamount ends  -->
                                 <br>
                                 <button type="button" id="b1" class="btn btn-primary">Transfer</button>
                              </form>  
                      </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  
                  </div>
                </form>
                </div>
              </div>
            </div>
<!------- ----------------------------------------------------------Transfer amount Section Ends ---------------------------------------------------------- -->
            
            
            
            </div>
                </div>
               
            </div>
            </div>
    
        </section>
</body>
  <!-- Footer -->
 <!-- Bootstrap Scripts -->
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
 <script src="customerwelcomepage.js"></script>
 <script>
            // Deposit
            btn1.onclick = () => {
                        let value = document.getElementById("deposit").value;
                        if(value===''|| value <500 || value.length >= 100000){
                            alert("Value Should not be empty, must be above 500 and below 1Lakh");
                            return;
                        }

                        let url = "http://localhost:8085/bankapp_v2/deposit?deposit=" + document.getElementById("deposit").value;
                        fetch(url)
                            .then(response => response.json())
                        alert("Amount " + document.getElementById("deposit").value + " Successfully Deposited into your Account");
                        location.href="viewstatements.jsp"
                    }
</script>
<script>

      b1.onclick = () => {
             let v1 = document.getElementById("transferamount").value;
             if(v1==''|| v1 <500 || v1.length >= 100000){
                            alert("Value Should not be empty, must be above 500 and below 1Lakh");
                            return;
              }
                let url="https://localhost:8085/bankapp_v2/transfer";
                 fetch(url)
                 .then(response => response.json())
                //  .then(res => {
                //      let data ="<span>res.name</span>"
                //      document.getElementById("s").innerText=data;
                //  })
                //  .catch((error) => {
                //  console.error('Error:', error);
                //     });
                    alert("Amount " + document.getElementById("transferamount").value + " Successfully Transferred to "+document.getElementById("creditorname").value);
                }
                    
             
</script>
<script>
  b2.onclick = () => {
    let value = document.getElementById("withdraw").value;
    if(value===''|| value <500 || value.length >= 100000){
                        alert("Value Should not be empty, must be above 500 and below 1Lakh");
                        return;
                    }
                    let url = "http://localhost:8085/bankapp_v2/withdraw?withdraw=" + document.getElementById("withdraw").value;
                    fetch(url)
                        .then(response => response.json())
                    alert("Amount " + document.getElementById("withdraw").value + " Successfully Withdrawed From your Account");
                    location.href="viewstatements.jsp"
                }
</script>

 <footer class="white-section" id="footer">
  <div class="container-fluid">
    <i class="social-icon fab fa-facebook-f"></i>
    <i class="social-icon fab fa-twitter"></i>
    <i class="social-icon fab fa-instagram"></i>
    <!-- <i class="social-icon fas fa-envelope"></i> -->
    <p>?? Copyright 2021 Syed's Bank</p>
  </div>
</footer>
</html>