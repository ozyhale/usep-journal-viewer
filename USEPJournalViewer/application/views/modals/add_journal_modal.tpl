<div id="addJournal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">Add Journal</h3>
        </div>

        <div class="modal-body">
            <legend>Journal Information</legend>

            <div class="control-group">
                <label class="control-label">Journal Name:</label>
                <div class="controls">
                    <input type="text" placeholder="Journal Name...">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Journal Type:</label>
                <div class="controls">
                    <select>
                        <option>Full Length Journal</option>
                        <option>Conpendum Journal</option>
                    </select>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Volume Number:</label>
                <div class="controls">
                    <input type="text" placeholder="Enter Volume Number...">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">ISSN:</label>
                <div class="controls">
                    <input type="text" placeholder="Enter ISSN...">
                </div>
            </div>

            <legend>Journal File</legend>

            <div class="control-group">
                <label class="control-label">Cover Page: </label>
                <div class="controls">
                    <span class="btn-file">
                        <input type="file" name="cover_img" required />
                    </span>
                </div>
            </div>
            
            <div class="control-group">
                <label class="control-label">Journal File: </label>
                <div class="controls">
                    <span class="btn-file">
                        <input type="file" name="pdf_file" required />
                    </span>
                </div>
            </div>

                <!--
                <div class="control-group">
                    <label class="control-label">Cover Page</label>
                    <div class="controls">
                        <input type="text" placeholder="Upload Cover Page...">
                        <button type="submit" class="btn"><i class="icon-plus"></i>&nbsp;Choose Photo</button>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">File</label>
                    <div class="controls">
                        <input type="text" placeholder="Choose File...">
                        <button type="submit" class="btn"><i class="icon-plus"></i>&nbsp;Choose File</button>
                    </div>
                </div>
                -->

            </div>
            <div class="modal-footer">
                <button class="btn btn-primary"><i class="icon-thumbs-up icon-white"></i>&nbsp;Add</button>
            </div>

    </form>




</div>