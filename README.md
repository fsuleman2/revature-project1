# Revatute Project  1
## Syed's Banking Management App
Syed's Banking Management App is an Updated Version of Syed's Bank Version 1, Which is an Restful Web based Java Application Which allows Users to Open an account, Transfer funds to Different Accounts, Deposit Amount, Withdraw Amount and also provide facility to view previous transactions. The additioal thing I have added is Front-end Stack instead of plain console. <br>
##  Request and Response Work Flow
### Sending a Request
For sending the request from Frontend to Backend, I have used JSON where I have converted my request into a JSON object and pass it on to the backend, As Java Servlet can't able read JSON data for proper communication between the Front-end and Back-end additionally I have used Jackson API, What it basically does is, it takes the JSON format data and convert a JSON string to an equivalent Java object.
<br>
### Sending a Response
For sending the response from Backend to Frontend, I have bind my java object into a Jackson library object and converted the java object into an equivalent JSON object. From the Front End side, I have used Fetch API to fetch the details and then rendered it onto my View(HMTL page).

<h3>Front-End Tech Stack & Tools<h3>
  1. HTML5 <br><br>
  2. CSS3 <br><br>
  3. Bootstrap 4.6v<br><br>
  4. JavaScript ES6<br><br>
  5. JSON for Parsing
  <hr>
  <h3>Backend-End Tech Stack & Tools<h3>
  1. Java8 <br><br>
  2. Servlet<br><br>
  3. JDBC <br><br>
  4. POSTGRESQL<br><br>
  5. MAVEN<br><br>
  6. TOMCATSERVER9
  <hr>
  <h3>Testing Tools<h3>
  1. POSTMAN for HTTP Request and Response Test<br><br>
  2. JNUNIT for Testing Java Code Logic
    <br<br><hr>
  <h3>IDE'S<h3>
  1. VS CODE for Frontend Code<br><br>
  2. SPRING BOOT for Backend Code<br><br>
  3. DBEAVER for SQL Scripts<br>
  <br<br><hr>
  <h3>API'S<h3>
   1. Fetch API<br><br>
   2. Jackson API
    <br<br><hr>
  # Installation
  1. Clone the git repository
  ```
  https://github.com/fsuleman2/revature-project1.git
  
  ```
  2. Extract the .zip file and Open it in  Spring Boot
  3. Build the Maven
  4. Go to com.app.dbutil => PostgresConnection.java => set your own credentials
  5. Run the below Queries in your DBEAVER
  ```sql
  --Do create schema named => bank_schema
  -- creating 1)employeedetails table
create table employeedetails(empusername varchar primary key,emppassword varchar not null , empname varchar not null);
insert into employeedetails (empusername,emppassword,empname) values('syed123','123','Syed');
  
-- creating 2) custlogindetails table
create table custlogindetails(name varchar not null,email varchar not null,username varchar primary key,password varchar not null);

-- creating 3) customer_personal_info table
create table customer_personal_info(custusername varchar primary key, custfname varchar not null, custlname varchar not null, custgender varchar not null,
custdob varchar not null,
custmobileno int8(10) not null unique,
custpan varchar not null unique,
custcity varchar not null,
custstate varchar not null,
openingbalance float4 not null);
  

 -- creating 4) custacctdetails
create table custacctdetails(custfname varchar not null,
custusername varchar primary key,
openingbalance float4 not null,
acctcreatdate date default CURRENT_DATE);

-- creating 5) custtransaction
create table custtransaction(tid bigserial primary key,
ttype varchar not null,
openingbalance float4,
tamount float4,
tdate date default CURRENT_DATE,
closingbalance float4,
custusername varchar not null,
foreign key (custusername) references custacctdetails(custusername));

```
 
 6. After Succesfully creation of schema and running the quries.
 7. Go to the Project <br>
    => Right Click on Project name and Run it as Server<br>
    => Your are good to Go!!! :)
  
  
 ## Over all View of Syed's Bank App
  <img src="https://github.com/fsuleman2/project0/blob/master/SYEDS_BANK_APP.png" width=800px height=400px><br>
  
 ## Screenshots
 <img src="https://github.com/fsuleman2/revature-project1/blob/master/screenshots/s1.PNG"><br>
 <img src="https://github.com/fsuleman2/revature-project1/blob/master/screenshots/s2.PNG"><br>
 <img src="https://github.com/fsuleman2/revature-project1/blob/master/screenshots/s3.PNG"><br>
 <img src="https://github.com/fsuleman2/revature-project1/blob/master/screenshots/s4.PNG"><br>
 <img src="https://github.com/fsuleman2/revature-project1/blob/master/screenshots/s5.PNG"><br>
 <img src="https://github.com/fsuleman2/revature-project1/blob/master/screenshots/s6.PNG"><br>
 <img src="https://github.com/fsuleman2/revature-project1/blob/master/screenshots/s7.PNG"><br>
 <img src="https://github.com/fsuleman2/revature-project1/blob/master/screenshots/s8.PNG"><br>
 <img src="https://github.com/fsuleman2/revature-project1/blob/master/screenshots/s9.PNG"><br>
 <img src="https://github.com/fsuleman2/revature-project1/blob/master/screenshots/s10.PNG"><br>
 <img src="https://github.com/fsuleman2/revature-project1/blob/master/screenshots/s11.PNG"><br>
 <img src="https://github.com/fsuleman2/revature-project1/blob/master/screenshots/s12.PNG"><br>
 <img src="https://github.com/fsuleman2/revature-project1/blob/master/screenshots/s13.PNG"><br>
 <img src="https://github.com/fsuleman2/revature-project1/blob/master/screenshots/s20.PNG"><br>
 <img src="https://github.com/fsuleman2/revature-project1/blob/master/screenshots/d1.PNG"><br>
 <img src="https://github.com/fsuleman2/revature-project1/blob/master/screenshots/s23.PNG"><br>
 <img src="https://github.com/fsuleman2/revature-project1/blob/master/screenshots/s24.PNG"><br>
 <img src="https://github.com/fsuleman2/revature-project1/blob/master/screenshots/s25.PNG"><br>
 
  ## Mobile View
 <img src="https://github.com/fsuleman2/revature-project1/blob/master/screenshots/s26.PNG"><br>
                                           
  
# Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
For those who would like to discuss further development, my email is
```
sydsulmn7@gmail.com
```
  # License
[MIT](https://choosealicense.com/licenses/mit/)
