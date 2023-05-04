<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Route::get('home', function(){
    return view('pages.index');
});
//auth
Route::get('/auth', 'AuthController@login')->name('login');
Route::post('/postlogin', 'AuthController@postlogin');
Route::get('/logout', 'AuthController@logout');

// admin role
Route::group(['middleware' =>['auth', 'ceklevel:admin']], function(){


    Route::get('/', 'DashboardController@index');

    //new layout

    Route::get('/asik', function(){
        return view('layouts/template');
    });
    
    //User

    Route::get('/employee', 'EmployeeController@index');
    Route::get('/employee/getdept/{id}', 'EmployeeController@getdept');
    Route::get('/employee/getsection/{id}', 'EmployeeController@getsection');
    Route::post('/employee/store', 'EmployeeController@store');
    Route::get('/employee/delete/{id}', 'EmployeeController@delete');

    //user_used_komputer
    
    Route::get('/user_kom', 'UsedAssetController@user_kom');
    Route::get('/user_kom/detail/{id}', 'UsedAssetController@kom_detail');
    Route::post('/user_kom/store', 'UsedAssetController@store');
    Route::get('/user_kom/delete{id}', 'UsedAssetController@delete');
    Route::get('/user_kom/print/{id}', 'UsedAssetController@print');
    
    //user_used_laptop
    Route::get('/user_laptop', 'UsedAssetController@user_lap');
    Route::get('/user_laptop/detail/{id}', 'UsedAssetController@lap_detail');
    Route::post('/user_laptop/store', 'UsedAssetController@store_lp');
    Route::get('/user_laptop/delete{id}', 'UsedAssetController@delete_lp');
    Route::get('/user_laptop/print/{id}', 'UsedAssetController@print_lp');


    //Master Asset
    Route::get('/master_asset', 'MasterAssetController@index')->name('master_asset');
    Route::get('/m_asset_getdatatables', 'MasterAssetController@getdatatables')->name('master_asset.getdatatables');
    Route::get('/m_asset_getdatatables_filter/{id}', 'MasterAssetController@getdatatables_filter')->name('master_asset.getdatatables_filter');
    Route::get('/master_asset/{id}/m_asset_show_view_detail', 'MasterAssetController@show_view_detail')->name('master_asset.show_view_detail');
    Route::get('/master_asset/{id}/m_asset_auto_fa_code', 'MasterAssetController@auto_fa_code')->name('master_asset.auto_fa_code');
    Route::post('/master_asset/store', 'MasterAssetController@store_asset')->name('master_asset.store');
    Route::get('/master_asset/edit/{id}', 'MasterAssetController@edit_asset')->name('master_asset.edit');
    Route::put('/master_asset/update/{id}', 'MasterAssetController@update_asset')->name('master_asset.update');
    Route::post('/master_asset/posted/{id}', 'MasterAssetController@posted')->name('master_asset.posted');
    Route::get('/master_asset/log/{id}', 'MasterAssetController@log')->name('master_asset.log');
    Route::post('/master_asset/void/{param}', 'MasterAssetController@void')->name('master_asset.void');
    Route::get('/master_asset/{id}/print', 'MasterAssetController@print')->name('master_asset.print');
    
    //Assign Asset
    Route::get('/assign_asset', 'AssignAssetController@index')->name('assign_asset');
    Route::get('/assign_asset_getdatatables', 'AssignAssetController@getdatatables')->name('assign_asset.getdatatables');
    Route::get('/assign_asset.getfa', 'AssignAssetController@get_fa')->name('assign_asset.getfa');
    Route::get('/assign_asset.getdept', 'AssignAssetController@get_dept')->name('assign_asset.getdept');
    Route::get('/assign_asset.getlocasset', 'AssignAssetController@get_loc_asset')->name('assign_asset.getlocasset');
    Route::post('/assign_asset.store', 'AssignAssetController@store')->name('assign_asset.store');
    Route::get('/assign_asset/{id}/show_view_detail', 'AssignAssetController@show_view_detail')->name('assign_asset.show_view_detail');
    Route::get('/assign_asset/{id}/print_', 'AssignAssetController@print')->name('assign_asset.print');
    Route::get('/assign_asset/{id}/print_b', 'AssignAssetController@print_b')->name('assign_asset.print_b');
    Route::get('/assign_asset/{id}/print_qr', 'AssignAssetController@print_qr')->name('assign_asset.print_qr');
    Route::get('/assign_asset/log/{id}', 'AssignAssetController@log')->name('assign_asset.log');
    Route::post('/assign_asset/void/{param}', 'AssignAssetController@void')->name('assign_asset.void');
    Route::post('/assign_asset/posted_data/{param}', 'AssignAssetController@posted_data')->name('assign_asset.posted_data');
    Route::get('/assign_asset/edit/{id}', 'AssignAssetController@edit_assign')->name('assign_asset.edit');
    Route::post('/assign_asset.update', 'AssignAssetController@update')->name('assign_asset.update');

    

    // Komputer
    Route::get('/komputer', 'KomputerController@index');
    Route::get('/komputer/add', 'KomputerController@add');
    Route::post('/komputer/store', 'KomputerController@store');
    Route::get('/komputer/detail/{id}', 'KomputerController@detail');
    Route::get('/komputer/edit/{id}', 'KomputerController@edit');
    Route::put('/komputer/update/{id}', 'KomputerController@update');
    Route::get('/komputer/delete/{id}', 'KomputerController@delete');
    Route::get('/komputer/print/{id}', 'KomputerController@print');
    Route::get('/komputer/print_all', 'KomputerController@print_all');
    Route::get('/komputer/export_excel', 'KomputerController@exportExcel');

    //Laptop
    Route::get('/laptop', 'LaptopController@index');
    Route::get('/laptop/add', 'LaptopController@add');
    Route::post('/laptop/store', 'LaptopController@store');
    Route::get('/laptop/detail/{id}', 'LaptopController@detail');
    Route::get('/laptop/edit/{id}', 'LaptopController@edit');
    Route::put('/laptop/update/{id}', 'LaptopController@update');
    Route::get('/laptop/delete/{id}', 'LaptopController@delete');
    Route::get('/laptop/print/{id}', 'LaptopController@print');
    Route::get('/laptop/print_all', 'LaptopController@print_all');

    //Printer
    Route::get('/printer', 'PrinterController@index');
    Route::post('/printer/store', 'PrinterController@store');
    Route::get('/printer/detail/{id}', 'PrinterController@detail');
    Route::get('/printer/delete/{id}', 'PrinterController@delete');

    ///Consumable Control

        //Product
        Route::get('/product' , 'ProductController@index');
        Route::post('/product/store' , 'ProductController@store');

        //kategori

        Route::get('/kategori' , 'KategoriController@index');
        Route::post('/kategori/store' , 'KategoriController@store');
        Route::get('/kategori/delete/{id}' , 'KategoriController@delete');

        //Supplier

        Route::get('supplier', 'SupplierController@index');
        Route::post('supplier/store', 'SupplierController@store');
        Route::get('supplier/delete/{id}', 'SupplierController@delete');

        //Barang

        Route::get('/barang', 'BarangController@index');
        Route::get('/barang/add', 'BarangController@add');
        Route::post('/barang/store', 'BarangController@store');
        Route::get('/barang/delete/{id}', 'BarangController@delete');

        //Stok
        Route::get('/stok', 'StokController@index');
        Route::post('/stok/out', 'StokController@out');
        Route::post('/stok/in', 'StokController@in');
        Route::post('/stok/transaksi_riwayat_out', 'StokController@history_out');
        Route::get('/stok/transaksi_riwayat_in', 'StokController@history_in');
        Route::get('/stok/get_data_item', 'StokController@getdata')->name('stok.get_data_item');
        Route::post('/stok/store_stin', 'StokController@storestin')->name('stok.store_stin');
        Route::post('/stok/store_stout', 'StokController@storestout')->name('stok.store_stout');
        Route::get('/stok/auto_number_perm', 'StokController@autoNumberPerm')->name('stok.auto_number_perm');
        Route::get('/stok/filter_data', 'StokController@filter_data')->name('stok.filter_data');
        Route::get('/stok/filter_data_item', 'StokController@filter_data_item')->name('stok.filter_data_item');
        
    ///End Consumable Control


    //Eriwayat Kom
    Route::get('/ekom', 'EriwayatController@ekom');
    Route::post('/ekom/store', 'EriwayatController@ekom_store');
    Route::get('/ekom/search', 'EriwayatController@search');
    Route::get('/ekom/cari', 'EriwayatController@search_result');
    Route::get('/ekom/print/{id_kom}', 'EriwayatController@print');
    
    //Eriwayat Laptop
    Route::get('/elapt', 'EriwayatController@elapt');
    Route::post('/elapt/store', 'EriwayatController@elapt_store');
    Route::get('/elapt/search', 'EriwayatController@lapt_search');
    Route::get('/elapt/cari', 'EriwayatController@lapt_search_result');
    Route::get('/elapt/print/{id_lapt}', 'EriwayatController@lapt_print');

    //user login
    Route::get('/userlog', 'AuthController@data');
    Route::post('/userlog/create', 'AuthController@create');
    Route::get('/userlog/getname', 'AuthController@getname');
    Route::get('/userlog/delete/{id}', 'AuthController@delete');

    //Eticket
    Route::get('/eticket', 'EticketController@index');
    Route::post('/eticket/store', 'EticketController@store');
    Route::get('/eticket/detailU/{id}', 'EticketController@user_detail');
    Route::get('/eticket/admin', 'EticketController@admin_index');
    Route::get('/eticket/detailA/{id}', 'EticketController@admin_detail');
    Route::get('/eticket/edit/{id}', 'EticketController@admin_edit');
    Route::get('/eticket/edit/getkom/{id}', 'EticketController@getkom');
    Route::get('/eticket/edit/getlap/{id}', 'EticketController@getlap');
    Route::put('/eticket/update/{id}', 'EticketController@update');

    Route::get('/eticket/eriwayat/', 'EticketController@eriwayat')->name('et.eriwayat');
    Route::get('/eriwayat/search', 'EticketController@erw_search');
    Route::get('/eriwayat/cari', 'EticketController@search_result');
    Route::get('/eriwayat/print/{id_asset}/{id_kode_fa}', 'EticketController@print');
   


});

//user role
Route::group(['middleware' =>['auth', 'ceklevel:user,admin']], function(){

    Route::get('u_dashboard', 'DashboardController@u_dashboard')->name('dashboard.user');
    //ETICKET
    Route::get('/eticket', 'EticketController@index');
    Route::post('/eticket/store', 'EticketController@store');
    Route::get('/eticket/detailU/{id}', 'EticketController@user_detail');
    ///////////////////
    Route::get('/eticket/auto_number_et', 'EticketController@auto_number_et')->name('eticket.auto_number_et');
    Route::post('/eticket/save_et', 'EticketController@save_et')->name('eticket.save_et');
    Route::get('/eticket/getdatatables', 'EticketController@getdatatables')->name('eticket.getdatatables');

    
    //PICKUP CONSUMABLE
    Route::get('/stok_ss', 'StokController@stok_ss')->name('stok.ss');
    Route::get('/stok_ss/auto_number_perm', 'StokController@stok_ss_autoNumberPerm')->name('stok.ss_auto_number_perm');
    Route::post('/stok/store_stout_ss', 'StokController@storestout_ss')->name('stok.store_stout_ss');
    Route::post('/stok/get_datatables', 'StokController@get_datatables')->name('stok.get_datatables');
    Route::get('/stok/auto_number_perm_ss', 'StokController@autoNumberPerm_ss')->name('stok.auto_number_perm_ss');
    Route::get('/stok/get_data_item_ss', 'StokController@getdata_ss')->name('stok.get_data_item_ss');
    //EPINJAM
    Route::get('/epinjam', 'LoanItemcontroller@index')->name('epinjam.index');
    Route::post('/epinjam/get_datatables', 'LoanItemcontroller@get_datatables')->name('epinjam.get_datatables');
    Route::post('/epinjam/store', 'LoanItemcontroller@store')->name('epinjam.store');
    Route::post('/epinjam/return/{id}', 'LoanItemcontroller@return')->name('epinjam.return');

});