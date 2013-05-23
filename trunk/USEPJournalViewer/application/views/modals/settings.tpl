<div id="edit_user" class="modal hide fade">
    <form class="form-horizontal" action="{$site_url}users/settings" method="post">

        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h3>Account Settings</h3>
        </div>

        <div class="modal-body">

            {if isset($add_user_alert)}
                {$add_user_alert}
            {/if}

            <legend>Login Information</legend>



            <div class="control-group">
                <label class="control-label">Old Password: </label>
                <div class="controls">
                    <input type="password" name="old_password" >
                </div>
            </div>
            
            <div class="control-group">
                <label class="control-label">New Password: </label>
                <div class="controls">
                    <input type="password" name="new_password" >
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Email: </label>
                <div class="controls">
                    <input type="email" name="email" value="{$email}">
                </div>
            </div>

            <legend>Personal Information</legend>

            <div class="control-group">
                <label class="control-label">First Name: </label>
                <div class="controls">
                    <input type="text" name="firstname" value="{$firstname}">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Middle Initial: </label>
                <div class="controls">
                    <input type="text" name="middle_initial" required pattern="[A-Z]" value="{$middlename}">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Last Name: </label>
                <div class="controls">
                    <input type="text" name="lastname" value="{$lastname}">
                </div>
            </div>

        </div>

        <div class="modal-footer">
            <button class="btn btn-primary" type="submit"><i class="icon-thumbs-up icon-white"></i>&nbsp;Save</button>
            <button class="btn" data-dismiss="modal">Cancel</button>
        </div>
    </form>
</div>