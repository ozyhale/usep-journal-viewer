<header class="art-header">
    <div class="art-shapes">
    </div>
</header>

<nav class="art-nav">
    <ul class="art-hmenu">
        <li><a href="{$site_url}" {if $set_navActive eq "1"} class="active" {/if}>Home</a></li>
        <li><a href="" {if $set_navActive eq "2"} class="active" {/if}>Departments</a>
            <ul>
                <li><a href="{$site_url}home/choose_journal_dept/1/{$_type}">Institute of Computing</a></li>
                <li><a href="{$site_url}home/choose_journal_dept/2/{$_type}">College of Arts and Sciences</a></li>
                <li><a href="{$site_url}home/choose_journal_dept/3/{$_type}">College of Governance Business and Economics</a></li>
                <li><a href="{$site_url}home/choose_journal_dept/4/{$_type}">School of Applied Economics</a></li>
                <li><a href="{$site_url}home/choose_journal_dept/5/{$_type}">College of Engineering</a></li>
                <li><a href="{$site_url}home/choose_journal_dept/6/{$_type}">College of Technology</a></li>
                <li><a href="{$site_url}home/choose_journal_dept/7/{$_type}">College of Education</a></li>
            </ul>
        </li>
        <li><a href="" {if $set_navActive eq "3"} class="active" {/if}>Journals</a>
            <ul>
                <li><a href="{$site_url}home/choose_journal_dept/{$_deptID}/Compendium">Compendium Journals</a></li>
                <li><a href="{$site_url}home/choose_journal_dept/{$_deptID}/Full-Length">Full Length Journals</a></li>
            </ul>
        </li>
    </ul> 
</nav>