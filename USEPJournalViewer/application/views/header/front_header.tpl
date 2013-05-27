<header class="art-header">
    <div class="art-shapes">
    </div>
</header>

<nav class="art-nav">
    <ul class="art-hmenu">
        <li><a href="{$site_url}" {if $set_navActive eq "1"} class="active" {/if}>Home</a></li>
        <li><a href="" {if $set_navActive eq "2"} class="active" {/if}>Departments</a>
            <ul>
                <li><a href="{$site_url}home/choose_dept/1">Institute of Computing</a></li>
                <li><a href="{$site_url}home/choose_dept/2">College of Arts and Sciences</a></li>
                <li><a href="{$site_url}home/choose_dept/3">College of Governance Business and Economics</a></li>
                <li><a href="{$site_url}home/choose_dept/4">School of Applied Economics</a></li>
                <li><a href="{$site_url}home/choose_dept/5">College of Engineering</a></li>
                <li><a href="{$site_url}home/choose_dept/6">College of Technology</a></li>
                <li><a href="{$site_url}home/choose_dept/7">College of Education</a></li>
            </ul>
        </li>
        <li><a href="" {if $set_navActive eq "3"} class="active" {/if}>Journals</a>
            <ul>
                <li><a href="{$site_url}home/choose_journals/Compendium">Compendium Journals</a></li>
                <li><a href="{$site_url}home/choose_journals/Full-Length">Full Length Journals</a></li>
            </ul>
        </li>
    </ul> 
</nav>