<%--
  Created by IntelliJ IDEA.
  User: Savindu Panagoda
  Date: 3/25/2023
  Time: 4:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
  <link rel="stylesheet" href="styles/dashboard.scss">
    <script>
        // Call the function when the page loads
    </script>
</head>
<body>
<%--Header--%>
<jsp:include page="header.jsp"/>
<%--Header--%>
<div style="padding: 20px">
    <div class="accordion" id="accordionExample">
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button style='font-family: "Russo One", sans-serif;' class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTree" aria-expanded="true" aria-controls="collapseTree">
                    Hotel Manager
                </button>
            </h2>
            <div id="collapseTree" class="accordion-collapse collapse " data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <div class="container">
                        <div class="row g-3 needs-validation" novalidate>
                            <div class="col-md-6 position-relative">
                                <label for="hotelName" class="form-label">Hotel Name</label>
                                <input type="text" class="form-control" id="hotelName" required>
                                <div class="invalid-tooltip">
                                    Please enter hotel name
                                </div>
                            </div>
                            <div class="col-md-3 position-relative">
                                <label for="starCount" class="form-label">Star Count</label>
                                <select class="form-select" id="starCount" required>
                                    <option selected disabled value="">Choose...</option>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                </select>
                                <div class="invalid-tooltip">
                                    Please select a valid star count.
                                </div>
                            </div>
                            <div class="col-md-3 position-relative">
                                <label for="active-state" class="form-label">Active State</label>
                                <select class="form-select" id="active-state" required>
                                    <option selected disabled value="">Choose...</option>
                                    <option>Active</option>
                                    <option>Not</option>

                                </select>
                                <div class="invalid-tooltip">
                                    Please select a valid star count.
                                </div>
                            </div>
                            <div class="col-md-6 position-relative">
                                <label for="hotel-address" class="form-label">Hotel Address</label>
                                <input type="text" class="form-control" id="hotel-address" required>
                                <div class="invalid-tooltip">
                                    Please enter hotel address
                                </div>
                            </div>
                            <div class="col-md-6 position-relative">
                                <label for="hotel-location" class="form-label">Hotel location</label>
                                <input type="text" class="form-control" id="hotel-location" >

                            </div>
                            <div class="col-md-6 position-relative">
                                <label for="hotel-destination" class="form-label">Destinations</label>
                                <input type="text" class="form-control" id="hotel-destination" required>
                                <div class="invalid-tooltip">
                                    Please enter at least one destination
                                </div>
                            </div>
                            <div class="col-md-3 position-relative">
                                <label for="hotel-type" class="form-label">Hotel Type</label>
                                <select class="form-select" id="hotel-type" required>
                                    <option selected disabled value="">Choose...</option>
                                    <option>Cabana</option>
                                    <option>Bed and breakfast</option>
                                    <option>Hostel</option>
                                    <option>Motel</option>
                                    <option>Guest house</option>
                                    <option>Apartment hotel</option>
                                    <option>Business hotels</option>
                                    <option>Bunkhouse</option>
                                    <option>Resort island</option>
                                    <option>Serviced apartment</option>

                                </select>
                                <div class="invalid-tooltip">
                                    Please select a valid star count.
                                </div>
                            </div>
                            <div class="col-12 position-relative">
                                <input type="file" id="hotel-img" class="form-control" required>
                                <div class="invalid-tooltip">
                                    Please select a image
                                </div>

                            </div>
                            <div class="col-12 ">
                                <img src="" alt="" id="selected-hotel-img"  style="width: 300px"  class="img-thumbnail">

                            </div>
                            <div class="col-12">
                                <button class="btn btn-primary" onclick="saveHotel()">Save Hotel</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button style='font-family: "Russo One", sans-serif;'  class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    Room Manager
                </button>
            </h2>
            <div id="collapseOne" class="accordion-collapse collapse " data-bs-parent="#accordionExample">
                <div class="accordion-body">
<%--                   save room--%>
                    <div class="container">
                        <div class="row">
                            <button class="btn btn-primary" onclick="setHotels()">Load Hotels</button>
                            <div class="col-3" >
                                <label for="hotel">Hotel</label>
                                <select name="" id="hotel" class="form-control mt-2">

                                </select>
                            </div>
                            <div class="col-3">
                                <label for="deals">Deals</label>
                                <select name="" id="deals" class="form-control mt-2">
                                    <option value="1"> Available</option>
                                    <option value="0"> Unavailable</option>
                                </select>
                            </div>
                            <div class="col-3">
                                <label for="type">Type</label>
                                <input type="text" id="type" class="form-control mt-2">
                            </div>
                            <div class="col-3">
                                <label for="cost">Cost</label>
                                <input type="number" id="cost" class="form-control mt-2">
                            </div>
                            <div class="col-12 mt-4">
                                <label for="description">Description</label>
                                <textarea name="" id="description" class="form-control mt-2" rows="4"></textarea>
                            </div>
                            <div class="col-12 mt-4" >
                                <p style="text-align: right">
                                    <button onclick="saveRoom()" class="btn btn-primary">Save room</button>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button style='font-family: "Russo One", sans-serif;' class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    Image Manager
                </button>
            </h2>
            <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <div class="container">
                        <div class="row">
                            <div class="col-12 mb-3">
                                <label for="room">Room</label>
                                <input type="text" class="form-control" id="room">
                            </div>
                            <div class="col-12">
                                <input type="file" id="file" class="form-control">
                                <p style="text-align: right">
                                    <button type="button" onclick="saveImage()" class="btn btn-danger mt-2 ">Upload Image</button>
                                </p>
                            </div>
                            <div class="col-12">
                                <img src="" alt="" id="selected-img"  style="width: 300px"  class="img-thumbnail">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.min.js" integrity="sha384-heAjqF+bCxXpCWLa6Zhcp4fu20XoNIA98ecBC1YkdXhszjoejr5y9Q77hIrv8R9i" crossorigin="anonymous"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="js/dashboard.js"></script>
<script type="application/javascript">
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function () {
        'use strict'

        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.querySelectorAll('.needs-validation')

        // Loop over them and prevent submission
        Array.prototype.slice.call(forms)
            .forEach(function (form) {
                form.addEventListener('submit', function (event) {
                    if (!form.checkValidity()) {
                        event.preventDefault()
                        event.stopPropagation()
                    }

                    form.classList.add('was-validated')
                }, false)
            })
    })()


    function setHotels(){


        $.ajax({
            url: 'http://localhost:7000/hotel?type=list&location=',
            dataType: 'json',
            contentType: 'application/json',
            type: 'GET',
            async: true,

            success: function (response) {


                console.log(response.data.hotels) ;
                for(let d of response.data.hotels ){
                    $('#hotel').append(
                        `<option value="${d.id}"> ${d.hotelName}</option>`
                    );
                }
            },
            error :(err)=>{
                console.log(err)
            }
        })
    }



    let imageData;
    function setImage(data , id){
        imageData = data.files[0];
        if(data.files || data.files[0]) {
            let reader = new FileReader();
            reader.onload = (e)=>{
                $(id).attr('src',e.target.result);

            }
            reader.readAsDataURL(data.files[0]);
        }
    }

    $('#file').change(function (){
        setImage(this,'#selected-img')
    })
    $('#hotel-img').change(function (){
        setImage(this,'#selected-hotel-img')
    })


    //====================================================


    function saveHotel(){
        let img = $("#hotel-img")[0].files[0];
        let formData = new FormData();
        formData.append('image', img);
        let hotel = {
            hotelName : $('#hotelName').val(),
            starCount : $('#starCount').val(),
            address : $('#hotel-address').val(),
            activeState : $('#active-state').val(),
            location : $('#hotel-location').val(),
            destination : $('#hotel-destination').val(),
            type : $('#hotel-type').val(),
            img : img
        }
        console.log(hotel);

        $.ajax({
            url:'http://localhost:7000/hotel?type=hotel',
            dataType:'json',
            contentType:'application/json',
            type:'POST',
            async:true,
            data:JSON.stringify(hotel),
            success:(response)=>{
                console.log(response);
                if(response.code===201){
                    alert(response.message);

                }else{
                    alert("try again : "+response.message)
                }
            },
            error :(err)=>{
                console.log(err +"Here error")
            }
        })
    }


    function saveRoom(){
        let room ={
            type :$('#type').val(),
            deals :$('#deals').val(),
            description :$('#description').val(),
            hotel :$('#hotel').val(),
            cost :$('#cost').val(),

        }

        $.ajax({
            url:'http://localhost:7000/room?type=room',
            dataType:'json',
            contentType:'application/json',
            type:'POST',
            async:true,
            data:JSON.stringify(room),
            success:(response)=>{
                console.log(response);
                if(response.code===201){
                    alert(response.message);

                }else{
                    alert("try again : "+response.message)
                }
            },
            error :(err)=>{
                alert(err)
            }
        })
    }
    function saveImage(){
        let data = new FormData();
        data.append( 'image',imageData );
        console.log(data);
        console.log(imageData);
        $.ajax({
            url: 'http://localhost:7000/room?type=image',
            data: data,
            processData: false,
            type: 'POST',
            success: function ( data ) {
                alert( data );
            }
        });
    }


</script>
</body>
<jsp:include page="main-footer.jsp"/>
</html>
