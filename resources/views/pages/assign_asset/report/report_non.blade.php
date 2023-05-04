<html>

<head>
    <title>Report Used Asset</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    {{-- <link rel="stylesheet" href="{{used_asset('backend/vendor/bootstrap/css/bootstrap.min.css')}}"> --}}

</head>


<body>
    <style type="text/css">
        th, td {
        padding-left: 8px;
        }
		table tr td,
		table tr th{
			font-size: 10pt;
		}
        .img-left{
        width:100px;
        height:40px;
        }
        .img-right{
            width:100px;
            height:50px;
            margin-top:-80px;
        }
        h4{
            margin-top:-20px;
        }
        h5{
            margin-top:-4px;
        }
	</style>
	<center>
        <div class="col" align="left">
            <img class="img-left" src="{{public_path('backend\dist\img\myhd-logo-login.png')}}" alt="">
        </div>
		<h5>PT TRIMITRA CHITRAHASTA</h5>
        <h6>DATA PENGGUNAAN {{$codes}}</h6>
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
            <td width="200px">Nama User</td>
            <td> &nbsp;{{$data->employee_name}}</td>
        </tr>
        <tr>
            <td width="200px">Section</td>
            <td>&nbsp;{{$data->section}}</td>
        </tr>
        <tr>
            <td width="200px">NIK</td>
            <td>&nbsp;{{$data->nik}}</td>
        </tr>
        <tr>
            <th bgcolor="#D5D8DC" colspan="2">Info</th>
        </tr>
        <tr>
            <td width="200px">Tanggal BPAT</td>
            <td> &nbsp;{{$data->bpat_dates}} </td>
        </tr>
        <tr>
            <td width="200px">Tanggal QR</td>
            <td> &nbsp;{{$data->qr_date}} </td>
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
        
        {{-- <tr>
            <td width="200px">Processor</td>
            <td> &nbsp;{{$data->p_merk}} {{$data->p_jenis}} {{$data->p_tipe}} </td>
        </tr>
        <tr>
            <td width="200px">RAM</td>
            <td>&nbsp;{{$data->r_tipe}}, {{$data->r_kapasitas}} GB,{{$data->r_slot}} Channel</td>
        </tr>
        <tr>
            <td width="200px">Hardisk Drive</td>
            <td>&nbsp;{{$data->hd_merk}},&nbsp;{{$data->hd_tipe}},&nbsp;{{$data->hd_kapasitas}} GB
            </td>
        </tr>
        <tr>
            <td width="200px">SSD Drive</td>
            <td>&nbsp;{{$data->ssd_merk}},&nbsp;{{$data->ssd_tipe}},&nbsp;{{$data->ssd_kapasitas}} GB
            </td>
        </tr>
        <tr>
            <td width="200px">Graphic Card</td>
            <td>&nbsp;{{$data->vga_merk}}&nbsp;{{$data->vga_tipe}}&nbsp;{{$data->vga_kapasitas}}</td>
        </tr>
        <tr>
            <td width="200px">Network</td>
            <td>&nbsp;{{$data->eth_name}}&nbsp;{{$data->eth_mac}}</td>
        </tr>
        <tr>
            <td width="200px">Wireless</td>
            <td>&nbsp;{{$data->wireless_name}}&nbsp;: <br>{{$data->wireless_mac}}</td>
        </tr>
        <tr>
            <td width="200px">Bluetooth</td>
            <td>&nbsp;{{$data->bluetooth_name}}&nbsp;{{$data->bluetooth_mac}}</td>
        </tr>
        <tr>
            <td width="200px">Optical Drive</td>
            <td>&nbsp;{{$data->optical_drive}}</td>
        </tr> --}}
    </table>
    <p style="font-size: 11px; text-align:center"> <?php 
        date_default_timezone_set('Asia/Jakarta');
        echo date('d-m-Y h:i a')
        ?></p>


</body>

</html>
