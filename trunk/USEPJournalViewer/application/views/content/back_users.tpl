<legend><i class="icon-book"></i>&nbsp;List of Users</legend>

<table class="table table-bordered table-hover data-table">
    <!--<thead>
        <tr>
            <th>eawea</th>
            <th>eaweaw</th>
            <th>weawew</th>
            <th>aaaaa</th>
            <th>eaeawewa</th>
            <th>ssdasd</th>
            <th>eaweawe</th>
        </tr>
    </thead>
    
    <tbody>
        <tr>
            <td>eawea</td>
            <td>eawea</td>
            <td>eawe</td>
            <td>eawea</td>
            <td>eaweaw</td>
            <td>eaweaw</td>
            <td>eaweawe</td>
        </tr>
        <tr>
            <td>eawea</td>
            <td>eawea</td>
            <td>eawe</td>
            <td>eawea</td>
            <td>eaweaw</td>
            <td>eaweaw</td>
            <td>eaweawe</td>
        </tr>
        <tr>
            <td>eawea</td>
            <td>eawea</td>
            <td>eawe</td>
            <td>eawea</td>
            <td>eaweaw</td>
            <td>eaweaw</td>
            <td>eaweawe</td>
        </tr>
        <tr>
            <td>eawea</td>
            <td>eawea</td>
            <td>eawe</td>
            <td>eawea</td>
            <td>eaweaw</td>
            <td>eaweaw</td>
            <td>eaweawe</td>
        </tr>
        <tr>
            <td>eawea</td>
            <td>eawea</td>
            <td>eawe</td>
            <td>eawea</td>
            <td>eaweaw</td>
            <td>eaweaw</td>
            <td>eaweawe</td>
        </tr>
        <tr>
            <td>eawea</td>
            <td>eawea</td>
            <td>eawe</td>
            <td>eawea</td>
            <td>eaweaw</td>
            <td>eaweaw</td>
            <td>eaweawe</td>
        </tr>
        <tr>
            <td>eawea</td>
            <td>eawea</td>
            <td>eawe</td>
            <td>eawea</td>
            <td>eaweaw</td>
            <td>eaweaw</td>
            <td>eaweawe</td>
        </tr>
        <tr>
            <td>eawea</td>
            <td>eawea</td>
            <td>eawe</td>
            <td>eawea</td>
            <td>eaweaw</td>
            <td>eaweaw</td>
            <td>eaweawe</td>
        </tr>
        <tr>
            <td>eawea</td>
            <td>eawea</td>
            <td>eawe</td>
            <td>eawea</td>
            <td>eaweaw</td>
            <td>eaweaw</td>
            <td>eaweawe</td>
        </tr>
        <tr>
            <td>eawea</td>
            <td>eawea</td>
            <td>eawe</td>
            <td>eawea</td>
            <td>eaweaw</td>
            <td>eaweaw</td>
            <td>eaweawe</td>
        </tr>
        
    </tbody>
    -->
    
    <thead>
        <tr>
            <th style="padding-top: 25px;" rowspan="2"><center>Name</center></th>
            <th style="padding-top: 25px;" rowspan="2"><center>Email Address</center></th>
            <th style="max-width: 50px;"><center>Delete</center></th>
        </tr>
    </thead>
    <tbody>
        {foreach from=$name key=k item=i}
           <tr> 
                <td style="max-width: 200px">{$name[$k]['lastname']}, {$name[$k]['firstname']} {$name[$k]['middle_initial']}.</td>
                <td style="max-width: 200px">{$name[$k]['email']}</td>
                <td><center><button class="btn btn-danger" onclick="window.location.href='{$site_url}/users/delete/{$name[$k]['id']}/'"><i class="icon-remove icon-white"></button></td>
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