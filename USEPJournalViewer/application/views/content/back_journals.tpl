<legend><i class="icon-book"></i>&nbsp; List of Journals in {$dept_name}</legend>

<table class="table table-bordered data-table">
    <thead>
        <tr>
            <th style="max-width: 50px; padding-top: 25px;" ><center>Title</center></th>
            <th style="max-width: 50px; padding-top: 25px;" ><center>Type</center></th>
            <th style="max-width: 50px; padding-top: 25px;" ><center>Volume</center></th>
            <th style="max-width: 50px; padding-top: 25px;" ><center>ISSN</center></th>
            <th style="max-width: 50px; padding-top: 25px;" ><center>Date Released</center></th>
            <th style="max-width: 50px;"><center>Action</center></th>
        </tr>

    </thead>
    
    <tbody>
        {foreach from=$journals key=k item=i}
           <tr> 
               <td style="max-width: 50px"><a href="{$base_url}{$journals[$k]['journal_file']}" target="_blank" style="cursor: pointer">{$journals[$k]['Title']}</a></td>
                <td style="max-width: 50px">{$journals[$k]['type']}</td>
                <td style="max-width: 50px">{$journals[$k]['volume']}</td>
                <td style="max-width: 50px">{$journals[$k]['ISSN']}</td>
                <td style="max-width: 50px">{$journals[$k]['date_released']}</td>
                <td>
                    <center>
                        <button class="btn btn-success" onclick="window.location.href='{$site_url}journals/edit/{$journals[$k]['id']}'"><i class="icon-pencil icon-white"></i></button>
                        <button class="btn btn-danger" onclick="onclick_delete_journals('{$journals[$k]['id']}','{$journals[$k]['Title']}')" ><i class="icon-remove icon-white"></i></button>
                    </center>
                </td>
            </tr>
        {/foreach}
    </tbody>
    <!--
    <tr>
        <td style="max-width: 200px">Development Management Research Journal</td>
        <td><center><button class="btn btn-success"><i class="icon-pencil icon-white"></button></td>
        <td><center><button class="btn btn-danger"><i class="icon-remove icon-white"></button></td>
    </tr>
    -->
</table>