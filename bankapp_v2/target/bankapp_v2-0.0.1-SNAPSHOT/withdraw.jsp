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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="styles.css">

        <!-- Font Awesome -->
        <script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

        <!-- Bootstrap Scripts -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    </head>
<body>
 <!-- JSP CODE Starts-->
 <%if(session.getAttribute("customer")==null){ response.sendRedirect("login.html"); } %>
 <!-- JSP CODE Ends -->


 <section class="colored-section" id="title">
    <div class="container-fluid">
        <!------------------------------------ NAV BAR STARTS ------------------------------------------>

        <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="./customerwelcomepage.jsp">Syed's Bank</a>

                <button class="navbar-toggler" data-target="#my-nav" data-toggle="collapse"
                    aria-controls="my-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="my-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active"><a class="nav-link"
                                href="./customerwelcomepage.jsp"><span class="fa fa-home fa-lg"></span>
                                Home</a>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="./customerwelcomepage.jsp"><span
                                    class="fa fa-info fa-lg"></span>
                                About</a></li>
                        <li class="nav-item"><a class="nav-link" href="./contactus.html"><span
                                    class="fa fa-address-card fa-lg"></span> Contact</a></li>
                    </ul>
                    <!--Logot starts-->
                    <span class="navbar-text">
                        <form action="customerlogout">
                            <input type="submit" class="btn btn-danger" value="Logout">
                        </form>

                    </span>
                    <!--Logout ends-->
                </div>
            </div>

        </nav>
        <!------------------------------------ NAV BAR ENDS ------------------------------------------>
        <br><br>
        <!-------------------------------------------------- Marquee Tag Starts-------------------------------------------------->
        <marquee width="100%" direction="right" height="50px">
            <strong style="color:white; font-size: large;">Welcome ${customer} to Syed's Bank!!!</strong>
        </marquee>
        <!---------------------------------------------- ------Marquee Tag End---------------------------------------------------->
        <div>
            <h2>Bank Deposit Panel</h2>
        </div><br><br>
        <!----------------------------------------------------------------------------- Row Starts --------------------------------------------->
        <div class="row">
            <div class="col-lg-6">
                <div class="form-group">
                    <label for="for state">Withdraw Amount</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroupPrepend"><i class="fas fa-rupee-sign"></i></span>
                        </div>
                        <input type="number" id="withdraw" class="form-control" placeholder="Enter Amount to Withdraw" required>
                    </div>
                </div>
                <button id="b2" class="btn btn-success" type="button">Withdraw</button>
            </div>
            <br><br>
            <div class="col-lg-6">
                <!-- <form action="">
                    <button type="button" id="depositbtn" onclick="deposit.jsp"
                        class="btn btn-success btn-lg btn-block">Deposit</button>
                </form>

                <button type="button" id="view" class="btn btn-warning btn-lg btn-block">View
                    Statements</button> -->
            </div>

        </div>
        <!----------------------------------------------------------------------------- Row Starts ENDS--------------------------------------------->
    </div>
</section>
<script>
    console.log(document.getElementById("withdraw").value)
      b2.onclick = () => {
                        let url = "http://localhost:8080/bankapp_v2/withdraw?withdraw=" + document.getElementById("withdraw").value;
                        fetch(url)
                            .then(response => response.json())
                        alert("Amount " + document.getElementById("withdraw").value + " Successfully Withdrawed From your Account");
                        location.href = "viewstatements.jsp";
                    }
</script>
</body>
<footer>
    <!-- Bootstrap Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
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