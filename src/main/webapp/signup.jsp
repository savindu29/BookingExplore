<%--
  Created by IntelliJ IDEA.
  User: 1savi
  Date: 3/1/2023
  Time: 7:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="styles/signup.css">
</head>
<body>
<%--Header--%>
<jsp:include page="header.jsp"/>
<%--Header--%>


<div class="login-outer">
    <div class="inner">
        <div class="social-media">
            <div >
                <img class="icon" src="https://cdn-icons-png.flaticon.com/512/300/300221.png" alt="">
            </div>
            <br>
            <div >
                <img class="icon" src="https://cdn-icons-png.flaticon.com/512/5968/5968764.png" alt="">
            </div>
            <br>
            <div >
                <img class="icon" src="https://cdn-icons-png.flaticon.com/512/4138/4138124.png" alt="">
            </div>
            <br>
            <div >
                <img class="icon" src="https://cdn-icons-png.flaticon.com/512/3670/3670151.png" alt="">
            </div>
        </div>
        <div class="box box-left">

        </div>
        <div class="box box-right">

            <div class="signup-details-outer">
                <h3> Welcome Back </h3>
                <p>Signup To Continue</p>
                <form>
                    <div class="col">
                         <label for="email">Email address</label>
                         <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="">
                    </div>
                    <div class="row">
                        <div class="col">
                            <label for="f_name" class="form-label">First Name</label>
                            <input id="f_name" type="text" class="form-control" >
                        </div>
                        &nbsp;
                        <div class="col">
                            <label for="l_name" class="form-label">Last Name</label>
                            <input id="l_name" type="text" class="form-control" >
                        </div>
                    </div>
                    <div class="col">
                        <label for="contact">Contact Number</label>
                        <input type="tel" class="form-control" id="contact" aria-describedby="emailHelp" placeholder="">
                    </div>

                    <div class="row">
                        <div class="col">
                            <label for="pw1" class="form-label">Password</label>
                            <input id="pw1" type="password" class="form-control" >
                        </div>
                    </div>
                    <br>
                    <input type="button" value="Register"  onclick="signup()" class="btn btn-info">
                    <hr>
                    <input type="button" onclick="navigateToLogin()" value="Already Have An Account" class="btn btn-dark">
                </form>

            </div>
        </div>

    </div>
</div>



<jsp:include page="main-footer.jsp"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="js/signup.js"></script>

</body>
</html>
