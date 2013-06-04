<div id="f_title"><legend id="f_dname">{$dept_name} - {$journal_type}</legend></div>
{*$list_journal[0]['cover_page']|@var_dump*}
<center>
<hr width="90%" />
<!--
<div class="pagination f_page">
    <ul>
    <li><a href="#">Prev</a></li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li><a href="#">Next</a></li>
    </ul>
    </div>
-->
</center>
<!--  Thumbnails   -->

<ul class="thumbnails">
    {foreach from=$list_journal key=k item=l}
    <li class="span4" style="margin-left: 10px;">
        <div class="thumbnail f_thumb">
            <center><img style="cursor: pointer;" data-src="holder.js/160x120" alt="" src="{$base_url}{$list_journal[$k]['cover_page']}" onclick="_target('{$site_url}pdfviewer/view_pdf/{$list_journal[$k]['id']}/{$_deptID}')"></center>
            <div class="caption">
                <h3 style="font-size: 14pt;">{$list_journal[$k]['Title']}</h3>
                <p>
                    <ul>
                        <li><strong>Course:</strong> {$list_journal[$k]['course_name']}</li>
                        <li><strong>Volume:</strong> {$list_journal[$k]['volume']}</li>
                        <li><strong>ISSN:</strong> {$list_journal[$k]['ISSN']}</li>
                        <li><strong>Date Released:</strong> {$list_journal[$k]['date_released']}</li>
                    </ul>
                </p>
            </div>
        </div>
    </li>
    {/foreach}
</ul>
