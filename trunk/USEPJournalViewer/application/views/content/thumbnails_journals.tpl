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

<ol class="thumbnails">
    {foreach from=$list_journal key=k item=l}
    <li class="span4" style="margin-left: 10px;">
        <div class="thumbnail f_thumb" style="height: 450px;">
            <center><img style="cursor: pointer; border: none;" data-src="holder.js/160x120" alt="" src="{$base_url}{$list_journal[$k]['cover_page']}" onclick="_target('{$site_url}pdfviewer/view_pdf/{$list_journal[$k]['id']}/{$_deptID}')"></center>
            <div class="caption">
                <p style="font-size: 10pt; font-weight: bold;">{$list_journal[$k]['Title']}</p>
                <p>
                    <ol>
                        <li style="font-size: 9pt;"><strong>Course:</strong> {$list_journal[$k]['course_name']}</li>
                        <li style="font-size: 9pt;"><strong>Volume:</strong> {$list_journal[$k]['volume']}</li>
                        <li style="font-size: 9pt;"><strong>ISSN:</strong> {$list_journal[$k]['ISSN']}</li>
                        <li style="font-size: 9pt;"><strong>Date Released:</strong> {$list_journal[$k]['date_released']}</li>
                    </ol>
                </p>
            </div>
        </div>
    </li>
    {/foreach}
</ol>

{$pagination}
