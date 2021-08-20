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
function dateCheck(form) {
    let pan =  document.getElementById('custpan').value;
    var regex = /([A-Z]){5}([0-9]){4}([A-Z]){1}$/;
    if(!regex.test(pan)){
        alert("Please Enter a Valid PAN");
        return;
    }
    else{
        let url = "http://localhost:8085/bankapp_v2/customeropenaccount";
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
}