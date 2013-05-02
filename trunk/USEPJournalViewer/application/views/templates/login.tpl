<!DOCTYPE html>
<html class="no-js">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>{$title}</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

        <link rel="stylesheet" href="{$base_url}application/views/css/normalize.min.css">
        <link rel="stylesheet" href="{$base_url}application/views/css/bootstrap.css">
        <link rel="stylesheet" href="{$base_url}application/views/css/bootstrap-responsive.css">
        <link rel="stylesheet" href="{$base_url}application/views/css/main.css">
        <link rel="stylesheet" href="{$base_url}application/views/imageflow/imageflow.css">

        <script src="{$base_url}application/views/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>

    </head>
    <body>
        
        
        {*  {include file='header.tpl'}  *}


        
<div class="container">
    
<div class="row">
    <div class="span6 offset3">
        <form method="post" class="form-horizontal" action="{$site_url}administrator/login">
            
            <legend>Administrator Login</legend>
             
            {$alert}
            
            <div class="control-group">
                <label class="control-label">Username: </label>
                <div class="controls">
                    <input type="text" placeholder="Enter Your Username" name = "username" autofocus required>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">Password: </label>
                <div class="controls">
                    <input type="password" placeholder="Enter Your Password" name = "password" required>
                </div>
            </div>

            <div class="control-group">
                <div class="controls">
                    <button class="btn btn-primary" type="submit">Go to Cpanel</button>
                </div>
            </div>    
        </form>
    </div>
</div>
</div>

        <!--<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>-->
        <!--<script>window.jQuery || document.write('<script src="{$base_url}/application/views/js/vendor/jquery-1.9.1.js"><\/script>')</script>-->

        <script src="{$base_url}application/views/js/vendor/jquery-1.9.1.js"></script>
        <script src="{$base_url}application/views/js/vendor/bootstrap.js"></script>
        <script src="{$base_url}application/views/js/main.js"></script>
        
    </body>
       
       {* {include file='footer.tpl'} *}
</html>
