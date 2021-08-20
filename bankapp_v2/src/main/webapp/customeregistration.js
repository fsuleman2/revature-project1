///*
//btn-register
//name
//email
//username
//password
//private String name;
//	private String email;
//	private String username;
//	private String password;
//*/
function dateCheck(form) {
    // var start = form.name3.value;
    // var end = form.name4.value;
    var password = form.password.value;
    
    if(password.length<8){
        document.getElementById("errorPassword").innerHTML = "Password must be of 8 characters";
        return false;
    }else{
        // btn1.onclick = () => {
            let url = "http://localhost:8085/bankapp_v2/customerregister";
            fetch(url,{
                method : 'POST', body: JSON.stringify({
                    name : document.getElementById('name').value,
                    email : document.getElementById('email').value,
                    username : document.getElementById('username').value,
                    password : document.getElementById('password').value
                }),
                headers: {
                    'Content-type': 'application/json; charset=UTF-8',
                  },
            })
        }
        alert("Registration Details Inserted Successfully")
        location.href="openaccount.html";
        console.log(document.getElementById('name').value);
        console.log(document.getElementById('email').value);
        console.log(document.getElementById('username').value);
        console.log(document.getElementById('password').value);
      
        }