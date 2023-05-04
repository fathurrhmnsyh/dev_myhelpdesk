<!DOCTYPE html>
<html>

<head>
    <style>
        /* tr:nth-child(even) {
                background-color: #f2f2f2;
            } */


        @page {
            /* size: A4; */
            margin: 15px 15px 12px 12px !important;
            padding: 0px 0px 0px 0px !important;
        }
        
        </style>
        <meta charset="UTF-8">
        @include('pages/cons_control.stok/report/css_')
</head>

<body>
    <p style="font-size:14px; margin-top:0px"><b>PT. TRIMITRA CHITRAHASTA</b></p>
    <p style="font-size:18px;text-align: center; margin-top:0px;"><b><u>LAPORAN PENGELUARAN BARANG CONSUMABLE </u><b></p>
        <div style="font-size: 14px" class="table-head-left">
            <table>
                <tr>
                    <td>{{$item}}</td>
                </tr>
            </table>
        </div>
        <div style="font-size: 14px" class="table-head-right">
            <table class="table11" align="right">
                <tr>
                    <td></td>
                </tr>
            </table>
        </div>
        <br><br>
    <table class="table1 table-striped table-bordered" cellpadding="3" cellspacing="0" width="100%">
    <tr>
        <td align="center" style="width: 0.5cm">No</td>
        <td align="center" style="width: 5cm">Nama Barang</td>
        <td align="center" style="width: 4.7cm">Nama Pengambil</td>
        <td align="center" style="width: 4cm">Bagian</td>
        <td align="center" style="width: 2.9cm">Tanggal</td>
        <td align="center" style="width: 1.5cm">Jumlah</td>
    </tr>
    @php $i=1 @endphp
    @foreach($data as $t)
    <tr>
        
        <td style="vertical-align: text-top; font-size:12" >{{ $i++ }}</td>
        <td style="vertical-align: text-top; font-size:12">{{$t->barang_name}}</td>
        <td style="vertical-align: text-top; font-size:12">{{$t->name}}</td>
        <td style="vertical-align: text-top; font-size:12">{{$t->section}}</td>
        <td style="vertical-align: text-top; font-size:12">{{$t->date}}</td>
        <td align="center" style="vertical-align: text-top; font-size:12">{{$t->jumlah}}</td>
    </tr>
    @endforeach
    </table>
    <table class="table2 table-striped table-bordered" cellpadding="3" cellspacing="0" width="100%">
        <tr>
            <td align="center" colspan="5">Total</td>
            <td align="center" style="width: 1.6cm">{{$jumlah}}</td>
            {{-- <td style="width: 3.1cm"></td>
            <td style="width: 3.2cm" align="center">Nama Jelas</td>
            <td style="width: 3cm" align="center">Jabatan</td>
            <td style="width: 3cm" align="center">Departmen</td>
            <td style="width: 3cm" align="center">Tanda Tangan</td>
            <td style="width: 3.5cm" align="center">Tanggal</td> --}}
        </tr>
    </table>
    <p style="font-size: 11px; text-align:center"> <?php 
        date_default_timezone_set('Asia/Jakarta');
        echo date('d-m-Y h:i a')
        ?></p>
   
    
    
    
    
</body>

</html>
