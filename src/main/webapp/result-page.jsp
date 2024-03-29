<%--
  Created by IntelliJ IDEA.
  User: 1savi
  Date: 2/28/2023
  Time: 4:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="styles/result-page.css">
    <style>
        .result-inner {
            width: 100%;
            height: auto;
            border: 1px solid #2c3e50;
            border-radius: 5px;
            display: flex;
            padding: 10px;
            margin-bottom: 20px;
        }
        .result-inner-left {
            width: 200px;
            height: 200px;
            display: flex;
            align-items: center;
            justify-content: center;

        }
        .img-thumbnail {
            width: 90%;
            height: 90%;
        }
        .result-inner-right {
            flex: 1;
            height: 200px;
            display: flex;
            flex-direction: column;
        }
        .details {
            height: 150px;
            margin-bottom: 30px;
        }

        h4 {
            color: #2980b9;
            margin: 0;
        }

        .desc {
            color: #2c3e50;
            font-size: 14px;
            text-align: justify;
            margin: 0;
        }

        .result-button {

            flex: 1;
            display: flex;
            justify-content: flex-end;

        }
        .book-button{
            border: 4px solid white;
        }
        .bold-text{
            font-weight: bold;
        }



    </style>
    <title>Result Page</title>
</head>
<body>

<%--Header--%>
<jsp:include page="header.jsp"/>
<%--Header--%>

<%
    System.out.println();
%>


<%--content--%>
<div class="main-outer">
    <div class="row" style="margin: 0">
        <div class="left-outer context col-3">
            <form action="/result-page.jsp">
            <div class="search-wrapper">
                <div class="row" style="margin: 0">
                    <div class="col-12 input-outer">
                        <input type="search"
                               placeholder="Search here"
                               class="search-outer"
                        name="location">
                    </div>
                    <div class="col-12 input-outer  date-outer">
                        <div class="date-from date-box">
                            <input type="text" id="from" name="from"  placeholder=" Check In">
                        </div>
                        <div class="date-to date-box">
                            <input type="text" id="to" name="to" placeholder=" Check Out">
                        </div>
                    </div>
                    <div class="col-12 input-outer  special-outer">
                        <div class="special-input-outer" style="margin-right: 2px">
                            <select name="">
                                <option value="1">1 Adult</option>
                                <option value="2">2 Adults</option>
                                <option value="3">3 Adults</option>
                            </select>
                        </div>
                        <div class="special-input-outer" style="margin-right: 2px">
                            <select name="">
                                <option value="0">0 Child</option>
                                <option value="1">1 Child</option>
                                <option value="2">2 Child</option>
                                <option value="3">3 Child</option>
                            </select>
                        </div>
                        <div class="special-input-outer">
                            <select name="">
                                <option value="1">1 Room</option>
                                <option value="2">2 Rooms</option>
                                <option value="3">3 Rooms</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-12 input-outer">
                        <button type="submit" class="btn btn-primary btn-sm">
                            Search
                        </button>
                    </div>
                </div>


            </div>
            </form>
            <div class="filter-wrapper">
                <h5>Fun things to do</h5>
                <ul>
                    <li><input type="checkbox"> Hiking</li>
                    <li><input type="checkbox"> Walking tours</li>
                    <li><input type="checkbox"> Spa facilities</li>
                    <li><input type="checkbox"> Evening entertainment</li>
                </ul>
            </div>
            <div class="filter-wrapper">
                <h5>Property Type</h5>
                <ul>
                    <li><input type="checkbox"> Hotels</li>
                    <li><input type="checkbox"> Guesthouses</li>
                    <li><input type="checkbox"> Homestays</li>
                    <li><input type="checkbox"> Apartments</li>
                </ul>
            </div>
        </div>
        <div class=" context col-9 ">
            <p class="alert alert-dark">
                <span id="data-count"></span> Properties Found in  <span id="search-location"></span>
            </p>
            <div class="result-outer" id="data-set">
                <img src="" alt="">

            </div>
        </div>
    </div>
</div>
<%--content--%>




<jsp:include page="main-footer.jsp"/>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js"
        integrity="sha256-eTyxS0rkjpLEo16uXTS0uVCS4815lc40K2iVpWDvdSY=" crossorigin="anonymous"></script>
<script type="application/javascript">
    let destination = '<%=request.getParameter("location")%>';


    $.ajax({
        url: 'http://localhost:7000/hotel?type=list&location='+destination,
        dataType: 'json',
        contentType: 'application/json',
        type: 'GET',
        async: true,

        success: function (response) {


            console.log(response.data.hotels);
            $('#data-count').text(response.data.dataCount);
            $('#search-location').text(destination+'');
            console.log(response.data.dataCount);
            for(let d of response.data.hotels){
                console.log(response.data.hotels);
                $('#data-set').append(
                    `<div class="result-inner">
                    <div class="result-inner-left">
                        <img class="img-thumbnail"
                        src="https://static.leonardo-hotels.com/image/leonardohotelbucharestcitycenter_room_comfortdouble2_2022_4000x2600_7e18f254bc75491965d36cc312e8111f_1200x780_mobile_3.jpeg"
                        alt="">
                    </div>
                    <div class="result-inner-right">
                        <div class="details ">
                            <h4>`+d.hotelName+`</h4>

                            <p class="desc mt-2 mb-2">
                               Welcome to our hotel located in the heart of <span class='bold-text'>${d.location}</span>.
                               With a prime address at <span class='bold-text'>${d.address}</span>, our hotel offers convenience
                               and tranquility. Whether for business or leisure, indulge in an exceptional experience.
                                Discover vibrant surroundings and explore attractions like <span class='bold-text'>
                                ${d.destination}</span>, or unwind in our state-of-the-art facilities. Our <span class='bold-text'>${d.type}
                                </span> hotel is renowned for its exceptional service, elegant accommodations, and unforgettable experiences.
                                Experience the perfect blend of luxury and comfort at <span class='bold-text'>${d.hotelName}</span>.


                            </p>

                            <p class="alert alert-danger">
                                Deals are available
                            </p>
                        </div>
                        <div class="result-button">
                            <button class="btn-sm btn btn-warning mt-2 book-button" onClick="book();">
                                Book Now
                            </button>
                        </div>
                    </div>
                </div>`
                );
            }
        },
        error :(err)=>{
            console.log(err)
        }
    })



</script>
</body>
</html>
