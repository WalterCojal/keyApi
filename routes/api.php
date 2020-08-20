<?php

use Illuminate\Http\Request;
use App\Http\Middleware\VerifyToken;
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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::middleware([VerifyToken::class])->group( function () {
    Route::get('getUserList', 'ApiUserController@getUserList');
    Route::get('getMediaList/{type}/{userId}', 'ApiUserController@getMediaList');
    Route::get('getUserMedia/{userId}', 'ApiUserController@getUserMedia');
});
