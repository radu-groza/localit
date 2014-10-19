<?php

class UserController extends BaseController {

    public function login()
    {
        $this->layout->title = parent::getTitle() . ' | ' . Lang::get('User Login');
        if (Request::isMethod('post')) {
            if (!Auth::attempt(array(
                'email' => Input::get('email'),
                'password' => Input::get('password')
            ), Input::get('remember_me', false))) {
                Input::flashOnly('email', 'remember_me');
                Session::flash('error', Lang::get('Invalid email / password'));
                return Redirect::to('user/login');
            }
            if(Auth::user()->role == 'admin') {
                return Redirect::to('admin/dashboard');
            }
            return Redirect::intended();
        }
        return View::make('user.login')->with(Input::old());
    }

    public function logout()
    {
        Auth::logout();

        Session::flash('success', Lang::get('You have been logged out.'));

        return Redirect::to('/');
    }

    public function profile()
    {
        return View::make('user/profile');
    }

    public function register()
    {
        if (Request::isMethod('post')) {
            $validator = Validator::make(Input::all(), array(
                'email' => 'required|email|unique:users',
                'password' => 'required|min:5|confirmed',
                'password_confirmation' => 'required|min:5',
                'first_name' => 'required',
                'last_name' => 'required'
            ));
            if ($validator->fails()) {
                Session::flash('error', Lang::get('Please correct the errors marked below'));
                Input::flashExcept('password', 'password_retype');
                return Redirect::to('user/register')->withErrors($validator);
            }

            /* create the user and login */
            $data = Input::except('password_confirmation');
            $data['password'] = Hash::make($data['password']);
            $user = User::create($data);
            Auth::login($user);
            Session::flash('success', Lang::get('Your account has been created'));
            return Redirect::to('user/profile');
        }
        return View::make('user.register')->with(Input::old());
    }
}