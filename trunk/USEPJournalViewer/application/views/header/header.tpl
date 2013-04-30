    <div class="navbar">
    <div class="navbar-inner">
        <ul class="nav">
            <li>
                <a href="#">Home</a>
            </li>
        </ul>
    </div>
    </div>
    <div class="row">
                <div class="span12">

                    {if isset($user_exist)}
                        <small class="pull-right">{$name}(<a href="{$host}/index.php?action=logout">logout</a>)</small>
                    {/if}

                    <p class="lead">Administrator Control Panel</p>

                </div>
    </div>
           