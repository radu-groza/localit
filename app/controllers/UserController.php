<?php

class UserController extends BaseController {

    protected $layout = 'layouts.master';

    public function login()
    {
        $this->layout->title = parent::getTitle() . ' | ' . 'User Login';

        $data = array(
          'content_heading' => 'User Login'
        );
        $this->layout->content = View::make('user.login', $data);

        //var_dump(Auth::attempt(Input::get('form-data')));
    }
}