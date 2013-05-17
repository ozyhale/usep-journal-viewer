<!DOCTYPE html>
<html class="no-js">
    <head>
        <meta charset="utf-8">
       <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>{$title}</title>
        
       
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">
        <meta name="robots" content="index, follow, noarchive" />

        <link rel="stylesheet" href="{$base_url}application/views/css/bootstrap.css">
        
        <style>
            body{
            padding-top: 60px;
            }
        </style>


       <link rel="stylesheet" href="{$base_url}application/views/css/bootstrap-responsive.css">
        <link rel="stylesheet" href="{$base_url}application/views/css/main.css">
        <link rel="stylesheet" href="{$base_url}application/views/content/imageflow.packed.css" type="text/css" />
        <link rel="stylesheet" href="{$base_url}application/views/dataTables/DT_bootstrap.css">
        
       <script src="{$base_url}application/views/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
        <script type="text/javascript" src="{$base_url}application/views/content/imageflow.packed.js"></script>
    </head>
    <body>
        {*Header*}
        {include file=$header}

        <div class="container">
            <div class="row">
                <div class="span12">
                    {*Sidebar*}
                    {include file=$content}
                </div>
            </div>
        </div>
        <div>
            {*Footer*}
            {include file=$footer}
        </div>
        
        <script>window.jQuery || document.write('<script src="{$base_url}application/views/js/vendor/jquery-1.9.1.js"><\/script>');</script>
        <script src="{$base_url}application/views/js/vendor/bootstrap.js"></script>
        <script src="{$base_url}application/views/js/main.js"></script>
        <script src="{$base_url}application/views/dataTables/DT_bootstrap.js"></script>
        <script src="{$base_url}application/views/dataTables/jquery.dataTables.js"></script>
    </body>
</html>