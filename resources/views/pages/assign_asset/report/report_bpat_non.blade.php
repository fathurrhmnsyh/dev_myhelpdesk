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
        @include('pages/assign_asset/report/css_')
</head>

<body>
    <p style="font-size:14px; margin-top:0px"><b>PT. TRIMITRA CHITRAHASTA</b></p>
    <p style="font-size:18px;text-align: center; margin-top:0px;"><b><u>BUKTI PENERIMAAN AKTIVA TETAP </u><b></p>
    <div style="font-size: 14px" class="table-head-left">
        <table>
            <tr>
                <td>AKTIVA DARI </td>
                <td>: BELI / TRANSFER</td>
            </tr>
            <tr>
                <td>SPTAT/BTB No</td>
                <td>:</td>
            </tr>
            <tr>
                <td>SPTAT/BTB Date</td>
                <td>:</td>
            </tr>
        </table>
    </div>
    <div style="font-size: 14px" class="table-head-right">
        <table class="table11" align="right">
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>BPAT No</td>
                <td>:</td>
                <td></td>
            </tr>
            <tr>
                <td>BPAT Date</td>
                <td>:</td>
                <td><?php 
                    date_default_timezone_set('Asia/Jakarta');
                    echo date('d-m-Y')
                    ?></td>
            </tr>
        </table>
    </div>
    <table class="table1 table-striped table-bordered" cellpadding="3" cellspacing="0" width="100%">
    <tr>
        <td align="center" style="width: 0.5cm">No</td>
        <td align="center" style="width: 5.7cm">Nama & Code Aktiva</td>
        <td align="center" style="width: 2.9cm">Total Unit</td>
        <td align="center" style="width: 6cm">Accessories</td>
        <td align="center" style="width: 3.5cm">Keterangan</td>
    </tr>
    <tr>
        <td style="height: 5cm; vertical-align: text-top; font-size:12" ></td>
        <td style="vertical-align: text-top; font-size:12">
            {{$data->fa_code}} 
            <br> {{$data->asset_merk}}
            <br> {{$data->asset_type}}
            <br> {{$data->serial_number}}
        </td>
        <td style="vertical-align: text-top; font-size:12"></td>
        <td style="vertical-align: text-top; font-size:12"></td>
        <td style="vertical-align: text-top; font-size:12"></td>
    </tr>
    </table>
    <table class="table2 table-striped table-bordered" cellpadding="3" cellspacing="0" width="100%">
        <tr>
            <td style="width: 3.1cm"></td>
            <td style="width: 3.2cm" align="center">Nama Jelas</td>
            <td style="width: 3cm" align="center">Jabatan</td>
            <td style="width: 3cm" align="center">Departmen</td>
            <td style="width: 3cm" align="center">Tanda Tangan</td>
            <td style="width: 3.5cm" align="center">Tanggal</td>
        </tr>
        <tr>
            <td>Dibuat Oleh</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Disetujui Oleh</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td style="height:0.5cm"></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Diserahkan Oleh</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Diterima Oleh</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>
    <p style="font-size: 12px; margin-top:0px">LD-ACC-06 Rev 01</p>
    <br>
    <p style="font-size:14px; margin-top:0px"><b>PT. TRIMITRA CHITRAHASTA</b></p>
    <p style="font-size:18px;text-align: center; margin-top:0px;"><b><u>BUKTI PENERIMAAN AKTIVA TETAP </u><b></p>
    <div style="font-size: 14px" class="table-head-left">
        <table>
            <tr>
                <td>AKTIVA DARI </td>
                <td>: BELI / TRANSFER</td>
            </tr>
            <tr>
                <td>SPTAT/BTB No</td>
                <td>:</td>
            </tr>
            <tr>
                <td>SPTAT/BTB Date</td>
                <td>:</td>
            </tr>
        </table>
    </div>
    <div style="font-size: 14px" class="table-head-right">
        <table class="table11" align="right">
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>BPAT No</td>
                <td>:</td>
                <td></td>
            </tr>
            <tr>
                <td>BPAT Date</td>
                <td>:</td>
                <td><?php 
                    date_default_timezone_set('Asia/Jakarta');
                    echo date('d-m-Y')
                    ?></td>
            </tr>
        </table>
    </div>
    <table class="table1 table-striped table-bordered" cellpadding="3" cellspacing="0" width="100%">
    <tr>
        <td align="center" style="width: 0.5cm">No</td>
        <td align="center" style="width: 5.7cm">Nama & Code Aktiva</td>
        <td align="center" style="width: 2.9cm">Total Unit</td>
        <td align="center" style="width: 6cm">Accessories</td>
        <td align="center" style="width: 3.5cm">Keterangan</td>
    </tr>
    <tr>
        <td style="height: 5cm; vertical-align: text-top; font-size:12" ></td>
        <td style="vertical-align: text-top; font-size:12">
            {{$data->fa_code}} 
            <br> {{$data->asset_merk}}
            <br> {{$data->asset_type}}
            <br> {{$data->serial_number}}
        </td>
        <td style="vertical-align: text-top; font-size:12"></td>
        <td style="vertical-align: text-top; font-size:12"></td>
        <td style="vertical-align: text-top; font-size:12"></td>
    </tr>
    </table>
    <table class="table2 table-striped table-bordered" cellpadding="3" cellspacing="0" width="100%">
        <tr>
            <td style="width: 3.1cm"></td>
            <td style="width: 3.2cm" align="center">Nama Jelas</td>
            <td style="width: 3cm" align="center">Jabatan</td>
            <td style="width: 3cm" align="center">Departmen</td>
            <td style="width: 3cm" align="center">Tanda Tangan</td>
            <td style="width: 3.5cm" align="center">Tanggal</td>
        </tr>
        <tr>
            <td>Dibuat Oleh</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Disetujui Oleh</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td style="height:0.5cm"></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Diserahkan Oleh</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Diterima Oleh</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>
    <p style="font-size: 12px; margin-top:0px">LD-ACC-06 Rev 01</p>
    
    
    
</body>

</html>
