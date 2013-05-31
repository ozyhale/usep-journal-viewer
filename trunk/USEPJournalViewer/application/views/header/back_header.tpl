<header>
    <div id="back_header"> </div>
    </header>
<div class="navbar navbar-inverse">
    <div class="navbar-inner">
        <div class="container-fluid">
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="brand" href="{$site_url}administrator">USEP Journal Viewer</a>
            <div class="nav-collapse collapse">
                <p class="navbar-text pull-right">
                    Hi! {$firstname} {$middlename}. {$lastname}, <a href="{$site_url}administrator/logout">Logout</a>
                </p>
                <ul class="nav">
                    <li {if $active_menu_item == 'Home'}class='active'{/if}>
                        <a href="{$site_url}administrator">Home</a>
                    </li>
                    <li {if $active_menu_item == 'Journals'}class='active'{/if}>
                        <a href="{$site_url}journals">Journals</a>
                    </li>
                    <li {if $active_menu_item == 'Departments'}class='active'{/if}>
                        {*<a href="{$site_url}departments">Departments</a>*}    
                    </li>
                    <li {if $active_menu_item == 'Users'}class='active'{/if}>
                        {if $account_type eq "Super Admin"}<a href="{$site_url}users">Users</a>{/if}
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>


