<div><legend>{$dept_name} - {$journal_type}</legend></div>

<!--  Thumbnails   -->
<ul class="thumbnails">
    {foreach from=$list_journal key=k item=l}
    <li class="span4">
        <div class="thumbnail">
            <img data-src="holder.js/160x120" alt="" src="">
            <div class="caption">
                <h3>{$list_journal[$k]['Title']}</h3>
                <p>
                    <ul>
                        <li><strong>Volume:</strong> {$list_journal[$k]['volume']}</li>
                        <li><strong>ISSN:</strong> {$list_journal[$k]['ISSN']}</li>
                        <li><strong>Date Released:</strong> {$list_journal[$k]['date_released']}</li>
                    </ul>
                </p>
                <p><a href="{$site_url}pdfviewer/view_pdf/{$list_journal[$k]['id']}" target="_blank" class="btn btn-primary">View</a> <a href="#" class="btn">Action</a></p>
            </div>
        </div>
    </li>
    {/foreach}
</ul>