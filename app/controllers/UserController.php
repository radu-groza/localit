<?php

class UserController extends BaseController {

    public function login()
    {
        $this->layout->title = parent::getTitle() . ' | ' . 'User Login';

        if (Request::isMethod('post')) {
            if (!Auth::attempt(array(
                'email' => Input::get('email'),
                'password' => Input::get('password')
            ))) {
                Input::flashOnly('email');
                return Redirect::to('user/login');
            }
        }

        return View::make('user.login')->with('email', Input::old('email'));
    }

    public function register()
    {
        return View::make('user.login');
    }
}