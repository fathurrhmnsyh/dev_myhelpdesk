<?php

namespace App\Http\Controllers;
use App\MasterAsset;
use App\MasterStatus;
use App\MasterSys;
use App\AssignAsset;
use Carbon\Carbon;
use DataTables;
use DB;
use Auth;
use PDF;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use SimpleSoftwareIO\QrCode\Facades\QrCode;

class AssignAssetController extends Controller
{
    public function index()
    {
        $status_asset = DB::table('itam_master_status')
                        ->select('status_name', 'code')
                        ->get();
        // $location = DB::table('itam_master_location')->get();

        return view('pages/assign_asset/index' , compact("status_asset"));
    }
    public function getdatatables(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('itam_master_asset_assign')
            // ->join('itam_master_status', 'itam_master_asset.id_status_asset','=', 'itam_master_status.code')
            ->join('itam_master_asset_codes', 'itam_master_asset_assign.asset_code','=', 'itam_master_asset_codes.code')
            ->select('id_assign_asset','fa_code', 'written_dates', 'posted_dates', 'voided_dates', 'section','employee_name','asset_location',  'itam_master_asset_codes.name')
            ->where('voided_dates' , '=', null )
            ->get();
            return Datatables::of($data)
            ->editcolumn('written_dates', function($data){
                $dt = $data->written_dates;
                if ($dt != NULL) {
                    return Carbon::parse($dt)->format('d/m/Y');
                } else {
                    return "//";
                }
            })
            ->editcolumn('posted_dates', function($data){
                $dt = $data->posted_dates;
                if ($dt != NULL) {
                    return Carbon::parse($dt)->format('d/m/Y');
                } else {
                    return "//";
                }
            })
            ->editcolumn('voided_dates', function($data){
                $dt = $data->voided_dates;
                if ($dt != NULL) {
                    return Carbon::parse($dt)->format('d/m/Y');
                } else {
                    return "//";
                }
            })
            // ->editColumn('posted_date', function($data){
            //     $data1 = $data->posted_date;
            //     if ($data1 != null) {
            //         return  Carbon::parse($data1)->format('d/m/Y');
            //     } else {
            //         return '//';
            //     }
            // })
            ->addColumn('action', function($data){
                return view('pages.assign_asset._actionMaster', [
                    'model' => $data,
                    'url_print' => route('assign_asset.print', base64_encode($data->fa_code)),
                    'url_print_b' => route('assign_asset.print_b', base64_encode($data->fa_code)),
                    'url_print_qr' => route('assign_asset.print_qr', base64_encode($data->fa_code)),
                ]);
            })->rawColumns(['action'])
            ->make(true);  
        }
    }

    public function get_fa(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('itam_master_asset')
                    ->where('data_status', '=', 'ACTIVE')
                    ->where('id_status_asset', '=', 1)
                    ->where('posted_date', '!=' , null)
                    // ->select('id_master_asset','fa_code','location')
                    ->get();
            return Datatables::of($data)->make(true);        
        }
    }
    public function get_dept(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('employee AS em')
                    ->join('tb_section AS sec', 'em.section_id', '=', 'sec.id')
                    // -select('em.nik', 'em.name', 'sec.section')
                    ->get();
            // dd($data);
            return Datatables::of($data)->make(true);        
        }
    }
    public function get_loc_asset(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('itam_master_asset_location')
                    // ->join('tb_section AS sec', 'em.section_id', '=', 'sec.id')
                    // -select('em.nik', 'em.name', 'sec.section')
                    ->get();
            // dd($data);
            return Datatables::of($data)->make(true);        
        }
    }
    public function store(Request $request)
    {
        if ($request->ajax()){
            $data = new AssignAsset;
            $data->fa_code = $request->fa_code;
            $data->employee_name = $request->employee_name;
            $data->asset_code = $request->asset_code;
            $data->asset_location = $request->asset_location;
            $data->section = $request->section;
            $data->written_dates = Carbon::now()->format('Y-m-d');
            $data->created_by = $request->input_by;
            $data->nik = $request->nik;
            $data->data_status = "ACTIVE";
            $data->posted_dates = Carbon::now()->format('Y-m-d');
            $data->save();

            $fa_code = $request->fa_code;
            $employee = $request->employee_name;
            $status_asset = $request->status_asset;

            //UPDATE STATUS ASSET TO ASSIGN TO USER

            $update = DB::table('itam_master_asset')
            ->where('fa_code', $fa_code)
            ->update([
                'id_status_asset' => 2
            ]);

            //INSERT LOG
            date_default_timezone_set("Asia/Jakarta");
            $date = Carbon::now();
            $time = Carbon::now()->format('H:i:s');
            $status = "ADD";
            $fa_code =  $fa_code;
            $employee =  $employee;
            $user = Auth::user()->name;
            $note = '';
            DB::table('itam_master_asset_assign_log')->insert([
                'fa_code' => $fa_code,
                'employee' => $employee,
                'date' => $date,
                'time' => $time,
                'status_change' => $status,
                'user' => $user,
                'note' => $note
            ]);


        }
        return response()->json([
            'success' => true
        ]);
    }
    public function show_view_detail($id)
    {
        $AAHeader   = DB::table('itam_master_asset_assign')
                        ->join('itam_master_asset', 'itam_master_asset.fa_code', '=', 'itam_master_asset_assign.fa_code')
                        ->join('itam_master_asset_codes', 'itam_master_asset.asset_code','=', 'itam_master_asset_codes.code')
                        ->join('itam_master_status', 'itam_master_asset.id_status_asset','=', 'itam_master_status.code')
                        ->where('id_assign_asset', $id)
                        // ->select()
                        ->first();

        
        $AAHeaderNo = $AAHeader->fa_code;
        // dd($AAHeaderNo);
        // $AADetail   = DB::table('itam_master_asset')
        
        // ->select(
        //     'id_master_asset', 'location', 'asset_code', 'fa_code', 'asset_merk', 'asset_type', 'serial_number', 'purchase_date', 'no_ppb', 'p_jenis', 'p_type', 'p_speed', 'm_merk', 'm_type', 'r_size', 'r_type', 'r_slot', 'hd1_merk', 'hd1_type', 'hd1_size', 'hd2_merk', 'hd2_type', 'hd2_size', 'ssd_merk', 'ssd_type', 'ssd_size', 'vga_external', 'lan_name', 'lan_mac', 'wlan_name', 'wlan_mac', 'id_status_asset', 'data_status', 'written_date', 'posted_date', 'voided_date', 'created_by', 'updated_by')   
        // ->where('fa_code', '=', $MAHeaderNo)
        // ->where('voided_date' , '=', NULL)
        // ->get();

        // dd($IPDetail);

        // dd($id);

        

        // dd($IPCount);

        // dd($MAHeader);
        $output = [
            'header' => $AAHeader,
            // 'detail' => $MADetail,
            // 'count' => $IPCount
        ];

        return response()->json($output);
    }
    public function print(Request $request,$fa_code)
    {
        $get_fa_code = base64_decode($fa_code);

        
        $code = substr($get_fa_code, 2,2);
        $dataCode = DB::table('itam_master_asset_codes')
                    ->where('code', $code)
                    ->select('name', 'code')
                    ->get();
        $codes = $dataCode[0]->name;
        $cc = $dataCode[0]->code;
    
        // dd($cc);

        $data = DB::table('itam_master_asset_assign AS imaa')
        ->join('itam_master_asset AS ima', 'ima.fa_code', '=', 'imaa.fa_code')
        ->join('itam_master_asset_codes AS imac', 'ima.asset_code','=', 'imac.code')
        ->join('itam_master_status AS ims', 'ima.id_status_asset','=', 'ims.code')
        ->where('imaa.fa_code', $get_fa_code)
        ->where('imaa.data_status', '=', 'ACTIVE')
        ->first();

        $fa_code = $data->fa_code;
        $employee = $data->employee_name;
        // dd($data);

        $update = DB::table('itam_master_asset_assign')
            ->where('fa_code', $fa_code)
            ->update([
                'printed_dates' => Carbon::now()
            ]);
        //INSERT LOG
        date_default_timezone_set("Asia/Jakarta");
        $date = Carbon::now();
        $time = Carbon::now()->format('H:i:s');
        $status = "PRINT";
        $fa_code =  $fa_code;
        $employee =  $employee;
        $user = Auth::user()->name;
        $note = '';
        DB::table('itam_master_asset_assign_log')->insert([
            'fa_code' => $fa_code,
            'employee' => $employee,
            'date' => $date,
            'time' => $time,
            'status_change' => $status,
            'user' => $user,
            'note' => $note
        ]);

        

        if ($cc == 'KP'|| $cc == 'SV' || $cc == 'NC'||$cc == 'MP' || $cc == 'NB') {
            $pdf = PDF::loadView('pages.assign_asset.report.report_', [
                'data' => $data,
                'codes' => strtoupper($codes) 
            ]);
            $pdf->setPaper('A4', 'portrait');
            return $pdf->stream();
        }else{
            $pdf = PDF::loadView('pages.assign_asset.report.report_non', [
                'data' => $data,
                'codes' => strtoupper($codes) 
            ]);
            $pdf->setPaper('A4', 'portrait');
            return $pdf->stream();
        }

        

        
    }
    public function print_b(Request $request,$fa_code)
    {
        $get_fa_code = base64_decode($fa_code);
        // dd($get_fa_code);
        
        $code = substr($get_fa_code, 2,2);
        $dataCode = DB::table('itam_master_asset_codes')
                    ->where('code', $code)
                    ->select('name', 'code')
                    ->get();
        $codes = $dataCode[0]->name;
        $cc = $dataCode[0]->code;
        
        
        // dd($codes);

        $data = DB::table('itam_master_asset_assign AS imaa')
        ->join('itam_master_asset AS ima', 'ima.fa_code', '=', 'imaa.fa_code')
        ->join('itam_master_asset_codes AS imac', 'ima.asset_code','=', 'imac.code')
        ->join('itam_master_status AS ims', 'ima.id_status_asset','=', 'ims.code')
        ->where('imaa.fa_code', $get_fa_code)
        ->where('imaa.data_status', '=', 'ACTIVE')
        ->first();
        $fa_code = $data->fa_code;
        $employee = $data->employee_name;
        // dd($data);
        $update = DB::table('itam_master_asset_assign')
        ->where('fa_code', $fa_code)
        ->update([
            'bpat_dates' => Carbon::now()
        ]);

        //INSERT LOG
        date_default_timezone_set("Asia/Jakarta");
        $date = Carbon::now();
        $time = Carbon::now()->format('H:i:s');
        $status = "PRINT BPAT";
        $fa_code =  $fa_code;
        $employee =  $employee;
        $user = Auth::user()->name;
        $note = '';
        DB::table('itam_master_asset_assign_log')->insert([
            'fa_code' => $fa_code,
            'employee' => $employee,
            'date' => $date,
            'time' => $time,
            'status_change' => $status,
            'user' => $user,
            'note' => $note
        ]);

        if ($cc == 'KP'|| $cc == 'SV' || $cc == 'NC'||$cc == 'MP' || $cc == 'NB') {
            $pdf = PDF::loadView('pages.assign_asset.report.report_bpat', [
                'data' => $data,
                'codes' => strtoupper($codes) 
            ]);
            $pdf->setPaper('A4', 'portrait');
            return $pdf->stream();
        }else{
            $pdf = PDF::loadView('pages.assign_asset.report.report_bpat_non', [
                'data' => $data,
                'codes' => strtoupper($codes) 
            ]);
            $pdf->setPaper('A4', 'portrait');
            return $pdf->stream();
        }

        
        

        

        
    }
    public function print_qr(Request $request,$fa_code)
    {
        $get_fa_code = base64_decode($fa_code);
        $code = substr($get_fa_code, 2,2);
        $dataCode = DB::table('itam_master_asset_codes')
                    ->where('code', $code)
                    ->select('name', 'code')
                    ->get();
        $codes = $dataCode[0]->name;
        $cc = $dataCode[0]->code;
        
        
        // dd($codes);

        

        $data = DB::table('itam_master_asset_assign AS imaa')
        ->join('itam_master_asset AS ima', 'ima.fa_code', '=', 'imaa.fa_code')
        ->join('itam_master_asset_codes AS imac', 'ima.asset_code','=', 'imac.code')
        ->join('itam_master_status AS ims', 'ima.id_status_asset','=', 'ims.code')
        ->where('imaa.fa_code', $get_fa_code)
        ->where('imaa.data_status', '=', 'ACTIVE')
        ->first();

        $fa_code = $data->fa_code;
        $employee = $data->employee_name;
        // dd($data);
        $update = DB::table('itam_master_asset_assign')
        ->where('fa_code', $fa_code)
        ->update([
            'qr_date' => Carbon::now()
        ]);

        //INSERT LOG
        // date_default_timezone_set("Asia/Jakarta");
        // $date = Carbon::now();
        // $time = Carbon::now()->format('H:i:s');
        // $status = "PRINT QR";
        // $fa_code =  $fa_code;
        // $employee =  $employee;
        // $user = Auth::user()->name;
        // $note = '';
        // DB::table('itam_master_asset_assign_log')->insert([
        //     'fa_code' => $fa_code,
        //     'employee' => $employee,
        //     'date' => $date,
        //     'time' => $time,
        //     'status_change' => $status,
        //     'user' => $user,
        //     'note' => $note
        // ]);

        $dataqr = 
            [
                $data->fa_code,
            	"/","No PPB :",$data->no_ppb, 
                "/",$data->p_merk,$data->p_jenis, $data->p_type, $data->p_speed, "Ghz", 
                "/",$data->m_merk, $data->m_type,
                "/", "RAM", $data->r_size, $data->r_slot,
                "/", "HDD1 :", $data->hd1_merk, $data->hd1_type, $data->hd1_size,
                "/", "HDD2 :", $data->hd2_merk, $data->hd2_type, $data->hd2_size,
                "/", "SSD :", $data->ssd_merk, $data->ssd_type, $data->ssd_size,
                "/", "VGA :", $data->vga_external,
                "/","MaC LAN -", $data->lan_mac
            ];
        $str_json = json_encode($dataqr); //array to json string conversion
        $searchawal = '["';
        $searchakhir = ']';
        $searchkoma = '","';
        $searchslash = "/";
        $searchnull = '",null,"';
        $searcnull2 = '",null,null,null,"';
        $dataqr1 = str_replace($searchawal, "",$str_json);
        $dataqr2 = str_replace($searchakhir, "",$dataqr1);
        $dataqr3 = str_replace($searchkoma, " ",$dataqr2);
        $dataqr4 = str_replace($searchslash, "",$dataqr3);
        $dataqr5 = str_replace($searchnull, "-",$dataqr4);
        $dataqr6 = str_replace($searcnull2, "-",$dataqr5);

        // dd($str_json);

        $qrcode = QrCode::size(200)->generate($dataqr6);

        return view('pages.assign_asset.report.report_qr',compact('qrcode'));

        // $pdf = PDF::loadView('pages.assign_asset.report.report_qr', [
        //     'qrcode' => $qrcode,
        // ]);
        // $pdf->setPaper('A4', 'portrait');
        // return $pdf->stream();

        
        

    }
    public function log($fa_code)
    {
        // dd($fa_code);
        $data = DB::table('itam_master_asset_assign_log')
                ->where('fa_code', $fa_code)
                ->get();
        return response()->json($data);
        
    }
    public function void(Request $request,$fa_code)
    {
        DB::beginTransaction();
        try {
            $data = DB::table('itam_master_asset_assign')
                ->where('fa_code','=', $fa_code)
                ->update(['voided_dates' => Carbon::now(),
                            'data_status' => 'NOT ACTIVE'
            ]);
            $data = DB::table('itam_master_asset')
                ->where('fa_code','=', $fa_code)
                ->update(['id_status_asset' => 1 ]);

            $select = DB::table('itam_master_asset_assign')
            ->where('fa_code','=', $fa_code)
            ->first();

            $employee = $select->employee_name;

            date_default_timezone_set("Asia/Jakarta");
            $date = Carbon::now();
            $time = Carbon::now()->format('H:i:s');
            $status = "VOID";
            $fa_code =  $fa_code;
            $employee = $employee;
            $user = Auth::user()->name;

            DB::table('itam_master_asset_assign_log')->insert([
                'fa_code' => $fa_code,
                'date' => $date,
                'time' => $time,
                'status_change' => $status,
                'user' => $user,
                'note' => $request->note !== '' ? $request->note : '',
                'employee' => $employee
            ]);
            DB::commit();
            return response()->json([
                'success' => true,
            ]);
        } catch (Exception $ex) {
            DB::rollback();
            return redirect()->back();
        }
    }
    public function posted_data(Request $request, $fa_code)
    {
        DB::beginTransaction();
        try {
            $get_data = DB::table('itam_master_asset_assign')
                        ->where('fa_code', $fa_code)
                        ->first();
            // dd($get_data);
            $get_posted =  $get_data->posted_dates;
            $get_employee = $get_data->employee_name;
            if ($get_posted != null) {
                //unposted
                $unpost = DB::table('itam_master_asset_assign')
                ->where('fa_code', $fa_code)
                ->update(['posted_dates' => NULL]);

                date_default_timezone_set("Asia/Jakarta");
                $date = Carbon::now();
                $time = Carbon::now()->format('H:i:s');
                $status = "UN-POSTED";
                $fa_code = $fa_code;
                $user = Auth::user()->name;
                $note = $request->note;
                $employee = $get_employee;

                DB::table('itam_master_asset_assign_log')->insert([
                    'fa_code' => $fa_code,
                    'employee' => $employee,
                    'date' => $date,
                    'time' => $time,
                    'status_change' => $status,
                    'user' => $user,
                    'note' => $note
                ]);
            } else {
                // POSTED
                $post = DB::table('itam_master_asset_assign')
                        ->where('fa_code', $fa_code)
                        ->update(['posted_dates' => Carbon::now()]);

                // INSERT LOG POSTED
                date_default_timezone_set("Asia/Jakarta");
                $date = Carbon::now();
                $time = Carbon::now()->format('H:i:s');
                $status = "POSTED";
                $fa_code = $fa_code;
                $user = Auth::user()->name;
                $note = $request->note;
                $employee = $get_employee;

                DB::table('itam_master_asset_assign_log')->insert([
                    'fa_code' => $fa_code,
                    'employee' => $employee,
                    'date' => $date,
                    'time' => $time,
                    'status_change' => $status,
                    'user' => $user,
                    'note' => $note
                ]);
            }

            DB::commit();
            return response()->json([
                'success' => true
            ]);
        } catch (Exception $ex) {
            DB::rollback();
            return redirect()->back();
        }

    }
    public function edit_assign(Request $request, $id)
    {
        $HeaderEdit = DB::table('itam_master_asset_assign')->where('fa_code', $id)->first();
        $HeaderNo = $HeaderEdit->fa_code;
        $DetailEdit = DB::table('itam_master_asset_assign')
                    ->where('fa_code','=', $HeaderNo)
                    ->where('voided_dates', '=', NULL)
                    ->first();
        $status = DB::table('itam_master_asset')
                    ->where('fa_code','=', $HeaderNo)        
                    ->select('id_status_asset')->first();
        $id_status_asset = $status->id_status_asset;

        $get_status   = DB::table('itam_master_asset')
                        ->join('itam_master_asset_codes', 'itam_master_asset.asset_code','=', 'itam_master_asset_codes.code')
                        ->join('itam_master_status', 'itam_master_asset.id_status_asset','=', 'itam_master_status.code')
                        ->where('fa_code', $id)
                        // ->select()
                        ->first();
        // dd($get_status);
        $output = [
            'header' => $HeaderEdit,
            'detail' => $DetailEdit,
            'status' => $get_status,
        ];
        // return response()->json($output);
        echo json_encode($output);
        exit;

    }
    public function update(Request $request)
    {
       

        // dd($request);
        if ($request->ajax()){
            
            $fa_code = $request->fa_code;

            $update = DB::table('itam_master_asset_assign')
            ->where('fa_code', $fa_code)
            ->update([
                'updated_by' => $request->updated_by,
                'asset_location' => $request->asset_location,
                'employee_name' => $request->employee_name,
                'nik' => $request->nik,
                'section' => $request->section,
            ]);
            $update = DB::table('itam_master_asset')
            ->where('fa_code', $fa_code)
            ->update([
                'id_status_asset' => $request->status_asset2
            ]);

            //INSERT LOG
            // date_default_timezone_set("Asia/Jakarta");
            // $date = Carbon::now();
            // $time = Carbon::now()->format('H:i:s');
            // $status = "ADD";
            // $fa_code =  $fa_code;
            // $employee =  $employee;
            // $user = Auth::user()->name;
            // $note = '';
            // DB::table('itam_master_asset_assign_log')->insert([
            //     'fa_code' => $fa_code,
            //     'employee' => $employee,
            //     'date' => $date,
            //     'time' => $time,
            //     'status_change' => $status,
            //     'user' => $user,
            //     'note' => $note
            // ]);


        }
        return response()->json([
            'success' => true
        ]);
    }
}
