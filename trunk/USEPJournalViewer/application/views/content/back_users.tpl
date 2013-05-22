<legend><i class="icon-book"></i>&nbsp;List of Users</legend>

<table class="table table-bordered table-hover data-table">
    <thead>
        <tr>
            <th style="padding-top: 25px;"><center>Name</center></th>
            <th style="padding-top: 25px;"><center>Email Address</center></th>
            <th style="max-width: 80px;"><center>Action</center></th>
        </tr>
    </thead>
    <tbody>
        {foreach from=$name key=k item=i}
           <tr> 
                <td style="max-width: 200px">{$name[$k]['lastname']}, {$name[$k]['firstname']} {$name[$k]['middle_initial']}.</td>
                <td style="max-width: 200px">{$name[$k]['email']}</td>
                <td>
                    <center>
                        <button class="btn btn-success" onclick="window.location.href='{$site_url}users/change_pass/{$name[$k]['username']}'"><i class="icon-wrench icon-white"></i></button>
                        <button class="btn btn-danger" onclick="onclick_delete_users('{$name[$k]['id']}','{$name[$k]['lastname']}','{$name[$k]['firstname']}','{$name[$k]['middle_initial']}')"><i class="icon-remove icon-white"></i></button>
                    </center>
                </td>
            </tr>
        {/foreach}    
        
        <!--
        <tr>
            <td style="max-width: 200px">admin</td>
            <td style="max-width: 200px">password</td>
            <td><center><button class="btn btn-success"><i class="icon-pencil icon-white"></button></td>
            <td><center><button class="btn btn-danger"><i class="icon-remove icon-white"></button></td>
        </tr>
        -->
    </tbody>
    
</table>