<?php
/**
 * Created by PhpStorm.
 * User: radu
 * Date: 19.10.2014
 * Time: 16:19
 */

namespace Admin;

use \View as View;


class IndexController extends AdminBaseController
{
    public function home()
    {
        return View::make('admin/home');
    }
} 