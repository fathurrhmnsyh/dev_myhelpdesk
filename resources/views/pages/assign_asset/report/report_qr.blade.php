<html>

<head>
    <title>Report Used Asset</title>
    
    {{-- <link rel="stylesheet" href="{{used_asset('backend/vendor/bootstrap/css/bootstrap.min.css')}}"> --}}

</head>


<body>
    <style>
     .box{
    width: 250px;
    height: 300px;
    background-color: #558ED5;
    border: 1px solid black;
    }
    .box3{
    width: 210px;
    height: 209px;
    margin-top: -288px;
    margin-left:20px;
    background-color: #fff;
    }
    .image{
        margin-top: 15px;
        /* border:1px solid red; */
        padding-left: 24px;
    }
    .text{
        margin-top: 10px;
        padding-left: 5px;
    }
    .text p {
        font-size: 12px;
        margin-top: -12px;
        color: red;
    }
    .box2{
        margin-left:20px;
        width: 210px;
        height: 50px;
        background-color: #fff;
    }
    .img-right{
            width:60px;
            height:30px;
            margin-top:20px;
            margin-left: 160px;
        }
    .btn {
        margin-top: 25px;
    }

    

</style>
<div class="col-12">
    <div class="card">
        <!-- /.card-header -->
        <div class="card-body">
            <div class="box">
                <div class="image">
                    {!! $qrcode !!}
                </div>
                <div class="box2">
                    <div class="text">
                        <h5><b>PROPERTY OF</b></h5>
                        <p><b>Do not remove this!!<b></p>
                    </div>
                </div>
                
            </div>
            <div class="box3">

            </div>

            <img class="img-right" src="{{url('backend\dist\images\logo-tch.png')}}" alt="">
            
            
           
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</div>



</body>

</html>
