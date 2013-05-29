<div id="addJournal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <form class="form-horizontal" action="{$site_url}journals/add" method="post" enctype="multipart/form-data">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">Add Journal</h3>
        </div>

        {*if isset($perform_progress)}
            <div class="progress progress-striped active" style="margin-left: 50px; margin-right: 50px;">
                <div class="bar" style="width: 100%;"> 100%</div>
            </div>
        {/if*}    

        <div class="modal-body b_modal">
            <legend>Journal Information</legend>

            <div class="control-group">
                <label class="control-label">Title:</label>
                <div class="controls">
                    <input type="text" name="title" placeholder="Journal Name..." required>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Journal Type:</label>
                <div class="controls">
                    <select name="type" required>
                        <option>Full Length</option>
                        <option>Compendium</option>
                    </select>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Volume Number:</label>
                <div class="controls">
                    <input type="text" name="vol_number" placeholder="Enter Volume Number..." required>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">ISSN:</label>
                <div class="controls">
                    <input type="text" name="issn" placeholder="Enter ISSN..." required>
                </div>
            </div>

            <legend>Journal File</legend>

            <div class="control-group">
                <label class="control-label">Cover Page: </label>
                <div class="controls">
                    <span class="btn-file">
                        <input type="file" name="cover_img" required/>
                    </span>
                    <p class="text-warning span8"><small>upload image file only.. recomended size 200x400..</small></p>
                </div>    
            </div>
                
            
            <div class="control-group">
                <label class="control-label">Journal File: </label>
                <div class="controls">
                    <span class="btn-file">
                        <input type="file" name="pdf_file" required/>
                    </span>
                    <p class="text-warning"><small>upload pdf file only..</small></p>
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
            <button type="submit" class="btn btn-primary"><i class="icon-thumbs-up icon-white"></i>&nbsp;Add</button>
            <button class="btn" data-dismiss="modal">Cancel</button>
        </div>

    </form>




</div>