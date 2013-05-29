<div id="view_list" class="modal hide fade">
    <form class="form-horizontal" action="" method="post">

        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h3>List of {$Type} Journals</h3>
        </div>

        <div class="modal-body b_modal">
            <table class="table table-bordered table-hover">
                <tr>
                    <th style="max-width: 50px;"><center>Title</center></th>
                    <th style="max-width: 50px;"><center>Volume</center></th>
                    <th style="max-width: 50px;"><center>ISSN</center></th>
                    <th style="max-width: 50px;"><center>Date Released</center></th>
                    <th style="max-width: 50px;"><center>Action</center></th>
                </tr>
                {if isset($list_journal[0]['Title'])}
                    {foreach from=$list_journal key=k item=i}
                    <tr>
                        <td style="max-width: 50px;">{$list_journal[$k]['Title']}</td>
                        <td style="max-width: 50px;">{$list_journal[$k]['volume']}</td>
                        <td style="max-width: 50px;">{$list_journal[$k]['ISSN']}</td>
                        <td style="max-width: 50px;">{$list_journal[$k]['date_released']}</td>
                        <td>
                            <center>
                                <a href="{$site_url}pdfviewer/view_pdf/{$list_journal[$k]['id']}"><i class="icon-eye-open"></i> View PDF</a>
                            </center>
                        </td>
                    </tr>
                    {/foreach}
                {else}
                    <td colspan="5" style="color: #ED123A;"><center>No Found Result</center></td> 
                {/if}     
            </table>

        </div>

        <div class="modal-footer">
            <button class="btn" data-dismiss="modal">Cancel</button>
        </div>
    </form>
</div>