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

{if $list_journal|@count == 0}
    <div class="alert alert-info">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <h4>Information!</h4>
        No Journal has been uploaded yet... 
    </div>
{/if}

<ol class="thumbnails">
    {foreach from=$list_journal key=k item=l}
        <li class="span4" style="margin-left: 10px;">
            <div class="thumbnail f_thumb" style="height: 160px;">
                <center><img style="cursor: pointer; border: none; max-height: 150px; width: 200px;" data-src="holder.js/160x120" alt="" src="{$base_url}{$list_journal[$k]['cover_page']}" onclick="_target('{$site_url}pdfviewer/view_pdf/{$list_journal[$k]['id']}/{$_deptID}')"></center>
            </div>
        </li>
    {/foreach}
</ol>

{$pagination}
