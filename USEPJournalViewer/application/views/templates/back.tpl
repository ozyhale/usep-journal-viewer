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

        <script src="{$base_url}application/views/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
    <body>

        {*Header*}
        {include file=$header}

        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span8">
                    {*Sidebar*}
                    {include file=$content}
                </div>

                <div class="span4">

                    {$alert}

                    {*Content*}
                    {include file=$sidebar}
                </div>
            </div>

        </div>
                


        {*Footer*}
        {include file=$footer}

        <!--<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>-->
        <script>window.jQuery || document.write('<script src="{$base_url}application/views/js/vendor/jquery-1.9.1.js"><\/script>')</script>
        <!--<script src="{$base_url}application/views/js/vendor/jquery-1.9.1.js"></script>-->
        <script src="{$base_url}application/views/js/vendor/bootstrap.js"></script>
        <script src="{$base_url}application/views/js/main.js"></script>
    </body>
</html>