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
                    <input type="text" name="username" placeholder="Enter username...">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Password: </label>
                <div class="controls">
                    <input type="password" name="password" placeholder="Enter password...">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Confirm Password: </label>
                <div class="controls">
                    <input type="password" name="confpass" placeholder="Enter password again...">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Email: </label>
                <div class="controls">
                    <input type="email" name="email" placeholder="Enter email address...">
                </div>
            </div>

            <legend>Personal Information</legend>

            <div class="control-group">
                <label class="control-label">First Name: </label>
                <div class="controls">
                    <input type="text" name="firstname" placeholder="Enter firstname...">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Middle Initial: </label>
                <div class="controls">
                    <input type="text" name="middle_initial" required pattern="[A-Z]" placeholder="Enter middle initial...">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Last Name: </label>
                <div class="controls">
                    <input type="text" name="lastname" placeholder="Enter lastname...">
                </div>
            </div>

            <legend>Assigned Department</legend>
            
            <div class="control-group">
                <label class="control-label">Department: </label>
                <div class="controls">
                    <select name="dept_assigned">
                        <option value="1">Institute of Computing</option>
                        <option value="2">College of Arts and Sciences</option>
                        <option value="3">College of Governance Business and Economics</option>
                        <option value="4">School of Applied Economics</option>
                        <option value="5">College of Engineering</option>
                        <option value="6">College of Technology</option>
                        <option value="7">College of Education</option>
                    </select>
                </div>
            </div>
            
        </div>

        <div class="modal-footer">
            <button class="btn btn-primary" type="submit"><i class="icon-thumbs-up icon-white"></i>&nbsp;Add</button>
        </div>
    </form>
</div>