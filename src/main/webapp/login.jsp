<%--
  Created by IntelliJ IDEA.
  User: 1savi
  Date: 3/1/2023
  Time: 5:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="styles/login.css">
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
           <div class="details-outer">
               <h3> Welcome Back </h3>
               <p>Login To Continue</p>
               <form>
                   <div class="mb-3">
                       <label for="exampleInputEmail1" class="form-label">Email address</label>
                       <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                       <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                   </div>

                   <div class="mb-3">
                       <label for="exampleInputPassword1" class="form-label">Password</label>
                       <input type="password" class="form-control" id="exampleInputPassword1">
                   </div>
                   <div class="mb-3 form-check">
                       <input type="checkbox" class="form-check-input" id="exampleCheck1">
                       <label class="form-check-label" for="exampleCheck1">Check me out</label>
                   </div>
                    <div class="forget">
                   <a  href="">Forget password?</a>
                    </div>
                   <input type="button" value="Login" class="btn btn-warning">
                   <hr>
                   <input type="button" onclick="navigateToSignUp()" value="Create An Account" class="btn btn-dark">
               </form>
           </div>
       </div>
        <div class="box box-right">

        </div>
    </div>
</div>

<jsp:include page="main-footer.jsp"/>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js"
        integrity="sha256-eTyxS0rkjpLEo16uXTS0uVCS4815lc40K2iVpWDvdSY=" crossorigin="anonymous"></script>
<script src="js/login.js"></script>
</body>
</html>
