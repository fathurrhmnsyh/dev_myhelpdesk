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
    <p style="font-size:18px;text-align: center; margin-top:0px;"><b><u>LAPORAN PEMASUKAN BARANG CONSUMABLE </u><b></p>
    
    <table class="table1 table-striped table-bordered" cellpadding="3" cellspacing="0" width="100%">
    <tr>
        <td align="center" style="width: 0.5cm">No</td>
        <td align="center" style="width: 5.7cm">Nama Barang</td>
        <td align="center" style="width: 2.9cm">Tanggal</td>
        <td align="center" style="width: 6cm">No PPB</td>
        <td align="center" style="width: 3.5cm">Jumlah</td>
    </tr>
    @php $i=1 @endphp
    @foreach($data as $t)
    <tr>
        
        <td style="vertical-align: text-top; font-size:12" >{{ $i++ }}</td>
        <td style="vertical-align: text-top; font-size:12">{{$t->barang_name}}</td>
        <td style="vertical-align: text-top; font-size:12">{{$t->date}}</td>
        <td style="vertical-align: text-top; font-size:12">{{$t->no_ppb}}</td>
        <td align="center" style="vertical-align: text-top; font-size:12">{{$t->jumlah}}</td>
    </tr>
    @endforeach
    </table>
    <table class="table2 table-striped table-bordered" cellpadding="3" cellspacing="0" width="100%">
        <tr>
            <td align="center" colspan="5">Total</td>
            <td align="center" style="width: 3.6cm">{{$jumlah}}</td>
            {{-- <td style="width: 3.1cm"></td>
            <td style="width: 3.2cm" align="center">Nama Jelas</td>
            <td style="width: 3cm" align="center">Jabatan</td>
            <td style="width: 3cm" align="center">Departmen</td>
            <td style="width: 3cm" align="center">Tanda Tangan</td>
            <td style="width: 3.5cm" align="center">Tanggal</td> --}}
        </tr>
    </table>
   
    
    
    
    
</body>

</html>
