<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="{URL::to('/')}">Project name</a>
        </div>
        {if Auth::check()}
            <div class="btn-group navbar-btn navbar-right">
                <a class="btn btn-default" href="{URL::to('user/profile')}">Profile</a>
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    <span class="caret"></span>
                    <span class="sr-only">Toggle Dropdown</span>
                </button>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="{URL::to('user/profile/edit')}">Edit profile</a></li>
                    <li><a href="{URL::to('user/profile/change-password')}">Change password</a></li>
                    <li class="divider"></li>
                    <li><a class="text-danger" href="{URL::to('user/logout')}"><i class="glyphicon glyphicon-lock"> </i> Logout</a></li>
                </ul>
            </div>
            <p class="navbar-right navbar-text">
                {Lang::get('user.loggedinas', ['name' => '<strong>'|cat:Auth::user()->fullName()|cat:'</strong>'])}
            </p>
        {/if}
        <div class="navbar-collapse collapse">
            <div class="navbar-form navbar-right clearfix">
                {if !Auth::check()}
                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modal-user-login">Sign in</button>
                    <a class="btn btn-info" href="{URL::to('user/register')}">Register</a>
                {/if}
            </div>
        </div>
        <!--/.navbar-collapse -->
    </div>
</div>

<div class="modal" id="modal-user-login" role="dialog" aria-hidden="true" aria-labelledBy="#modal-user-login-title">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title" id="modal-user-login-title">{Lang::get('Sign in')}</h4>
            </div>
            <div class="modal-body">
                {include file="_forms/user/login.tpl"}
            </div>
        </div>
    </div>
</div>

<div class="modal" id="modal-forgot-password" role="dialog" aria-hidden="true" aria-labelledBy="#modal-fp-title">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
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
                            <button type="button" class="btn btn-link" data-toggle="modal" data-dismiss="modal"
                                    data-target="#modal-user-login">{Lang::get('Login')}</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>