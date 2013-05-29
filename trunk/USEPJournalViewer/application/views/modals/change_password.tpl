<div id="change_pass" class="modal hide fade">
    <form class="form-horizontal" action="" method="post">

        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h3>Change Password</h3>
        </div>

        <div class="modal-body b_modal">

            <legend>Login Information</legend>

            <div class="control-group">
                <label class="control-label">Username: </label>
                <div class="controls">
                    <input type="text" name="username" value="{$uname}" disabled>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Password: </label>
                <div class="controls">
                    <input type="password" name="password" placeholder="Enter password..." required>
                </div>
            </div> 

        </div>

        <div class="modal-footer">
            <button class="btn btn-primary" type="submit" name="change_pass"><i class="icon-thumbs-up icon-white"></i>&nbsp;Save</button>
            <button class="btn" data-dismiss="modal">Cancel</button>
        </div>
    </form>
</div>