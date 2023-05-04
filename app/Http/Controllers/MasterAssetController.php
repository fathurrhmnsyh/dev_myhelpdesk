<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MasterAsset;
use App\MasterStatus;
use App\MasterSys;
use Carbon\Carbon;
use DataTables;
use DB;
use Auth;
use PDF;
use Illuminate\Support\Str;

class MasterAssetController extends Controller
{
    public function index()
    {
        $type_asset = DB::table('itam_master_asset_codes')->orderBy('name')->get();
        $location = DB::table('itam_master_location')->get();

        return view('pages/master_asset/index', compact("type_asset", "location"));
    }
    public function getdatatables(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('itam_master_asset')
            ->join('itam_master_status', 'itam_master_asset.id_status_asset','=', 'itam_master_status.code')
            ->join('itam_master_asset_codes', 'itam_master_asset.asset_code','=', 'itam_master_asset_codes.code')
            ->select('id_master_asset','fa_code', 'written_date', 'posted_date', 'voided_date', 'vga_external', 'id_status_asset', 'itam_master_status.status_name' , 'itam_master_asset_codes.name')
            ->where('voided_date', '=', null)
            ->get();
            return Datatables::of($data)
            ->editcolumn('written_date', function($data){
                $dt = $data->written_date;
                if ($dt != NULL) {
                    return Carbon::parse($dt)->format('d/m/Y');
                } else {
                    return "//";
                }
            })
            ->editcolumn('posted_date', function($data){
                $dt = $data->posted_date;
                if ($dt != NULL) {
                    return Carbon::parse($dt)->format('d/m/Y');
                } else {
                    return "//";
                }
            })
            ->editcolumn('voided_date', function($data){
                $dt = $data->voided_date;
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
                return view('pages.master_asset._actionMaster', [
                    'model' => $data,
                    'url_print' => route('master_asset.print', base64_encode($data->fa_code)),
                ]);
            })->rawColumns(['action'])
            ->make(true);  
        }
    }
    public function getdatatables_filter(Request $request, $id)
    {
        if ($request->ajax()) {
            $data1 = DB::table('itam_master_asset')
            ->join('itam_master_status', 'itam_master_asset.id_status_asset','=', 'itam_master_status.code')
            ->join('itam_master_asset_codes', 'itam_master_asset.asset_code','=', 'itam_master_asset_codes.code')
            ->where('asset_code', '=', $id)
            ->select('id_master_asset','fa_code', 'written_date', 'posted_date', 'voided_date', 'vga_external', 'id_status_asset', 'itam_master_status.status_name' , 'itam_master_asset_codes.name')
            ->get();

            $data2 = DB::table('itam_master_asset')
            ->join('itam_master_status', 'itam_master_asset.id_status_asset','=', 'itam_master_status.code')
            ->join('itam_master_asset_codes', 'itam_master_asset.asset_code','=', 'itam_master_asset_codes.code')
            // ->where('asset_code', '=', $id)
            ->select('id_master_asset','fa_code', 'written_date', 'posted_date', 'voided_date', 'vga_external', 'id_status_asset', 'itam_master_status.status_name' , 'itam_master_asset_codes.name')
            ->get();

            if ($id == '-') {
                $data = $data2;
            }else{
                $data = $data1;  
            }
            
            return Datatables::of($data)

            ->editcolumn('written_date', function($data){
                $dt = $data->written_date;
                if ($dt != NULL) {
                    return $data->written_date;
                } else {
                    return "//";
                }
            })
            ->editcolumn('posted_date', function($data){
                $dt = $data->posted_date;
                if ($dt != NULL) {
                    return $data->posted_date;
                } else {
                    return "//";
                }
            })
            ->editcolumn('voided_date', function($data){
                $dt = $data->voided_date;
                if ($dt != NULL) {
                    return $data->voided_date;
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
                return view('pages.master_asset._actionMaster', [
                    'model' => $data,
                    'url_print' => route('master_asset.print', base64_encode($data->fa_code)),
                ]);
            })->rawColumns(['action'])
            ->make(true);  
        }
    }

    public function show_view_detail($id)
    {
        $MAHeader   = DB::table('itam_master_asset')
                        ->join('itam_master_status', 'itam_master_asset.id_status_asset','=', 'itam_master_status.code')
                        ->join('itam_master_asset_codes', 'itam_master_asset.asset_code','=', 'itam_master_asset_codes.code')
                        ->where('id_master_asset', $id)
                        ->select('itam_master_asset.*', 'itam_master_asset_codes.name',  'itam_master_status.status_name', 'itam_master_status.code')
                        ->first();
        $MAHeaderNo = $MAHeader->fa_code;
        $MADetail   = DB::table('itam_master_asset')
        
        ->select(
            'id_master_asset', 'location', 'asset_code', 'fa_code', 'asset_merk', 'asset_type', 'serial_number', 'purchase_date', 'no_ppb', 'p_jenis', 'p_type', 'p_speed', 'm_merk', 'm_type', 'r_size', 'r_type', 'r_slot', 'hd1_merk', 'hd1_type', 'hd1_size', 'hd2_merk', 'hd2_type', 'hd2_size', 'ssd_merk', 'ssd_type', 'ssd_size', 'vga_external', 'lan_name', 'lan_mac', 'wlan_name', 'wlan_mac', 'id_status_asset', 'data_status', 'written_date', 'posted_date', 'voided_date', 'created_by', 'updated_by')   
        ->where('fa_code', '=', $MAHeaderNo)
        ->where('voided_date' , '=', NULL)
        ->get();

        // dd($IPDetail);

        // dd($id);

        

        // dd($IPCount);

        // dd($MAHeader);
        $output = [
            'header' => $MAHeader,
            'detail' => $MADetail,
            // 'count' => $IPCount
        ];

        return response()->json($output);
    }

    public function auto_fa_code($id)
    {
        $getAutono = DB::table('itam_master_asset_sys')
        ->select('content')
        ->where('label', '=', $id)
        ->get();
        $selectNo = $getAutono[0]->content;
        $cutNo = substr($selectNo, -3);
        $plusCutNo = $cutNo +1;
        $number = str_pad($plusCutNo, 3, "0", STR_PAD_LEFT);
        // dd($number);

        $getYear = Carbon::now()->format('Y');
        // 22
        $getMonth = Carbon::now()->format('m');
        // 10
        $concatYnM = $getYear.$getMonth;

        $data = $concatYnM.'.'.$number ;
			return response()->json($data);
    }
    public function store_asset(Request $request)
    {
        if ($request->ajax()){
            $data = new MasterAsset;
            $data->created_by = Auth::user()->name;
            $data->data_status = "ACTIVE";
            $data->written_date = Carbon::now()->format('Y-m-d');
            // dd($data->written_date);
            $data->id_status_asset = '1';
            $data->location = $request->ma_create_location; 
            $data->asset_code = $request->ma_create_type;
            $data->fa_code = $request->ma_create_fa_code;
            $data->purchase_date = empty($request->ma_create_purchase_date) ? null : $request->ma_create_purchase_date;
            $data->no_ppb = empty($request->ma_create_ppb_no) ? '' : $request->ma_create_ppb_no; 
            $data->asset_merk = Str::upper($request->ma_create_merk);
            $data->asset_type = Str::upper($request->ma_create_type_);
            $data->serial_number = Str::upper($request->ma_create_serial_number);
            $data->p_merk = $request->ma_create_p_merk;
            $data->p_jenis = $request->ma_create_p_jenis;
            $data->p_type = $request->ma_create_p_type;
            $data->p_speed = $request->ma_create_p_speed;
            $data->m_merk = $request->ma_create_m_merk;
            $data->m_type = $request->ma_create_m_type;
            $data->r_size = $request->ma_create_r_size;
            $data->r_type = $request->ma_create_r_type;
            $data->r_slot = $request->ma_create_r_slot;
            $data->hd1_merk = $request->ma_create_hd1_merk;
            $data->hd1_type = $request->ma_create_hd1_type;
            $data->hd1_size = $request->ma_create_hd1_size;
            $data->hd2_merk = $request->ma_create_hd2_merk;
            $data->hd2_type = $request->ma_create_hd2_type;
            $data->hd2_size = $request->ma_create_hd2_size;
            $data->ssd_merk = $request->ma_create_ssd_merk;
            $data->ssd_type = $request->ma_create_ssd_type;
            $data->ssd_size = $request->ma_create_ssd_size;
            $data->vga_external = $request->ma_create_vga_external;
            $data->lan_name = $request->ma_create_lan_name;
            $data->lan_mac = Str::upper($request->ma_create_lan_mac);
            $data->wlan_name = $request->ma_create_wlan_name;
            $data->wlan_mac = Str::upper($request->ma_create_wlan_mac);
            $data->save();

            $type_fa = $request->ma_create_type;
            $fa_code = $request->ma_create_fa_code;

            $update = DB::table('itam_master_asset_sys')
            ->where('label', $type_fa)
            ->update([
                'content' => $fa_code
            ]);

            //INSERT LOG
            date_default_timezone_set("Asia/Jakarta");
            $date = Carbon::now();
            $time = Carbon::now()->format('H:i:s');
            $status = "ADD";
            $fa_code =  $fa_code;
            $user = Auth::user()->name;
            $note = '';
            DB::table('itam_master_asset_log')->insert([
                'fa_code' => $fa_code,
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
    public function edit_asset(Request $request, $id)
    {
        $MAHeader   = DB::table('itam_master_asset')
                        ->join('itam_master_status', 'itam_master_asset.id_status_asset','=', 'itam_master_status.code')
                        ->join('itam_master_asset_codes', 'itam_master_asset.asset_code','=', 'itam_master_asset_codes.code')
                        ->where('id_master_asset', $id)
                        ->select('itam_master_asset.*', 'itam_master_asset_codes.name',  'itam_master_status.status_name', 'itam_master_status.code')
                        ->first();
        $MAHeaderNo = $MAHeader->fa_code;
        $MADetail   = DB::table('itam_master_asset')
        
        ->select(
            'id_master_asset', 'location', 'asset_code', 'fa_code', 'asset_merk', 'asset_type', 'serial_number', 'purchase_date', 'no_ppb', 'p_jenis', 'p_type', 'p_speed', 'm_merk', 'm_type', 'r_size', 'r_type', 'r_slot', 'hd1_merk', 'hd1_type', 'hd1_size', 'hd2_merk', 'hd2_type', 'hd2_size', 'ssd_merk', 'ssd_type', 'ssd_size', 'vga_external', 'lan_name', 'lan_mac', 'wlan_name', 'wlan_mac', 'id_status_asset', 'data_status', 'written_date', 'posted_date', 'voided_date', 'created_by', 'updated_by')   
        ->where('fa_code', '=', $MAHeaderNo)
        ->where('voided_date' , '=', NULL)
        ->get();
        
        $output = [
            'header' => $MAHeader,
            'detail' => $MADetail,
            // 'count' => $IPCount
        ];

        
        // return response()->json($output);
        echo json_encode($output);
        exit;
    }
    public function update_asset(Request $request, $id)
    {
        
        DB::beginTransaction();
        try {

            $data = MasterAsset::find($id);
            // dd($getFa);
            $data->updated_by = Auth::user()->name;
            // $data->data_status = "ACTIVE";
            // $data->written_date = Carbon::now()->format('Y-m-d');
            // $data->id_status_asset = '1';
            $data->location = $request->ma_edit_location; 
            $data->asset_code = $request->ma_edit_type;
            $data->fa_code = $request->ma_edit_fa_code;
            $data->purchase_date = empty($request->ma_edit_purchase_date) ? null : $request->ma_edit_purchase_date;
            $data->no_ppb = empty($request->ma_edit_ppb_no) ? '' : $request->ma_edit_ppb_no; 
            $data->asset_merk = Str::upper($request->ma_edit_merk);
            $data->asset_type = Str::upper($request->ma_edit_type_);
            $data->serial_number = Str::upper($request->ma_edit_serial_number);
            $data->p_merk = $request->ma_edit_p_merk;
            $data->p_jenis = $request->ma_edit_p_jenis;
            $data->p_type = $request->ma_edit_p_type;
            $data->p_speed = $request->ma_edit_p_speed;
            $data->m_merk = $request->ma_edit_m_merk;
            $data->m_type = $request->ma_edit_m_type;
            $data->r_size = $request->ma_edit_r_size;
            $data->r_type = $request->ma_edit_r_type;
            $data->r_slot = $request->ma_edit_r_slot;
            $data->hd1_merk = $request->ma_edit_hd1_merk;
            $data->hd1_type = $request->ma_edit_hd1_type;
            $data->hd1_size = $request->ma_edit_hd1_size;
            $data->hd2_merk = $request->ma_edit_hd2_merk;
            $data->hd2_type = $request->ma_edit_hd2_type;
            $data->hd2_size = $request->ma_edit_hd2_size;
            $data->ssd_merk = $request->ma_edit_ssd_merk;
            $data->ssd_type = $request->ma_edit_ssd_type;
            $data->ssd_size = $request->ma_edit_ssd_size;
            $data->vga_external = $request->ma_edit_vga_external;
            $data->lan_name = $request->ma_edit_lan_name;
            $data->lan_mac = Str::upper($request->ma_edit_lan_mac);
            $data->wlan_name = $request->ma_edit_wlan_name;
            $data->wlan_mac =  Str::upper($request->ma_edit_wlan_mac);
            $data->save();

            $fa_code = $request->ma_edit_fa_code;

            

            //INSERT LOG
            date_default_timezone_set("Asia/Jakarta");
            $date = Carbon::now();
            $time = Carbon::now()->format('H:i:s');
            $status = "EDIT";
            $fa_code =  $fa_code;
            $user = Auth::user()->name;
            $note = '';
            DB::table('itam_master_asset_log')->insert([
                'fa_code' => $fa_code,
                'date' => $date,
                'time' => $time,
                'status_change' => $status,
                'user' => $user,
                'note' => $note
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
    public function posted(Request $request, $fa_code)
    {
        DB::beginTransaction();
        try {
            $get_data = DB::table('itam_master_asset')
                        ->where('fa_code', $fa_code)
                        ->first();
            $get_posted =  $get_data->posted_date;

            if ($get_posted != null) {
                //unposted
                $unpost = DB::table('itam_master_asset')
                ->where('fa_code', $fa_code)
                ->update(['posted_date' => NULL]);

                date_default_timezone_set("Asia/Jakarta");
                $date = Carbon::now();
                $time = Carbon::now()->format('H:i:s');
                $status = "UN-POSTED";
                $fa_code = $fa_code;
                $user = Auth::user()->name;
                $note = $request->note;
                DB::table('itam_master_asset_log')->insert([
                    'fa_code' => $fa_code,
                    'date' => $date,
                    'time' => $time,
                    'status_change' => $status,
                    'user' => $user,
                    'note' => $note
                ]);
            } else {
            // POSTED
            $post = DB::table('itam_master_asset')
                    ->where('fa_code', $fa_code)
                    ->update(['posted_date' => Carbon::now()]);

            // INSERT LOG POSTED
                date_default_timezone_set("Asia/Jakarta");
                $date = Carbon::now();
                $time = Carbon::now()->format('H:i:s');
                $status = "POST";
                $fa_code = $fa_code;
                $user = Auth::user()->name;
                $note = "";
                DB::table('itam_master_asset_log')->insert([
                    'fa_code' => $fa_code,
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
    public function log($fa_code)
    {
        $data = DB::table('itam_master_asset_log')
                ->where('fa_code', $fa_code)
                ->get();
        return response()->json($data);
        
    }
    public function void(Request $request,$fa_code)
    {
        DB::beginTransaction();
        try {
            $data = DB::table('itam_master_asset')
                ->where('fa_code','=', $fa_code)
                ->update(['voided_date' => Carbon::now(),
                            'data_status' => 'NOT ACTIVE'
            ]);

            // $select = DB::table('itam_master_asset')
            // ->where('fa_code','=', $fa_code)
            // ->first();



            date_default_timezone_set("Asia/Jakarta");
            $date = Carbon::now();
            $time = Carbon::now()->format('H:i:s');
            $status = "VOID";
            $fa_code =  $fa_code;
            $user = Auth::user()->name;

            DB::table('itam_master_asset_log')->insert([
                'fa_code' => $fa_code,
                'date' => $date,
                'time' => $time,
                'status_change' => $status,
                'user' => $user,
                'note' => $request->note !== '' ? $request->note : '',
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
        
        

        $data = DB::table('itam_master_asset AS ima')
        ->join('itam_master_status AS ims', 'ima.id_status_asset','=', 'ims.code')
        ->join('itam_master_asset_codes AS imac', 'ima.asset_code','=', 'imac.code')
        // ->join('itam_master_asset_assign AS imaa', 'ima.fa_code' , '=' , 'imaa.fa_code')
        ->where('ima.fa_code', $get_fa_code)
        ->where('ima.data_status', '=', 'ACTIVE')
        ->first();

        $fa_code = $data->fa_code;
        // dd($data);

        $update = DB::table('itam_master_asset')
            ->where('fa_code', $fa_code)
            ->update([
                'printed_date' => Carbon::now()
            ]);
        //INSERT LOG
        date_default_timezone_set("Asia/Jakarta");
        $date = Carbon::now();
        $time = Carbon::now()->format('H:i:s');
        $status = "PRINT";
        $fa_code =  $fa_code;
        $user = Auth::user()->name;
        $note = '';
        DB::table('itam_master_asset_log')->insert([
            'fa_code' => $fa_code,
            'date' => $date,
            'time' => $time,
            'status_change' => $status,
            'user' => $user,
            'note' => $note
        ]);

        if ($cc == 'KP'|| $cc == 'SV' || $cc == 'NC'||$cc == 'MP' || $cc == 'NB') {
            $pdf = PDF::loadView('pages.master_asset.report.report', [
                'data' => $data,
                'codes' => strtoupper($codes) 
            ]);
            $pdf->setPaper('A4', 'portrait');
            return $pdf->stream();
        }else{
            $pdf = PDF::loadView('pages.master_asset.report.report_non', [
                'data' => $data,
                'codes' => strtoupper($codes) 
            ]);
            $pdf->setPaper('A4', 'portrait');
            return $pdf->stream();
        }

        // dd($data);
        
    }

    
}
