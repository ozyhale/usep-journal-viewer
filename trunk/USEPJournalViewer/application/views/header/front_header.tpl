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
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Full Length Journals <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="{$site_url}full/ic">IC - Institute of Computing</a></li>
                            <li><a href="{$site_url}full/cas">CAS - College of Arts and Sciences</a></li>
                            <li><a href="{$site_url}full/ct">CT - College of Technology</a></li>
                            <li><a href="{$site_url}full/ced">CED - College of Education</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Conpendum Journals <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="{$site_url}conpendium/ic">IC - Institute of Computing</a></li>
                            <li><a href="{$site_url}conpendium/cas">CAS - College of Arts and Sciences</a></li>
                            <li><a href="{$site_url}conpendium/ct">CT - College of Technology</a></li>
                            <li><a href="{$site_url}conpendium/ced">CED - College of Education</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>