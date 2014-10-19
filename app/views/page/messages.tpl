{if Session::has('error')}
<div class="container top20">
    <div class="alert alert-danger">{Session::get('error')}</div>
</div>
{/if}

{if Session::has('success')}
    <div class="container top20">
        <div class="alert alert-success">{Session::get('success')}</div>
    </div>
{/if}
