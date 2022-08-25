<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\TeamController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\PriceController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\EmployeeController;

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

Route::get('/clear', function() {
    Artisan::call('optimize');
    return 'all cache cleared';
});

Route::get('/', function () {
    return view('auth.login');
});

Auth::routes();

Route::group(['middleware' => 'auth'], function () {
    Route::get('/dashboard', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
    Route::resource('/admin', AdminController::class);
    Route::resource('/employees', EmployeeController::class);
    Route::resource('/teams', TeamController::class);
    Route::resource('/posts', PostController::class);

    // Route::controller(PostController::class)->group(function () {
    //     //mobile app balnk page for webview
    //     Route::get('/notify', 'sendnotify')->name('notify');
    // });

    Route::resource('/prices', PriceController::class);
    Route::resource('/products', ProductController::class);
});

