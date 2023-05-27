function navigateToSignUp(){
    window.location.replace('/signup.jsp')
}
/*

function login(){


    let user ={
        email :$('#email').val() ,
        password :$('#pw1').val() ,
    }
    $.ajax({
        url:'http://localhost:7000/user?type=login',
        dataType:'json',
        contentType:'application/json',
        type:'POST',
        async:true,
        data:JSON.stringify(user),
        success:(response)=>{
            console.log(response);
            if(response.code===200){
                alert(response.message);
            }else{
                alert("try again : "+response.message)
            }
        },
        error :(err)=>{
            console.log(err)
        }
    })


}*/
