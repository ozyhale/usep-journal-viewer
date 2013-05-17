<div id="add_user" class="modal hide fade">
    <form class="form-horizontal" action="{$site_url}users/add" method="post">

        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h3>Add User</h3>
        </div>

        <div class="modal-body">

            {if isset($add_user_alert)}
                {$add_user_alert}
            {/if}

            <legend>Login Information</legend>

            <div class="control-group">
                <label class="control-label">Username: </label>
                <div class="controls">
                    <input type="text" name="username">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Password: </label>
                <div class="controls">
                    <input type="password" name="password">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Confirm Password: </label>
                <div class="controls">
                    <input type="password" name="confpass">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Email: </label>
                <div class="controls">
                    <input type="email" name="email">
                </div>
            </div>

            <legend>Personal Information</legend>

            <div class="control-group">
                <label class="control-label">First Name: </label>
                <div class="controls">
                    <input type="text" name="firstname">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Middle Initial: </label>
                <div class="controls">
                    <input type="text" name="middle_initial" required pattern="[A-Z]">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Last Name: </label>
                <div class="controls">
                    <input type="text" name="lastname">
                </div>
            </div>

        </div>

        <div class="modal-footer">
            <button class="btn btn-primary" type="submit"><i class="icon-thumbs-up icon-white"></i>&nbsp;Add</button>
        </div>
    </form>
</div>