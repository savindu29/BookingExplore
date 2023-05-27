<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" type="x-png" href="asserts/favicon.png">

    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="styles/main.css">
    <title>BookingExplore | Home</title>
</head>
<body>
<%--Header--%>
<jsp:include page="header.jsp"/>
<%--Header--%>

<%--Contrnt--%>
<div class="content-outer" style='background: url("https://www.bnesim.com/wp-content/uploads/2018/07/o-BACKPACKING-facebook.jpg") center; background-repeat: no-repeat; background-size: cover;'>
<h1 style="color: black">Find the best deals and book with confidence!</h1>

    <form action="/result-page.jsp" style="width: 100%">
    <div class="reservation-making-outer">
        <div class="reservation-inner">
            <div class="row">
                <div class="col-3 box">
                    <input name="location" type="search" class="search-outer" placeholder="Search here">
                </div>
                <div class="col-3 box date-outer">
                    <div class="date-from date-box">
                        <input type="text" id="from" name="from"  placeholder=" Check In">
                    </div>
                    <div class="date-to date-box">
                        <input type="text" id="to" name="to" placeholder=" Check Out">
                    </div>
                </div>
                <div class="col-4 box passengers-outer">
                    <div class="special-input-outer" >
                        <select name="adults" id="adults" >
                            <option value="1">1 Adult</option>
                            <option value="2">2 Adults</option>
                            <option value="3">3 Adults</option>
                        </select>
                    </div>
                    <div class="special-input-outer">
                        <select name="child" id="children">
                            <option value="1">0 child</option>
                            <option value="1">1 child</option>
                            <option value="2">2 Children</option>
                            <option value="3">3 Children</option>
                        </select>
                    </div>
                    <div class="special-input-outer">
                        <select name="room" id="rooms">
                            <option value="1">1 Room</option>
                            <option value="2">2 Room</option>
                            <option value="3">3 Room</option>
                        </select>
                    </div>
                </div>
                <div class="col-2 box">
                        <button class="btn btn-primary">
                            Search
                        </button>
                </div>

            </div>
        </div>
    </div>
    </form>
</div>
<%--Contrnt--%>
<div class="hotel-outer">
    <div class="row">
        <div class="col-4">
            <div class="image-outer" style="background: url('https://img.freepik.com/free-photo/elegant-hotel-room-with-big-bed_1203-1494.jpg?w=996&t=st=1676412814~exp=1676413414~hmac=e393bdc7734c1b4f345e8195dd19cc9b678a9ace8b6a42bf679aff927d34ef7c')"></div>
        </div>
        <div class="col-4">
            <div class="image-outer" style="background: url('https://mb.cision.com/Public/15396/2381676/84b58501410354a0_400x400ar.jpg')"></div>
        </div>
        <div class="col-4">
            <div class="image-outer" style="background: url('https://img.freepik.com/free-photo/sunset-pool_1203-3192.jpg?w=996&t=st=1676414692~exp=1676415292~hmac=9b2f41d4fc500c2fb695b9452d31c2c98cb146325c280c4085b5e33c86b275e7')"></div>
        </div>


    </div>
</div>
<jsp:include page="main-footer.jsp"/>


<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js"
        integrity="sha256-eTyxS0rkjpLEo16uXTS0uVCS4815lc40K2iVpWDvdSY=" crossorigin="anonymous"></script>
<script src="js/main.js"></script>

</body>
</html>