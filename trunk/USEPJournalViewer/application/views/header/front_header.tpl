<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <div class="nav-collapse collapse">
                <ul class="nav">
                    <li {if $active_menu_item == 'Home'}class="active"{/if}>
                        <a href="{$base_url}">Home</a>
                    </li>
                    <li {if $active_menu_item == 'Full_Length_Journals'}class="active"{/if}>
                        <a href="{$site_url}full">Full Length Journals</a>
                    </li>
                    <li {if $active_menu_item == 'Conpendium Journals'}class="active"{/if}>
                        <a href="{$site_url}conpendium">Conpendium Journals</a>
                    </li>
                    
                </ul>
            </div>
        </div>
    </div>
</div>