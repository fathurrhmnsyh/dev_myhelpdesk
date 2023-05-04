<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Komputer;
use App\Laptop;
use App\Printer;
use App\Eticket;
use DB;

class DashboardController extends Controller
{
    public function index()
    {
        $countk = DB::table('itam_master_asset')
        ->where('asset_code' , '=', 'KP')        
        ->count();
        $countl = DB::table('itam_master_asset')
        ->where('asset_code' , '=', 'NB')     
        ->count();
        $countp = DB::table('itam_master_asset')
        ->where('asset_code' , '=', 'PT')  
        ->count();
        $count_tv = DB::table('itam_master_asset')
        ->where('asset_code' , '=', 'TV')  
        ->count();
        $count_monitor = DB::table('itam_master_asset')
        ->where('asset_code' , '=', 'ML')  
        ->count();
        $count_scan = DB::table('itam_master_asset')
        ->where('asset_code' , '=', 'SC')  
        ->count();
        $count_nc = DB::table('itam_master_asset')
        ->where('asset_code' , '=', 'NC')  
        ->count();
        $count_mp = DB::table('itam_master_asset')
        ->where('asset_code' , '=', 'MP')  
        ->count();

        //prepare data chart

        $total_case = Eticket::select(DB::raw("count(*) as total_case"))
        ->GroupBy(DB::raw("Month(created_at)"))
        ->pluck('total_case');
        
        $bulan = Eticket::select(DB::raw("MONTHNAME(created_at) as bulan"))
        ->GroupBy(DB::raw("MONTHNAME(created_at)"))
        ->orderBy('created_at', 'asc')
        ->pluck('bulan');
        // dd($bulan);
        

        // $bulan = \DB::table('eticket')
        // ->select([
        //     // \DB::raw('count(*) as total'),
        //     \DB::raw('MONTHNAME(created_at) as bulan'),
        // ])
        // ->groupBy('bulan')
        // ->orderBy('bulan', 'desc')
        // ->get()
        // ->toArray();
        // // dd(json_encode($bulan));

        // $total = \DB::table('eticket')
        // ->select([
        //     \DB::raw('count(*) as total'),
        //     \DB::raw('MONTHNAME(created_at) as bulan'),
        // ])
        // ->groupBy('bulan')
        // ->orderBy('bulan', 'desc')
        // ->get()
        // ->toArray();
        // dd(json_encode($total));    


        // $total_ticket = Eticket::select(DB::raw("Month(created_at) as total_ticket"))
        // // ->GroupBy(DB::raw("MONTHNAME(created_at)"))
        // ->GroupBy(DB::raw("Month(created_at)"))
        // ->pluck('total_ticket');
        // // dd($total_ticket);
        // $bulan = Eticket::select(DB::raw("MONTHNAME(created_at) as bulan"))
        // ->GroupBy(DB::raw("MONTHNAME(created_at)"))
        // ->pluck('bulan');

    




        return view('pages.dashboard.index', compact("countk", "countl", "countp", "bulan", "total_case", "count_tv", "count_monitor", "count_scan", "count_nc", "count_mp"));
    }
    public function u_dashboard()
    {
        $section = DB::table('tb_section')->get(); 
        return view('pages.dashboard.dash_u', compact("section"));
    }
}
