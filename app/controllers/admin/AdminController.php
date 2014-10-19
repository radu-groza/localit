<?php
/**
 * Created by PhpStorm.
 * User: radu
 * Date: 19.10.2014
 * Time: 16:58
 */

namespace Admin;

use \View as View;
use \Auth as Auth;

class AdminController extends AdminBaseController
{
    public function profile()
    {
        $admin = Auth::user();

        return View::make('admin/profile/edit')->with($admin->toArray());
    }
} 