<!DOCTYPE html>
<html class="no-js">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>{$title}</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

        <link rel="stylesheet" href="{$base_url}application/views/css/bootstrap.css">

        <style>
            body {
                padding-top: 60px;
                padding-bottom: 40px;
            }
        </style>
        <link rel="stylesheet" href="{$base_url}application/views/css/bootstrap-responsive.css">
        <link rel="stylesheet" href="{$base_url}application/views/css/main.css">
        <link rel="stylesheet" href="{$base_url}application/views/dataTables/DT_bootstrap.css">
        
        <script src="{$base_url}application/views/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
    <body>

        {*Header*}
        {include file=$header}

        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span8">
                    {$alert}
                    {*Content*}
                    {include file=$content}
                </div>

                <div class="span4">

                    

                    {*Sidebar*}
                    {include file=$sidebar}
                </div>
            </div>

        </div>

        {*Footer*}
        {include file=$footer}
        
        {if isset($pre_editJournal)}
            {include file='edit_journal_modal.tpl'}  
        {/if}
        
        {if isset($pre_changepass)}
            {include file='change_password.tpl'}  
        {/if}
        
          
            
        <!--<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>-->
        <script>window.jQuery || document.write('<script src="{$base_url}application/views/js/vendor/jquery-1.9.1.js"><\/script>')</script>
        <!--<script src="{$base_url}application/views/js/vendor/jquery-1.9.1.js"></script>-->
        <script src="{$base_url}application/views/js/vendor/bootbox.js"></script>
        <script src="{$base_url}application/views/js/vendor/bootstrap.js"></script>
        <script src="{$base_url}application/views/dataTables/jquery.dataTables.js"></script>
        <script src="{$base_url}application/views/dataTables/DT_bootstrap.js"></script>  
        <script src="{$base_url}application/views/js/main.js"></script>

        {if isset($add_user_alert)}
            {literal}
                <script type="text/javascript">
            $(document).ready(function() {
                $('#add_user').modal('show');
            });
                </script>
            {/literal}
        {/if}
        
        {if isset($add_user_alert)}
            {literal}
                <script type="text/javascript">
            $(document).ready(function() {
                $('#edit_user').modal('show');
            });
                </script>
            {/literal}
        {/if}
        
        {if isset($pre_editJournal)}
            {literal}
                <script type="text/javascript">
            $(document).ready(function() {
                $('#editJournal').modal('show');
            });
                </script>
            {/literal}
        {/if}
        
        {if isset($pre_changepass)}
            {literal}
                <script type="text/javascript">
            $(document).ready(function() {
                $('#change_pass').modal('show');
            });
                </script>
            {/literal}
        {/if}
        
        
    </body>
</html>