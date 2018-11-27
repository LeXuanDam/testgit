<?php

use Illuminate\Http\Request;

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
Route::post('user/login','API\UsersController@login');
Route::post('user/register','API\UsersController@register');
Route::put('user/changepassword','API\UsersController@changepassword')->middleware('checkToken');
Route::post('genba','API\ScheduleController@create')->middleware('checkToken');
Route::put('genba/edit/{id}','API\ScheduleController@edit')->middleware('checkToken');
Route::get('genba/{id}','API\ScheduleController@show')->middleware('checkToken');
Route::post('genba/list','API\ScheduleController@list')->middleware('checkToken');
Route::get('user/profile/{id}','API\UsersController@profile')->middleware('checkToken');
Route::delete('genba/{id}','API\ScheduleController@delete')->middleware('checkToken');
Route::post('user/check','API\UsersController@checkuser');
Route::post('user/edit/{id}','API\UsersController@edit')->middleware('checkToken');

//Route::post('sendotp','API\UsersController@sendotp');
//Route::post('otp','API\UsersController@otp');
Route::get('user/profile','API\UsersController@user')->middleware('checkToken');

Route::post('company/{title}','API\CompanyController@create')->middleware('checkToken');
Route::delete('company/{id}','API\CompanyController@delete')->middleware('checkToken');
Route::put('company/{id}','API\CompanyController@edit')->middleware('checkToken');
Route::get('company/list/{title}','API\CompanyController@list')->middleware('checkToken');
Route::get('company/{id}','API\CompanyController@show')->middleware('checkToken');

