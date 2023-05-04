<html>

<head>
    <title>Report Spesifikasi</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    {{-- <link rel="stylesheet" href="{{used_asset('backend/vendor/bootstrap/css/bootstrap.min.css')}}"> --}}

</head>


<body>
    <style type="text/css">
        th,
        td {
            padding-left: 8px;
        }

        table tr td,
        table tr th {
            font-size: 10pt;
        }

        .img-left {
            width: 100px;
            height: 40px;
        }

        .img-right {
            width: 100px;
            height: 50px;
            margin-top: -80px;
        }

        h4 {
            margin-top: -20px;
        }

        h5 {
            margin-top: -4px;
        }

    </style>
    <center>
        <div class="col" align="left">
            <img class="img-left" src="{{public_path('backend\dist\img\myhd-logo-login.png')}}" alt="">
        </div>
        <h5>PT TRIMITRA CHITRAHASTA</h5>
        <h6>DATA SPESIFIKASI {{$codes}}</h6>
        <div class="col" align="right">
            <img class="img-right" src="{{public_path('backend\dist\images\logo-tch.png')}}" alt="">
        </div>
        <br>
    </center>


    <table border="0.5" width="700px" class="table-1">


        <tr>
            <th bgcolor="#D5D8DC" colspan="2">Data Teknis</th>
        </tr>
        <tr>
            <td width="200px">Kode Fixed Asset</td>
            <td> &nbsp;{{$data->fa_code}}</td>
        </tr>
        <tr>
            <td width="200px">PPB No</td>
            <td> &nbsp;{{$data->no_ppb}}</td>
        </tr>
        <tr>
            <td width="200px">Purchase Date</td>
            <td> &nbsp;{{$data->purchase_date}}</td>
        </tr>
        <tr>
            <th bgcolor="#D5D8DC" colspan="2">Spesifikasi</th>
        </tr>
        <tr>
            <td width="200px">Merk</td>
            <td> &nbsp;{{$data->asset_merk}}</td>
        </tr>
        <tr>
            <td width="200px">Tipe</td>
            <td> &nbsp;{{$data->asset_type}}</td>
        </tr>
        <tr>
            <td width="200px">Serial Number</td>
            <td> &nbsp;{{$data->serial_number}} </td>
        </tr>

        <tr>
            <td width="200px">Processor</td>
            <td> &nbsp;{{$data->p_merk}} {{$data->p_jenis}} {{$data->p_type}} {{$data->p_speed !== null? $data->p_speed .' Ghz': ''}} </td>
        </tr>
        <tr>
            <td width="200px">RAM</td>
            <td>&nbsp;{{$data->r_size !== null? $data->r_size .'GB' : ''}}&nbsp;{{$data->r_type}}&nbsp;{{$data->r_slot !== null? $data->r_slot .'Channel':''}} </td>
        </tr>
        <tr>
            <td width="200px">Hardisk Drive</td>
            <td>&nbsp;{{$data->hd1_merk}} &nbsp;{{$data->hd1_type}} &nbsp;
                {{$data->hd1_size !== null? $data->hd1_size  .'GB' : ''}}
            </td>
        </tr>
        <tr>
            <td width="200px">Hardisk Drive</td>
            <td>&nbsp;{{$data->hd2_merk}}&nbsp;{{$data->hd2_type}}&nbsp;{{$data->hd2_size  !== null? $data->hd2_size .'GB' : ''}}
            </td>
        </tr>
        <tr>
            <td width="200px">SSD Drive</td>
            <td>&nbsp;{{$data->ssd_merk}}&nbsp;{{$data->ssd_type}}&nbsp;{{$data->ssd_size !== null? $data->ssd_size .'GB' : ''}}
            </td>
        </tr>
        <tr>
            <td width="200px">Graphic Card</td>
            <td>&nbsp;{{$data->vga_external}}</td>
        </tr>
        <tr>
            <td width="200px">Network</td>
            <td>&nbsp;{{$data->lan_name}}&nbsp;{{$data->lan_mac}}</td>
        </tr>
        <tr>
            <td width="200px">Wireless</td>
            <td>&nbsp;{{$data->wlan_name}}&nbsp; <br>{{$data->wlan_mac}}</td>
        </tr>
    </table>
    <p style="font-size: 11px; text-align:center"> <?php 
        date_default_timezone_set('Asia/Jakarta');
        echo date('d-m-Y h:i a')
        ?></p>



</body>

</html>
