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
Route::get('user/login', 'UserController@login')->before('guest');
Route::post('user/login', 'UserController@login')->before('guest');

Route::get('user/register', 'UserController@register')->before('guest');
Route::post('user/register', 'UserController@register')->before('guest');

Route::get('user/logout', 'UserController@logout');
Route::get('user/register', 'UserController@register')->before('guest');

Route::get('user/profile', 'UserController@profile')->before('auth');

Route::get('users', function() {
    return 'users!';
});


/* admin routes */
Route::group(
    array(
        'prefix' => 'admin',
        'before' => 'auth_admin',
        'namespace' => 'Admin'
    ),
    function () {
        Route::get('/', 'IndexController@home');
        Route::get('dashboard', 'IndexController@home');
        Route::any('profile', 'AdminController@profile');
        Route::any('password', 'AdminController@password');
    }
);