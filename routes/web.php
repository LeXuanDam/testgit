<?php

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

Route::get('/', function () {
    return view('welcome');
});
Route::get('test', function () {
    return view('test');
});
Route::get('test1','API\UsersController@firebase');
Route::post('/sendotp','API\UsersController@sendotp');
Route::get('/a',function (){
   return view('a');
});
Route::post('/verification','API\UsersController@verifiotp');
Route::get('/otp',function (){
    return view('otp');
});
Route::post('/responseotp','API\UsersController@otp');
Route::get('/test','API\ScheduleController@cutdate');

