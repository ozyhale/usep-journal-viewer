<div id="f_title"><legend id="f_dname">{$dept_name} - {$journal_type}</legend></div>
{*$list_journal[0]['cover_page']|@var_dump*}
<center>
<hr width="90%" />
</center>
<!--  Thumbnails   -->
<ul class="thumbnails">
    {foreach from=$list_journal key=k item=l}
    <li class="span4" style="margin-left: 10px;">
        <div class="thumbnail f_thumb">
            <center><img style="cursor: pointer;" data-src="holder.js/160x120" alt="" src="{$base_url}{$list_journal[$k]['cover_page']}" onclick="_target('{$site_url}pdfviewer/view_pdf/{$list_journal[$k]['id']}/{$_deptID}')"></center>
            <div class="caption">
                <h3>{$list_journal[$k]['Title']}</h3>
                <p>
                    <ul>
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
