function navigateToLogin(){
    window.location.replace('/login.jsp')
}
function signup(){
    pw1 = $('#pw1').val();
    pw2 = $('#pw2').val();

    let user ={
        email :$('#email').val() ,
        fname : $('#f_name').val(),
        lname : $('#l_name').val(),
        contact :$('#contact').val() ,
        password :$('#pw1').val() ,
    }
    $.ajax({
        url:'http://localhost:7000/user',
        dataType:'json',
        contentType:'application/json',
        type:'POST',
        async:true,
        data:user,
        success:(response)=>{
            console.log(response);
        },
        error :(err)=>{
            console.log(err)
        }
    })

   /* let data = 'first_name='+user.fname+'&last_name='+user.lname+'&contact='+user.contact+
        '&password='+user.password+'&email='+user.email
    $.ajax({
        url:'http://localhost:8000/user?'+data,
        dataType:'json',
        contentType:'application/json',
        type:'POST',
        async:true,
        data:{},
        success:(response)=>{
            console.log(response);
        },
        error :(err)=>{
           console.log(err)
        }
    })*/
}