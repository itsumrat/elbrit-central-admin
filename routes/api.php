<?php

use App\Http\Controllers\Api\HomeController;
use App\Http\Controllers\EmployeeController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::get('employee-info/{mobile_no}', [EmployeeController::class, 'employeeInfo']);
Route::get('walls', [HomeController::class, 'getPosts']);

Route::post('updateToken', [HomeController::class, 'updateToken']);

Route::get('walls/{employee_id}', [HomeController::class, 'getPostsByEmployee']);
Route::get('prices', [HomeController::class, 'getPrices']);
Route::get('prices/{team_id}', [HomeController::class, 'getPricesByTeam']);
Route::get('products', [HomeController::class, 'getProducts']);
Route::get('products/{team_id}', [HomeController::class, 'getProductsByTeam']);

Route::get('notify/{employee_id}', [HomeController::class, 'sendnotify']);
