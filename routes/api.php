<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use  App\Http\Controllers\ApiController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

//Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//    return $request->user();
//});

Route::get('v1/test', [ApiController::class, 'testProject']);


Route::post('v1/sign-user', [ApiController::class, 'saveUsers']);
Route::post('v1/login-user', [ApiController::class, 'loginUser']);

Route::post('v1/sendMessage', [ApiController::class, 'sendMessage']);

Route::post('v1/anonymousMessage', [ApiController::class, 'anonymousMessage']);
Route::post('v1/getChatHistory', [ApiController::class, 'getChatHistory']);
