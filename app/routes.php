<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get('/', 'HomeController@showWelcome');

/* users authentication */
Route::get('user/login', 'UserController@login');
Route::get('user/register', 'UserController@register');
Route::post('user/login', 'UserController@login');

Route::get('users', function() {
    return 'users!';
});
