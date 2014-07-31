@section('content')
<h1>{{{$content_heading}}}</h1>
@if (Session::has('flash_error'))
    <div id="flash_error">{{ Session::get('flash_error') }}</div>
@endif
<form role="form" id="form-data" action="" method="post">
    <div class="form-group">
        <label for="exampleInputEmail1">Email address</label>
        <input type="email" class="form-control" placeholder="Enter email">
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input type="password" class="form-control" placeholder="Password">
    </div>
    <button type="submit" class="btn btn-default">Login</button>
</form>
@stop