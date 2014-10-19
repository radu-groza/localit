{Form::open(['action' => 'UserController@register', 'class' => 'form-horizontal', 'role' => 'form'])}
    {Form::htext('email', 'Email', $email)}
    {Form::htext('first_name', 'First Name', $email)}
    {Form::htext('last_name', 'Last Name', $email)}
    {Form::hpassword('password', 'Password')}
    {Form::hpassword('password_confirmation', 'Retype Password')}
    {Form::hsubmit('Register')}
{Form::close()}