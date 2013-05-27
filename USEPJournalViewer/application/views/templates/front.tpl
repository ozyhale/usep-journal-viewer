<!DOCTYPE html>
<html class="no-js">
    <head>
        <title>{$title}</title>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="description" content="">
        <meta name="viewport" content="initial-scale = 1.0, maximum-scale = 1.0, user-scalable = no, width = device-width">

        <!-- --------------------- css ----------------------- -->
        <link rel="stylesheet" href="{$base_url}application/views/css/bootstrap.css">
        <link rel="stylesheet" href="{$base_url}application/views/css/bootstrap-responsive.css">
        <link rel="stylesheet" href="{$base_url}application/views/css/main.css">
        <link rel="stylesheet" href="{$base_url}application/views/content/imageflow.packed.css" type="text/css" />
        <link rel="stylesheet" href="{$base_url}application/views/dataTables/DT_bootstrap.css">

        <link rel="stylesheet" href="{$base_url}application/views/css/style.css" media="screen">
        <link rel="stylesheet" href="{$base_url}application/views/css/style.responsive.css" media="all">
        <link rel="shortcut icon" href="{$base_url}application/views/img/favicon.ico" type="image/x-icon">

        <!-- --------------------- js ------------------------ -->
        <script src="{$base_url}application/views/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
        <script type="text/javascript" src="{$base_url}application/views/content/imageflow.packed.js"></script>

        <script src="{$base_url}application/views/js/jquery.js"></script>
        <script src="{$base_url}applicaiton/views/js/script.js"></script>
        <script src="{$base_url}application/views/js/script.responsive.js"></script>

        <!-- ----------------- start of css ------------------------ -->
        <style>
            #art-main{
                margin:0 auto;
                font-size: 11px;
                font-family: Verdana, Geneva, Arial, Helvetica, Sans-Serif;
                font-weight: normal;
                font-style: normal;
                line-height: 150%;
                position: relative;
                width: 100%;
                min-height: 100%;
                left: 0;
                top: 0;
                cursor:default;
                overflow:hidden;
            }
            
            #art-header-bg{
                position: absolute;
                overflow:hidden;
                left:0;
                margin:0 auto;
                width: 100%;
                height: 170px;
                z-index: auto;
                background-position: center top;
                background-image: url('{$base_url}application/views/img/images/header.jpg');
                background-repeat: no-repeat;
            }
            
            .art-header{
                margin:0 auto;
                height: 170px;
                background-image: url('{$base_url}application/views/img/images/header.jpg');
                background-position: center top;
                background-repeat: no-repeat;
                position: relative;
                z-index: auto !important;
            }

            .responsive .art-header {
                background-image: url('{$base_url}application/views/img/images/header.jpg');
                background-position: center center;
            }
            
            .art-nav{
                background: #363636 url('{$base_url}application/views/img/images/nav.png') scroll;
                background: linear-gradient(top, rgba(11, 11, 11, 0.05) 0, rgba(96, 96, 96, 0.08) 100%) no-repeat, url('{$base_url}application/views/img/images/nav.png'), linear-gradient(top, #1A1A1A 0, #525252 100%) no-repeat;
                background: -webkit-linear-gradient(top, rgba(11, 11, 11, 0.05) 0, rgba(96, 96, 96, 0.08) 100%) no-repeat, url('{$base_url}application/views/img/images/nav.png'), -webkit-linear-gradient(top, #1A1A1A 0, #525252 100%) no-repeat;
                background: -moz-linear-gradient(top, rgba(11, 11, 11, 0.05) 0, rgba(96, 96, 96, 0.08) 100%) no-repeat, url('{$base_url}application/views/img/images/nav.png'), -moz-linear-gradient(top, #1A1A1A 0, #525252 100%) no-repeat;
                background: -o-linear-gradient(top, rgba(11, 11, 11, 0.05) 0, rgba(96, 96, 96, 0.08) 100%) no-repeat, url('{$base_url}application/views/img/images/nav.png'), -o-linear-gradient(top, #1A1A1A 0, #525252 100%) no-repeat;
                background: -ms-linear-gradient(top, rgba(11, 11, 11, 0.05) 0, rgba(96, 96, 96, 0.08) 100%) no-repeat, url('{$base_url}application/views/img/images/nav.png'), -ms-linear-gradient(top, #1A1A1A 0, #525252 100%) no-repeat;
                background: linear-gradient(top, rgba(11, 11, 11, 0.05) 0, rgba(96, 96, 96, 0.08) 100%) no-repeat, url('{$base_url}application/views/img/images/nav.png'), linear-gradient(top, #1A1A1A 0, #525252 100%) no-repeat;
                -svg-background: linear-gradient(top, rgba(11, 11, 11, 0.05) 0, rgba(96, 96, 96, 0.08) 100%) no-repeat, url('{$base_url}application/views/img/images/nav.png'), linear-gradient(top, #1A1A1A 0, #525252 100%) no-repeat;
                margin:0 auto;
                position: relative;
                z-index: 499;
                text-align: left;
            }
            
            ul.art-hmenu>li:before{
                position:absolute;
                display: block;
                content:' ';
                top:0;
                left:  -1px;
                width:1px;
                height: 30px;
                background: url('{$base_url}application/views/img/images/menuseparator.png') center center no-repeat;
           }
           
           ul.art-hmenu ul{
                visibility: hidden;
                position: absolute;
                z-index: 10;
                left: 0;
                top: 0;
                background-image: url('{$base_url}application/views/img/images/spacer.gif');
           }
           
           .art-vmenublockheader .t:before{
                content:url('{$base_url}application/views/img/images/vmenublockheadericon.png');
                margin-right:6px;
                position:relative;
                display:inline-block;
                vertical-align:middle;
                font-size:0;
                line-height:0;
                bottom: auto;
            }
           
           .art-blockheader .t:before{
                content:url('{$base_url}application/views/img/images/blockheadericon.png');
                margin-right:6px;
                bottom: 2px;
                position:relative;
                display:inline-block;
                vertical-align:middle;
                font-size:0;
                line-height:0;
            }
            
            .art-block ul>li:before{
                content:url('{$base_url}application/views/img/images/blockbullets.png');
                margin-right:6px;
                bottom: 2px;
                position:relative;
                display:inline-block;
                vertical-align:middle;
                font-size:0;
                line-height:0;
                margin-left: -17px;
            }
            
            .art-footer{
                background: #363636 url('{$base_url}application/views/img/images/footer.png') scroll;
                padding:15px;
                margin:0 auto;
                position: relative;
                color: #FFFFFF;
                font-size: 11px;
                font-family: Verdana, Geneva, Arial, Helvetica, Sans-Serif;
                text-align: center;
            }
            
            .art-lightbox-wrapper .loading{
                background: #fff url('{$base_url}application/views/img/images/preloader-01.gif') center center no-repeat;
                border: 1px solid #b4b4b4;
                border-radius: 10px;
                box-shadow: 0 2px 5px #333;
                height: 32px;
                opacity: .5;
                padding: 10px;
                position: fixed;
                width: 32px;
                z-index: 10100;
            }

        </style>
        <!-- ------------------- end of css ------------------------ -->

    </head>
    <body>
        <div class="art-main">
            <div id="art-header-bg">
            </div>
            <div class="art-sheet clearfix">
                {*Header*}
                {include file=$header}

               
                            {include file=$content}
                <div>
                    {*Footer*}
                    {include file=$footer}
                </div>
            </div>
        </div>
                
    <!-- ----------------- js ----------------------- -->
    <script>window.jQuery || document.write('<script src="{$base_url}application/views/js/vendor/jquery-1.9.1.js"><\/script>');</script>
    <script src="{$base_url}application/views/js/vendor/bootstrap.js"></script>
    <script src="{$base_url}application/views/js/main.js"></script>
    <script src="{$base_url}application/views/dataTables/DT_bootstrap.js"></script>
    <script src="{$base_url}application/views/dataTables/jquery.dataTables.js"></script>
    </body>
</html>