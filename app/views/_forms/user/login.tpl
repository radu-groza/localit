{Form::open(['action' => 'UserController@login', 'class' => 'form-horizontal', 'role' => 'form'])}
<div class="form-group row">
    <label for="login-email" class="col-md-4 control-label">{Lang::get('Email')}</label>
    <div class="col-md-6">
        {Form::text('email', $email, ['id' => 'login-email', 'class' => 'form-control', 'placeholder' => 'Email'])}
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