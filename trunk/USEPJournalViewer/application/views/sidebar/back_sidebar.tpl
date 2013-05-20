<div class="well sidebar-nav">
    <ul class="nav nav-list">
        <li class="nav-header">Shortcuts</li>

        <!-- add journal -->
        <li>
            <a href="#addJournal" data-toggle="modal">Add Journal</a>
            {include file='add_journal_modal.tpl'}
            <!--
            
            -->
            
        </li>

        <!--  add department -->

        <!--
        <li><a href="#addDept" data-toggle="modal">Add Department</a>
            <div id="addDept" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h3 id="myModalLabel">Add Department</h3>
                </div>
                <div class="modal-body">
                    <div class="control-group">
                        <label class="control-label">Add Department</label>
                            <input type="text" placeholder="<- Enter Department Name ->">
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary"><i class="icon-thumbs-up icon-white"></i>&nbsp;Add</button>
                </div>
            </div>
        </li>
        -->

        <!-- add user -->
        {if $account_type eq "Super Admin"}
            <li><a href="#add_user" data-toggle="modal">Add User</a>
                {include file='add_user_modal.tpl'}
            </li>
        {/if}
        
        <li class="nav-header">User Navigation</li>

        <!-- edit user -->

        <li><a href="#edit_user" data-toggle="modal">Settings</a>
            {include file='settings.tpl'}
            <!--
            <div id="editUser" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h3 id="myModalLabel">Settings</h3>
                </div>
                <div class="modal-body">
                    <table>
                        <td>
                            <label class="control-label">List of Users:</label>
                            <div class="controls">
                                <select>
                                    <option>- Select User -</option>
                                </select>
                            </div>
                        </td>
                        <td>
                            <label>&nbsp; &nbsp; &nbsp;</label>
                        </td>
                        <td>
                            <label class="control-label">Action</label>
                            <div class="controls">
                                <select>
                                    <option>Edit</option>
                                    <option>Delete</option>
                                </select>
                            </div>
                        </td>
                    </table>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary"><i class="icon-thumbs-up icon-white"></i>&nbsp;Select</button>
                </div>
            </div>
            -->
        </li>
        <li><a href="{$site_url}administrator/logout">Logout</a></li>
    </ul>
</div>