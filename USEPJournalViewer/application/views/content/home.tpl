<style>
    .accordion-heading{
        background: -moz-linear-gradient(top, rgba(19,19,19,1) 0%, rgba(44,44,44,1) 10%, rgba(102,102,102,1) 66%); /* FF3.6+ */
        background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(19,19,19,1)), color-stop(10%,rgba(44,44,44,1)), color-stop(66%,rgba(102,102,102,1))); /* Chrome,Safari4+ */
        background: -webkit-linear-gradient(top, rgba(19,19,19,1) 0%,rgba(44,44,44,1) 10%,rgba(102,102,102,1) 66%); /* Chrome10+,Safari5.1+ */
        background: -o-linear-gradient(top, rgba(19,19,19,1) 0%,rgba(44,44,44,1) 10%,rgba(102,102,102,1) 66%); /* Opera 11.10+ */
        background: -ms-linear-gradient(top, rgba(19,19,19,1) 0%,rgba(44,44,44,1) 10%,rgba(102,102,102,1) 66%); /* IE10+ */
        background: linear-gradient(to bottom, rgba(19,19,19,1) 0%,rgba(44,44,44,1) 10%,rgba(102,102,102,1) 66%); /* W3C */
    }
    .accordion-heading:active{
        text-decoration: none;
    }
    .accordion-toggle{
        color: white;
    }
    .accordion-toggle:hover{
        text-decoration: none;
        color: white;
        font-weight: bold;
    }
    .accordion-toggle:active{
        text-decoration: none;
        color: white;
        font-weight: bold;
    }
    .accordion-toggle:focus{
        text-decoration: none;
        color: white;
        font-weight: bold;
    }
    .accordion-inner{
        background: white;
        border: 1px solid #000000;
    }
</style>

<div class="row-fluid f_body">
    <div class="accordion span3" id="accordion1">
        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse1">
                    Institute of Computing
                </a>
            </div>
            <div id="collapse1" class="accordion-body collapse">
                <div class="accordion-inner"><a href="{$site_url}home/choose_journal_dept/1/Compendium">Compendium Journals</a></div>
                <div class="accordion-inner"><a href="{$site_url}home/choose_journal_dept/1/Full-Length">Full Length Journals</a></div>
            </div>
        </div>
        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse2">
                    College of Arts and Sciences
                </a>
            </div>
            <div id="collapse2" class="accordion-body collapse">
                 <div class="accordion-inner"><a href="{$site_url}home/choose_journal_dept/2/Compendium">Compendium Journals</a></div>
                <div class="accordion-inner"><a href="{$site_url}home/choose_journal_dept/2/Full-Length">Full Length Journals</a></div>
            </div>
        </div>
        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse3">
                    College of Governance Business and Economics
                </a>
            </div>
            <div id="collapse3" class="accordion-body collapse">
                 <div class="accordion-inner"><a href="{$site_url}home/choose_journal_dept/3/Compendium">Compendium Journals</a></div>
                <div class="accordion-inner"><a href="{$site_url}home/choose_journal_dept/3/Full-Length">Full Length Journals</a></div>
            </div>
        </div>
        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse4">
                    School of Applied Economics
                </a>
            </div>
            <div id="collapse4" class="accordion-body collapse">
                 <div class="accordion-inner"><a href="{$site_url}home/choose_journal_dept/4/Compendium">Compendium Journals</a></div>
                <div class="accordion-inner"><a href="{$site_url}home/choose_journal_dept/4/Full-Length">Full Length Journals</a></div>
            </div>
        </div>
        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse5">
                    College of Engineering
                </a>
            </div>
            <div id="collapse5" class="accordion-body collapse">
                 <div class="accordion-inner"><a href="{$site_url}home/choose_journal_dept/5/Compendium">Compendium Journals</a></div>
                <div class="accordion-inner"><a href="{$site_url}home/choose_journal_dept/5/Full-Length">Full Length Journals</a></div>
            </div>
        </div>
        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse6">
                    College of Technology
                </a>
            </div>
            <div id="collapse6" class="accordion-body collapse">
                 <div class="accordion-inner"><a href="{$site_url}home/choose_journal_dept/6/Compendium">Compendium Journals</a></div>
                <div class="accordion-inner"><a href="{$site_url}home/choose_journal_dept/6/Full-Length">Full Length Journals</a></div>
            </div>
        </div>
        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse7">
                    College of Education
                </a>
            </div>
            <div id="collapse7" class="accordion-body collapse">
                 <div class="accordion-inner"><a href="{$site_url}home/choose_journal_dept/7/Compendium">Compendium Journals</a></div>
                <div class="accordion-inner"><a href="{$site_url}home/choose_journal_dept/7/Full-Length">Full Length Journals</a></div>
            </div>
        </div>
    </div>
    <div class="span9">
        {if isset($body_content)}
            {include file=$body_content}
        {else}
            <div class="hero-unit f_hero">
                <h1>Welcome...</h1>
                <p>Welcome to eyeSee the Institute of Computing Journal Viewer!</p>
                <br/><br/>
            </div>
        {/if}

    </div>
</div>
