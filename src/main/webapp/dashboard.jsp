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
</head>
<body>
<%--Header--%>
<jsp:include page="header.jsp"/>
<%--Header--%>
<div style="padding: 20px">
    <div class="accordion" id="accordionExample">
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    Save Room
                </button>
            </h2>
            <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
                <div class="accordion-body">
<%--                   save room--%>
                    <div class="container">
                        <div class="row">
                            <div class="col-3">
                                <label for="hotel">Hotel</label>
                                <select name="" id="hotel" class="form-control mt-2">
                                    <option value="1"> Hilton</option>
                                    <option value="2"> Shangri-la</option>
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
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
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
    let imageData;
    function setImage(data){
        imageData = data.files[0];
        if(data.files || data.files[0]) {
            let reader = new FileReader();
            reader.onload = (e)=>{
                $('#selected-img').attr('src',e.target.result);

            }
            reader.readAsDataURL(data.files[0]);
        }
    }

    $('#file').change(function (){
        setImage(this)
    })

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
                console.log(err)
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
</html>
