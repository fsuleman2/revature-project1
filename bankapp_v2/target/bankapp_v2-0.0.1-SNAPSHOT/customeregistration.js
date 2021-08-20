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
btn1.onclick = () => {
    let url = "http://localhost:8080/bankapp_v2/customerregister";
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
    alert("Registration Details Inserted Successfully")
    console.log(document.getElementById('name').value);
    console.log(document.getElementById('email').value);
    console.log(document.getElementById('username').value);
    console.log(document.getElementById('password').value);

}