<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Eticket;
use App\Komputer;
use Carbon\Carbon;
use Auth;
use Alert;
use PDF;
use DataTables;

class EticketController extends Controller
{
    public function index()
    {
        $ticket = DB::table('eticket')
        ->join('user', 'user.id', '=', 'eticket.id_user')
        ->where('id_user', Auth::user()->id)
        ->select('eticket.*', 'user.name')
        ->orderBy('status', 'asc')
        ->orderBy('id', 'desc')
        ->get();


        // return view ('pages.eticket.eticket', compact("ticket"));
        return view ('pages.eticket.index', compact("ticket"));
        
    }

    public function admin_index()
    {
        $open = DB::table('eticket')
        ->where('status', '=', 1)
        ->count();
        $onprocc = DB::table('eticket')
        ->where('status', '=', 2)
        ->count();
        $pending = DB::table('eticket')
        ->where('status', '=', 3)
        ->count();
        $close = DB::table('eticket')
        ->where('status', '=', 4)
        ->count();

        $ticket = DB::table('eticket')
        ->join('user', 'user.id', '=', 'eticket.id_user')
        ->select('eticket.*', 'user.name')
        ->orderBy('status', 'asc')
        ->orderBy('id', 'desc')
        ->get();
        return view ('pages.eticket.eticket_admin', compact("ticket", "open", "onprocc", "pending", "close" ));
    }
    public function admin_detail($id)
    {
        $eticket = DB::table('eticket')
        ->join('user', 'user.id', '=', 'eticket.id_user')
        ->select('eticket.*', 'user.name', 'user.section', 'user.nik')
        ->where('eticket.id', $id)
        ->first();
        
        return view('pages/eticket/eticket_admin_detail', ['eticket'=> $eticket]);
    }
    public function user_detail($id)
    {
        $eticket = DB::table('eticket')
        ->join('user', 'user.id', '=', 'eticket.id_user')
        ->select('eticket.*', 'user.name', 'user.section', 'user.nik')
        ->where('eticket.id', $id)
        ->first();
        
        return view('pages/eticket/eticket_user_detail', ['eticket'=> $eticket]);
    }
    public function admin_edit($id)
    {

        $eticket = DB::table('eticket')
        ->join('user', 'user.id', '=', 'eticket.id_user')
        ->select('eticket.*', 'user.name', 'user.section', 'user.nik')
        ->where('eticket.id', $id)
        ->first();

        $komputer = DB::table('komputer')->get();
       

        return view('pages/eticket/eticket_admin_edit', compact("eticket", "komputer"));
    }
    public function getkom(Request $request , $id)
    {
        
        $getID = DB::table($request->asset_type)->pluck("kode_fa", "kode_fa");
        return json_encode($getID);
    }
    

    public function store(Request $request)
    {
        $unique_ticket = Eticket::orderby('id', 'DESC')->pluck('id')->first();
        if($unique_ticket == null or $unique_ticket == "" ){
            #if table is empty
            $unique_ticket = 1;
        }
        else {
            # If table has already some data
            $unique_ticket = $unique_ticket + 1;
        }
        DB::table('eticket')->insert([
            'date' => Carbon::now()->format('Y-m-d'),
            'time' => Carbon::now()->format('Y-m-d H:i:s'),
            'id_user' => Auth::user()->id,
            'ticket_no' => 'ET'.date('Ym').$unique_ticket,
            'issue' => $request->issue,
            'status' => '1',
            'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
            'updated_at' => Carbon::now()->format('Y-m-d H:i:s'),
        ]);
        
        
        return redirect('/eticket')->with('success', 'Ticket Add Successfully!');
    }


    
    public function update(Request $request, $id)
    {
        DB::table('eticket')->where('id', $request->id)->update([
            'problem' => $request->problem,
            'problem_type' => $request->problem_type,
            'solution' => $request->solution,
            'rep_part' => $request->rep_part,
            'id_asset' => $request->asset_type,
            'id_kode_fa' => $request->id_kode_fa,
            'status' => $request->status,
            'technician' => Auth::user()->name,
            'updated_at' => Carbon::now()->format('Y-m-d H:i:s'),
        ]);
        
        
        return redirect('/eticket/admin')->with('success', 'Ticket Update Successfully!');
        
    }

    public function eriwayat(Request $request)
    {
        $eriwayat = DB::table('eticket')
        ->select('eticket.*')
        ->where('id_kode_fa', '>', '' )
        ->orderBy('date', 'desc')
        ->orderBy('id', 'desc')
        ->get();

        if ($request->ajax()) 
        {
         return datatables()->of($eriwayat)->make(true);
        }
        // dd($eticket);
        return view ('pages.eticket.eriwayat');
     }
     public function erw_search()
     {
         $eticket = DB::table('eticket')
        ->select('*')
        ->get();
 
        
 
        return view('pages/eticket/eriwayat_search', compact("eticket"));
     }

     public function search_result(Request $request)
    {
	// menangkap data pencarian
	$cari = $request->cari;
 
 	// mengambil data dari table pegawai sesuai pencarian data
	$eticket = DB::table('eticket')
	->where('id_kode_fa','like',"%".$cari."%")
	->get();

    // dd($eriwayat);

    // mengirim data pegawai ke view index
    // dd($eticket);
    return view('pages/eticket/eriwayat_search_r', compact("eticket"));
        

    }
    public function print(Request $request,$id_asset, $id_kode_fa)
    {
        
        // dd($id_asset);
       
        $eticket = DB::table('eticket')
        ->leftJoin($id_asset, 'eticket.id_kode_fa', '=', $id_asset.'.kode_fa') 
        ->select('eticket.*', $id_asset.'.*')
        ->where('eticket.id_kode_fa', $id_kode_fa)
        ->get();
    
        
        // dd($eticket);

        // $eriwayat = eriwayat_kom::find($id_kom);
        $pdf = PDF::loadview('pages/eticket/eriwayat_print', ['eticket' => $eticket])->setPaper('a4', 'portrait');
        // return $pdf->download('laporan-komputer-pdf.pdf');
        return $pdf->stream();
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function auto_number_et(Request $request)
    {
        $get_last_no = DB::table('eticket')->latest('id')->select('ticket_no')->first();
        $get_last_no1 = $get_last_no->ticket_no;
        $cut_last2 = substr($get_last_no1,-2);
        $get_after_cut = (int)$cut_last2 + 1;
        

        
        $unique_ticket = Eticket::orderby('id', 'DESC')->pluck('id')->first();
        if($unique_ticket == null or $unique_ticket == "" ){
            #if table is empty
            $unique_ticket = 1;
        }
        else {
            # If table has already some data
            $unique_ticket = $get_after_cut;
        }
        $no_et = 'ET'.date('Ym').$unique_ticket;

        return response()->json($no_et);
    }
    public function save_et(Request $request)
    {
        // dd($request);
        if ($request->ajax()) {
           
        
                DB::table('eticket')->insert([
                'date' => Carbon::now()->format('Y-m-d'),
                'time' => $request->time,
                'id_user' => Auth::user()->id,
                'ticket_no' => $request->no_ticket,
                'issue' => $request->issue,
                'status' => '1',
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s'),
                // 'images' => $request->file('gambar'),
                
            ]);

            // $namaGambar = time() . '_' . $gambar->getClientOriginalName();
            // $tujuanFolder = public_path('/uploads');
        
            // $gambar->move($tujuanFolder, $namaGambar);

            return response()->json([
                'success' => true
            ]);
        }
    }

    public function getdatatables(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('eticket')
                    ->join('user', 'user.id', '=', 'eticket.id_user')
                    ->where('id_user', Auth::user()->id)
                    ->select('eticket.*', 'user.name')
                    ->orderBy('status', 'asc')
                    ->orderBy('id', 'desc')
                    ->get();
            return Datatables::of($data)
            ->editcolumn('status', function($row){
                if ($row->status == '1') {
                    $status = '<small class="text-info mr-1">
                                    <i class="fas fa-arrow-up"></i>
                                    Open
                                </small>';
                } else if ($row->status == '2'){
                    $status = '<small class="text-warning mr-1">
                                    <i class="fas fa-arrow-up"></i>
                                    On Process
                                </small>';
                } else if ($row->status == '3'){
                    $status = '<small class="text-danger mr-1">
                                    <i class="fas fa-arrow-up"></i>
                                    Pending
                                </small>';
                } else if ($row->status == '4'){
                    $status = ' <small class="text-success mr-1">
                                    <i class="fas fa-arrow-up"></i>
                                    Close
                                </small>';
                }
                return $status;
            })
            ->editcolumn('to_time', function($data){
                $dt = $data->to_time;
                if ($dt != '00:00:00') {
                    return $dt;
                } else {
                    return "//";
                }
            })
            ->editcolumn('date', function($data){
                $dt = $data->date;
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
                return view('pages.eticket.modal._actionMaster', [
                    'model' => $data,
                    // 'url_print' => route('master_asset.print', base64_encode($data->ticket_no)),
                ]);
            })->rawColumns(['action'])
            ->rawColumns(['status'])
            ->make(true);  
        }
    }


}
