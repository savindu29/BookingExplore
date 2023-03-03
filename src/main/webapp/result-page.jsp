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
    <title>Result Page</title>
</head>
<body>

<%--Header--%>
<jsp:include page="header.jsp"/>
<%--Header--%>


<%--content--%>
<div class="main-outer">
    <div class="row" style="margin: 0">
        <div class="left-outer context col-3">
            <div class="search-wrapper">
                <div class="row" style="margin: 0">
                    <div class="col-12 input-outer">
                        <input type="search"
                               placeholder="Search here"
                               class="search-outer">
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
                <span id="data-count"></span> Properties Found
            </p>
            <div class="result-outer" id="data-set">

            </div>
        </div>
    </div>
</div>
<%--content--%>




<jsp:include page="main-footer.jsp"/>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js"
        integrity="sha256-eTyxS0rkjpLEo16uXTS0uVCS4815lc40K2iVpWDvdSY=" crossorigin="anonymous"></script>

</body>
</html>
