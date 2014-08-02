<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div class="navbar-collapse collapse">
            <div class="navbar-form navbar-right clearfix">
                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modal-user-login">Sign in</button>
                <button type="submit" class="btn btn-info" data->Register</button>
            </div>
        </div>
        <!--/.navbar-collapse -->
    </div>
</div>

<div class="modal" id="modal-user-login" role="dialog" aria-hidden="true" aria-labelledBy="#modal-user-login-title">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="modal-user-login-title">{Lang::get('Sign in')}</h4>
            </div>
            <div class="modal-body">
                {Form::open(['action' => 'UserController@login', 'class' => 'form-horizontal', 'role' => 'form'])}
                    <div class="form-group row">
                        <label for="login-email" class="col-md-4 control-label">{Lang::get('Email')}</label>
                        <div class="col-md-6">
                            <input type="email" id="login-email" placeholder="Email" class="form-control" name="email">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="login-password" class="control-label col-md-4">Password</label>
                        <div class="col-md-6">
                            <input type="password" name="password" class="form-control" placeholder="Password">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-offset-4 col-md-8">
                            <button type="submit" class="btn btn-success">{Lang::get('Sign in')}</button>
                            <button type="button" class="btn btn-link" data-toggle="modal" data-dismiss="modal" data-target="#modal-forgot-password">{Lang::get('Forgot password?')}</button>
                        </div>
                    </div>
                {Form::close()}
            </div>
        </div>
    </div>
</div>

<div class="modal" id="modal-forgot-password" role="dialog" aria-hidden="true" aria-labelledBy="#modal-fp-title">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="modal-fp-title">{Lang::get('Recover password')}</h4>
            </div>
            <div class="modal-body">
                <form role="form" class="form-horizontal" action="" method="post">
                    <div class="form-group row">
                        <label for="fp-email" class="col-md-4 control-label">{Lang::get('Email')}</label>
                        <div class="col-md-6">
                            <input type="email" id="fp-email" placeholder="Email" class="form-control" name="email">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-offset-4 col-md-8">
                            <button type="submit" class="btn btn-success">{Lang::get('Recover password')}</button>
                            <button type="button" class="btn btn-link" data-toggle="modal" data-dismiss="modal" data-target="#modal-user-login">{Lang::get('Login')}</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>