<legend><i class="icon-book"></i>&nbsp; List of Journals in {$dept_name}</legend>

<table class="table table-bordered data-table">
    <thead>
        <tr>
            <th style="padding-top: 25px;" ><center>Title</center></th>
            <th style="padding-top: 25px;" ><center>Type</center></th>
            <th style="padding-top: 25px;" ><center>Volume</center></th>
            <th style="padding-top: 25px;" ><center>ISSN</center></th>
            <th style="padding-top: 25px;" ><center>Date Released</center></th>
            <th><center>Action</center></th>
        </tr>

    </thead>
    
    <tbody>
        {foreach from=$journals key=k item=i}
           <tr> 
               <td style=""><a href="{$base_url}{$journals[$k]['journal_file']}" target="_blank" style="cursor: pointer">{$journals[$k]['Title']}</a></td>
                <td style="">{$journals[$k]['type']}</td>
                <td style="">{$journals[$k]['volume']}</td>
                <td style="">{$journals[$k]['ISSN']}</td>
                <td style="">{$journals[$k]['date_released']}</td>
                <td style="max-width: 75px;">
                        {*
                        <button class="btn btn-success" onclick="window.location.href='{$site_url}journals/edit/{$journals[$k]['id']}'"><i class="icon-pencil icon-white"></i></button>
                        <button class="btn btn-danger" onclick="onclick_delete_journals('{$journals[$k]['id']}','{$journals[$k]['Title']}')" ><i class="icon-remove icon-white"></i></button>
                        *}
                        <div class="btn-group">
                            <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                            Action
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="{$site_url}journals/edit/{$journals[$k]['id']}">Edit</a></li>
                                <li><a href="javascript:onclick_delete_journals('{$journals[$k]['id']}','{$journals[$k]['Title']}')">Delete</a></li>
                            </ul>
                        </div>
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