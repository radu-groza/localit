<html>
    @include('page.head')
    <body>
    <div class="container">
        @include('page.header')
        <div class="col-md-12 well" role="main">
            @yield('content')
        </div>
        @include('page.footer')
    </div>
    </body>
</html>