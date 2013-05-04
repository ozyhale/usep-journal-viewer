<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="brand" href="#">USEP Journal Viewer</a>
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
                        <a href="{$site_url}departments">Departments</a>
                    </li>
                    <li {if $active_menu_item == 'Users'}class='active'{/if}>
                        <a href="{$site_url}users">Users</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>