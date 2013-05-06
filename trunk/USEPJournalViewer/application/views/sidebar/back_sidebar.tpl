<div class="well sidebar-nav">
    <ul class="nav nav-list">
        <li class="nav-header">Shortcuts</li>
        <li>
            <a href="#addJournal" data-toggle="modal">Add Journal</a>
            
            <div id="addJournal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h3 id="myModalLabel">Add Journal</h3>
                </div>
                <div class="modal-body">
                    <div class="control-group">
                        <label class="control-label">Journal Name</label>
                        <div class="controls">
                            <input type="text" placeholder="Journal Name...">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Journal Type</label>
                        <div class="controls">
                        <select>
                            <option>- Select Type of Journal -</option>
                            <option>Full Length Journal</option>
                            <option>Conpendum Journal</option>
                        </select>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Choose Department</label>
                        <div class="controls">
                            <select>
                                <option>- Select Department -</option>
                                <option>Institute of Computing</option>
                                <option>College of Engineering</option>
                                <option>College of Arts and Sciences</option>
                                <option>College of Education</option>
                                <option>College of Governance and Business</option>
                                <option>College of Technology</option>
                                <option>School of Applied Economics</option>
                            </select>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Volume Number</label>
                        <div class="controls">
                            <input type="text" placeholder="Enter Volume Number...">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">ISSN</label>
                        <div class="controls">
                            <input type="text" placeholder="Enter ISSN...">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Date Released</label>
                        <div class="controls">
                            <select>
                                <option>- Select Month -</option>
                                <option>January</option>
                                <option>February</option>
                                <option>March</option>
                                <option>April</option>
                                <option>May</option>
                                <option>June</option>
                                <option>July</option>
                                <option>August</option>
                                <option>September</option>
                                <option>October</option>
                                <option>November</option>
                                <option>December</option>
                            </select>
                        </div>
                    </div>
                    <div class="control-group">
                        <div class="controls">
                            <select>
                                <option>- Select Year -</option>
                                <option>2000</option>
                                <option>2001</option>
                                <option>2002</option>
                                <option>2003</option>
                                <option>2004</option>
                                <option>2005</option>
                                <option>2006</option>
                                <option>2007</option>
                                <option>2008</option>
                                <option>2009</option>
                                <option>2010</option>
                                <option>2011</option>
                                <option>2012</option>
                                <option>2013</option>
                            </select>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Cover Page</label>
                        <div class="controls">
                            <input type="text" placeholder="Upload Cover Page...">
                            <button type="submit" class="btn"><i class="icon-plus"></i>&nbsp;Choose Photo</button>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Journal File</label>
                        <div class="controls">
                            <input type="text" placeholder="Choose File...">
                            <button type="submit" class="btn"><i class="icon-plus"></i>&nbsp;Choose File</button>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                    <button class="btn btn-primary"><i class="icon-thumbs-up icon-white"></i>&nbsp;Add</button>
                </div>
            </div>
        </li>
        <li><a href="#addDept" data-toggle="modal">Add Department</a>
            <div id="addDept" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h3 id="myModalLabel">Add Department</h3>
                </div>
                <div class="modal-body">
                    <p>One fine body…</p>
                </div>
                <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                    <button class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </li>
        <li><a href="#addUser" data-toggle="modal">Add User</a>
            <div id="addUser" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h3 id="myModalLabel">Add User</h3>
                </div>
                <div class="modal-body">
                    <p>One fine body…</p>
                </div>
                <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                    <button class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </li>
        <li class="nav-header">User Navigation</li>
        <li><a href="#editUser" data-toggle="modal">Settings</a>
            <div id="editUser" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h3 id="myModalLabel">Settings</h3>
                </div>
                <div class="modal-body">
                    <p>One fine body…</p>
                </div>
                <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                    <button class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </li>
        <li><a href="{$site_url}administrator/logout">Logout</a></li>
    </ul>
</div>