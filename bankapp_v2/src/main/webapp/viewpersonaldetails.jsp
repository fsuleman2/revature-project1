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
 <%if(session.getAttribute("bank")==null){ response.sendRedirect("login.html"); } %>
 <!-- JSP CODE Ends -->
 <section class="colored-section" id="title">

    <div class="container-fluid">

        <!------------------------------------ NAV BAR STARTS ------------------------------------------>

        <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="./employeewelcomepage.jsp">Syed's Bank</a>

                <button class="navbar-toggler" data-target="#my-nav" data-toggle="collapse"
                    aria-controls="my-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="my-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active"><a class="nav-link"
                                href="./employeewelcomepage.jsp"><span class="fa fa-home fa-lg"></span>
                                Home</a>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="./employeewelcomepage.jsp"><span
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
        <marquee width="100%" direction="right" height="50px">
            <strong style="color:white; font-size: large;">Welcome ${bank} to Syed's Bank!!!</strong>
        </marquee><br>
        <h2>Customer Details Panel</h2>
        <div class="row">
            <div class="col-lg-6">
                    <div class="form-group">
                        <label for="validationCustomUsername">Customer Username</label>
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" ><i class="fas fa-user"></i></span>
                          </div>
                          <input type="text" class="form-control" id="username" placeholder="Enter Username to get details"required>
                    </div>
                  </div>
                    <button id="b1" class="btn btn-primary" type="button">Submit</button><br/><br>
                    <div>
                        <button id="b2" class="btn btn-primary" type="button">View All Details</button><br />
                        <br />
                    </div>
                </div>
                <!-- <div class="col-lg-6">
                   
                </div> -->
            </div>
           
        </div>
        </section>
        <br><br>
        <h3><strong>All Customer Details by Username</strong></h3>
        <div id="results1" class="container"></div>
        <br><br>
        <h3><strong>All Customer Details</strong></h3>
        <div id="results2" class="container"></div>
        <script>
            b1.onclick = () => {
    let url = "http://localhost:8085/bankapp_v2/getcustomerdetails?username=" + document.getElementById("username").value;
    fetch(url)
        .then(response => response.json())
        .then(res => {
            let data = "<table class='table table-striped table-bordered table-responsive'> <thead class='thead-dark'><tr><th>Customer User Name</th><th>Customer First Name</th><th>Customer Last Name</th><th>Customer Gender</th><th>Customer Date of Birth</th><th>Customer Mobile Number</th><th>Customer PAN Card</th><th>Customer City</th><th>Customer State</th><th>Customer Opening Balance</th></thead><tbody>"
            res.forEach(e => {
                data = data + "<td class='btn-primary'>" + e.custUserName + "</td>";
                data = data + "<td class='btn-success'>" + e.custFname + "</td>";
                data = data + "<td class='btn-info'>" + e.custLname + "</td>";
                data = data + "<td class='btn-danger'>" + e.custGender + "</td>";
                data = data + "<td class='btn-primary'>" + e.custDob + "</td>";
                data = data + "<td class='btn-info'>" + e.custMobileno + "</td>";
                data = data + "<td class='btn-info'>" + e.custPan + "</td>";
                data = data + "<td class='btn-info'>" + e.custCity + "</td>";
                data = data + "<td class='btn-info'>" + e.custState + "</td>";
                data = data + "<td class='btn-success'>" + e.openingbalance + "</td></tr>";
            });
            data = data + "</tbody></table>"
            document.getElementById("results1").innerHTML = data;
        })

}
            b2.onclick = () => {
    let url = "http://localhost:8085/bankapp_v2/viewcustomerdetails";
    fetch(url)
        .then(response => response.json())
        .then(res => {
            let data = "<table class='table table-striped table-bordered table-responsive'> <thead class='thead-dark'><tr><th>Customer User Name</th><th>Customer First Name</th><th>Customer Last Name</th><th>Customer Gender</th><th>Customer Date of Birth</th><th>Customer Mobile Number</th><th>Customer PAN Card</th><th>Customer City</th><th>Customer State</th><th>Customer Opening Balance</th></thead><tbody>"
            res.forEach(e => {
                data = data + "<td class='btn-primary'>" + e.custUserName + "</td>";
                data = data + "<td class='btn-success'>" + e.custFname + "</td>";
                data = data + "<td class='btn-info'>" + e.custLname + "</td>";
                data = data + "<td class='btn-danger'>" + e.custGender + "</td>";
                data = data + "<td class='btn-primary'>" + e.custDob + "</td>";
                data = data + "<td class='btn-info'>" + e.custMobileno + "</td>";
                data = data + "<td class='btn-info'>" + e.custPan + "</td>";
                data = data + "<td class='btn-info'>" + e.custCity + "</td>";
                data = data + "<td class='btn-info'>" + e.custState + "</td>";
                data = data + "<td class='btn-success'>" + e.openingbalance + "</td></tr>";
            });
            data = data + "</tbody></table>"
            document.getElementById("results2").innerHTML = data;
        })

}


        </script>
</body>
</html> 