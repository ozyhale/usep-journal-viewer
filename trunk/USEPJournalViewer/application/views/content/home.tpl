<style>
    .accordion-heading{
        background: -moz-linear-gradient(top, rgba(19,19,19,1) 0%, rgba(44,44,44,1) 10%, rgba(102,102,102,1) 66%);
        background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(19,19,19,1)), color-stop(10%,rgba(44,44,44,1)), color-stop(66%,rgba(102,102,102,1)));
        background: -webkit-linear-gradient(top, rgba(19,19,19,1) 0%,rgba(44,44,44,1) 10%,rgba(102,102,102,1) 66%);
        background: -o-linear-gradient(top, rgba(19,19,19,1) 0%,rgba(44,44,44,1) 10%,rgba(102,102,102,1) 66%);
        background: -ms-linear-gradient(top, rgba(19,19,19,1) 0%,rgba(44,44,44,1) 10%,rgba(102,102,102,1) 66%);
        background: linear-gradient(to bottom, rgba(19,19,19,1) 0%,rgba(44,44,44,1) 10%,rgba(102,102,102,1) 66%);
        border-radius: 5px 5px 0px 0px;
    }
    .accordion-heading:active{
        text-decoration: none;
    }
    .accordion-toggle{
        color: white;
        font-size: 9pt;
        padding-left: 1px;
        padding-right: 1px;
        margin-left: -10px;
    }
    .accordion-toggle:hover{
        text-decoration: none;
        color: white;
        font-weight: bold;
        font-size: 9pt;
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
        font-size: 9pt;
    }
    .accordion-inner{
        background: white;
        border: 1px solid #000000;
    }
    #acc_link{
        width: 100%;
        color: black;
        font-size: 9pt;
    }
    #acc_link:hover{
        color: black;
        font-size: 9pt;
        text-decoration: none;
        font-weight: bold;
    }
    .f_page{
        margin-left: 25%;
    }
    .f_cont{
        padding-left: -3px;
    }
    #acc_head{
        background: grey;
        color: white;
        margin-bottom: 2px;
        padding: 4px 2px 4px 2px;
        border-radius: 5px 5px 0px 0px;
    }
    .s_body{
        border: 1px solid #000;
        background: white;
        border-radius: 5px 5px 0px 0px;
    }
    #car1{
        background: #e8e8e8;
        background: -moz-linear-gradient(-45deg, #e8e8e8 0%, #207cca 21%, #e8e8e8 37%, #207cca 53%, #e8e8e8 68%, #207cca 88%, #7db9e8 100%);
        background: -webkit-gradient(linear, left top, right bottom, color-stop(0%,#e8e8e8), color-stop(21%,#207cca), color-stop(37%,#e8e8e8), color-stop(53%,#207cca), color-stop(68%,#e8e8e8), color-stop(88%,#207cca), color-stop(100%,#7db9e8));
        background: -webkit-linear-gradient(-45deg, #e8e8e8 0%,#207cca 21%,#e8e8e8 37%,#207cca 53%,#e8e8e8 68%,#207cca 88%,#7db9e8 100%);
        background: -o-linear-gradient(-45deg, #e8e8e8 0%,#207cca 21%,#e8e8e8 37%,#207cca 53%,#e8e8e8 68%,#207cca 88%,#7db9e8 100%);
        background: -ms-linear-gradient(-45deg, #e8e8e8 0%,#207cca 21%,#e8e8e8 37%,#207cca 53%,#e8e8e8 68%,#207cca 88%,#7db9e8 100%);
        background: linear-gradient(135deg, #e8e8e8 0%,#207cca 21%,#e8e8e8 37%,#207cca 53%,#e8e8e8 68%,#207cca 88%,#7db9e8 100%);
    }
</style>

<div class="row-fluid f_body">
    <div class="span3 s_body" style="width: 24%;">
        <div id="acc_head"><center><b>Departments</b></center></div>
        <div class="accordion" id="accordion1"style="margin-bottom: -1px;" >
            <div class="accordion-group">
                <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse1">
                        Institute of Computing
                    </a>
                </div>
                <div id="collapse1" class="accordion-body collapse">
                    <div class="accordion-inner"><a id="acc_link" href="{$site_url}home/choose_journal_dept/1/Compendium/0">Compendium Journals</a></div>
                    <div class="accordion-inner"><a id="acc_link" href="{$site_url}home/choose_journal_dept/1/Full-Length/0">Full Length Journals</a></div>
                </div>
            </div>
            <div class="accordion-group">
                <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse2">
                        College of Arts and Sciences
                    </a>
                </div>
                <div id="collapse2" class="accordion-body collapse">
                    <div class="accordion-inner"><a id="acc_link" href="{$site_url}home/choose_journal_dept/2/Compendium/0">Compendium Journals</a></div>
                    <div class="accordion-inner"><a id="acc_link" href="{$site_url}home/choose_journal_dept/2/Full-Length/0">Full Length Journals</a></div>
                </div>
            </div>
            <div class="accordion-group">
                <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse3">
                        College of Governance and Business
                    </a>
                </div>
                <div id="collapse3" class="accordion-body collapse">
                    <div class="accordion-inner"><a id="acc_link" href="{$site_url}home/choose_journal_dept/3/Compendium/0">Compendium Journals</a></div>
                    <div class="accordion-inner"><a id="acc_link" href="{$site_url}home/choose_journal_dept/3/Full-Length/0">Full Length Journals</a></div>
                </div>
            </div>
            <div class="accordion-group">
                <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse4">
                        School of Applied Economics
                    </a>
                </div>
                <div id="collapse4" class="accordion-body collapse">
                    <div class="accordion-inner"><a id="acc_link" href="{$site_url}home/choose_journal_dept/4/Compendium/0">Compendium Journals</a></div>
                    <div class="accordion-inner"><a id="acc_link" href="{$site_url}home/choose_journal_dept/4/Full-Length/0">Full Length Journals</a></div>
                </div>
            </div>
            <div class="accordion-group">
                <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse5">
                        College of Engineering
                    </a>
                </div>
                <div id="collapse5" class="accordion-body collapse">
                    <div class="accordion-inner"><a id="acc_link" href="{$site_url}home/choose_journal_dept/5/Compendium/0">Compendium Journals</a></div>
                    <div class="accordion-inner"><a id="acc_link" href="{$site_url}home/choose_journal_dept/5/Full-Length/0">Full Length Journals</a></div>
                </div>
            </div>
            <div class="accordion-group">
                <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse6">
                        College of Technology
                    </a>
                </div>
                <div id="collapse6" class="accordion-body collapse">
                    <div class="accordion-inner"><a id="acc_link" href="{$site_url}home/choose_journal_dept/6/Compendium/0">Compendium Journals</a></div>
                    <div class="accordion-inner"><a id="acc_link" href="{$site_url}home/choose_journal_dept/6/Full-Length/0">Full Length Journals</a></div>
                </div>
            </div>
            <div class="accordion-group">
                <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse7">
                        College of Education
                    </a>
                </div>
                <div id="collapse7" class="accordion-body collapse">
                    <div class="accordion-inner"><a id="acc_link" href="{$site_url}home/choose_journal_dept/7/Compendium/0">Compendium Journals</a></div>
                    <div class="accordion-inner"><a id="acc_link" href="{$site_url}home/choose_journal_dept/7/Full-Length/0">Full Length Journals</a></div>
                </div>
            </div>
        </div>
    </div>
    <div class="span9 f_cont" style="width: 73%;">
        {if isset($body_content)}
            {include file=$body_content}
        {else}
            <div id="myCarousel" class="carousel slide">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <!-- Carousel items -->
                <div class="carousel-inner">
                    <div class="active item">
                        <img id="car1" src="{$base_url}application/views/img/journal1.png" style="height: 80%">
                    </div>
                    <div class="item">
                        <img id="car1" src="{$base_url}application/views/img/journal2.png" style="height: 80%">
                    </div>
                    <div class="item">
                        <img id="car1" src="{$base_url}application/views/img/journal3.png" style="height: 80%">
                    </div>
                </div>
            </div>
            <div class="hero-unit f_hero">
                <center><legend class="text-info">USeP Journal Viewer - HOME</legend></center>
                <h1>Welcome...</h1>
                <p>Welcome to eyeSee the Institute of Computing Journal Viewer!</p>
                <br/><br/>
            </div>
            </div>
        {/if}

    </div>
</div>
