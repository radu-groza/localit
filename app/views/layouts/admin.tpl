<!DOCTYPE html>
<html lang="en">

{include file="admin/page/head.tpl"}

<body>

<div id="wrapper">

    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="{URL::to('admin/dashboard')}">SB Admin v2.0</a>
        </div>

        {include file="admin/menu/top.tpl"}
        {include file="admin/menu/left.tpl"}


    </nav>
    <div id="page-wrapper">

        {$content}

    </div>

    {include file="admin/page/before_body_end.tpl"}
</body>
</html>