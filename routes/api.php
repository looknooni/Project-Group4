<?php

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

//Route::middleware('auth:api')->get('/user', function (Request $request) {
    //return $request->user();

//});

route::get('/Category' ,[\App\Http\Controllers\Api\CategoryApiController::class, 'index'] );
route::get('/Company' ,[\App\Http\Controllers\Api\CompanyApiController::class, 'index'] );
route::get('/Product' ,[\App\Http\Controllers\Api\ProductApiController::class, 'index'] );
route::get('/Promote' ,[\App\Http\Controllers\Api\PromoteApiController::class, 'index'] );
route::get('/Service' ,[\App\Http\Controllers\Api\ServiceApiController::class, 'index'] );
route::get('/User' ,[\App\Http\Controllers\Api\UserApiController::class, 'index'] );
