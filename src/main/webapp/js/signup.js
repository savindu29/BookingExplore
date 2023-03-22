function navigateToLogin(){
    window.location.replace('/login.jsp')
}
function signup(){


    let user ={
        email :$('#email').val() ,
        first_name : $('#f_name').val(),
        last_name : $('#l_name').val(),
        contact :$('#contact').val() ,
        password :$('#pw1').val() ,
    }
    $.ajax({
        url:'http://localhost:7000/user',
        dataType:'json',
        contentType:'application/json',
        type:'POST',
        async:true,
        data:JSON.stringify(user),
        success:(response)=>{
            console.log(response);
            if(response.code===201){
                alert(response.message);
            }else{
                alert("try again : "+response.message)
            }
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