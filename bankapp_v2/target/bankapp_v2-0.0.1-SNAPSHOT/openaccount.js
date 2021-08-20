/**
 * custusername : custusername,
 * custfname : ,
 * custlname : ,
 * custgender : ,
 * custdob : ,
 * custmobileno : ,
 * custpan : ,
 * custcity : ,
 * custstate : ,
 * openingbalance : 
 * b1
*/
function myFunction(gender) {
    document.getElementById("gender").value = gender;
  }
b1.onclick = () => {
    let url = "http://localhost:8080/bankapp_v2/customeropenaccount";
    fetch(url,{
        method : 'POST', body : JSON.stringify({
            custUserName : document.getElementById('custusername').value,
            custFname : document.getElementById('custfname').value,
            custLname : document.getElementById('custlname').value,
            custGender : document.getElementById('gender').value,
            custDob : document.getElementById('myDate').value,
            custMobileno : document.getElementById('custmobileno').value,
            custPan : document.getElementById('custpan').value,
            custCity : document.getElementById('custcity').value,
            custState : document.getElementById('custstate').value,
            openingbalance : document.getElementById('openingbalance').value
        }),
        headers : {'Content-type' : 'application/json; charset=UTF-8',},
    })
    alert("Account Creation Successfully");
}