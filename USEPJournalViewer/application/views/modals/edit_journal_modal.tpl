<div id="editJournal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <form class="form-horizontal" method="post" enctype="multipart/form-data">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">Edit Journal</h3>
        </div>   

        <div class="modal-body b_modal">
            <legend>Journal Information</legend>

            <div class="control-group">
                <label class="control-label">Title:</label>
                <div class="controls">
                    <input type="text" name="title" value="{$pre_jtitle}" required>
                </div>
            </div>
              
            <div class="control-group">
                <label class="control-label">Course:</label>
                <div class="controls">
                    <select name="course" required>
                        {foreach from=$course_list key=k item=i}
                            {if $pre_jcourse eq $course_list[$k]['course_name']} <option selected>{$course_list[$k]['course_name']}</option>  {else} <option>{$course_list[$k]['course_name']}</option> {/if}
                        {/foreach}    
                    </select>
                </div>
            </div>    
                
            <div class="control-group">
                <label class="control-label">Journal Type:</label>
                <div class="controls">
                    <select name="type" required>
                    {if $pre_jtype eq "Full Length"} <option selected >Full Length</option> {else}  <option>Full Length</option> {/if}
                    {if $pre_jtype eq "Compendium"} <option selected >Compendium</option> {else}  <option>Compendium</option> {/if}
                    </select>
                </div>
            </div>
                   
            <div class="control-group">
                <label class="control-label">Volume Number:</label>
                <div class="controls">
                    <input type="text" name="vol_number" value="{$pre_jvolume}" required {literal}  pattern="^[1-9]\d*(\.\d+)?$" {/literal} >
                </div>
            </div>
                
            <div class="control-group">
                <label class="control-label">ISSN:</label>
                <div class="controls">
                    <input type="text" name="issn" value="{$pre_jissn}" required {literal} pattern="[0-9]{1,5}-[0-9]{1,5}" {/literal}>
                </div>
            </div>      
            
            <legend>Upload Cover Page Option</legend>
                
            <div class="control-group">
                <label class="control-label">Choose option:</label>
                <div class="controls">
                    <select id="choose_option_img" onchange="change_option_img()">
                        <option>Not Re upload</option>
                        <option>Re upload</option>
                    </select>
                </div>
            </div>    


            <div id="_img" class="control-group" hidden>
                <label class="control-label">Cover Page: </label>
                <div class="controls">
                    <span class="btn-file">
                        <input type="file" name="cover_img"/>
                    </span>
                    <p class="text-warning"><small>upload image file only.. <br/> recomended size 200x200..</small></p>
                </div>    
            </div>
                
            <legend>Upload Journal File Option</legend>
                
            <div class="control-group">
                <label class="control-label">Choose option:</label>
                <div class="controls">
                    <select id="choose_option_pdf" onchange="change_option_pdf()">
                        <option>Not Re upload</option>
                        <option>Re upload</option>
                    </select>
                </div>
            </div>
            
            <div id="_pdf" class="control-group" hidden>
                <label class="control-label">Journal File: </label>
                <div class="controls">
                    <span class="btn-file">
                        <input type="file" name="pdf_file"/>
                    </span>
                    <p class="text-warning"><small>upload pdf file only..</small></p>
                </div>
            </div> 

        </div>
        <div class="modal-footer">
            <button type="submit" name="update" class="btn btn-primary"><i class="icon-thumbs-up icon-white"></i>&nbsp;Update</button>
            <button class="btn" data-dismiss="modal">Cancel</button>
        </div>

    </form>




</div>