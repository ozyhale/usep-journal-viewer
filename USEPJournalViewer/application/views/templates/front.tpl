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
            
            .f_hero{
                background: -moz-linear-gradient(top, #cedbe9 0%, #aac5de 24%, #419ad6 60%, #4bb8f0 90%, #26558b 100%);
                background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #cedbe9), color-stop(24%, #aac5de), color-stop(60%, #419ad6), color-stop(90%, #4bb8f0), color-stop(100%, #26558b));
                background: -o-linear-gradient(top, #cedbe9 0%, #aac5de 24%, #419ad6 60%, #4bb8f0 90%, #26558b 100%);
                box-shadow: 5px 5px 8px 2px #26557a;
                -webkit-box-shadow: 5px 5px 8px 2px #26557a;
                margin-top: 5px;
                margin-left: 10px;
                margin-bottom: 5px;
                opacity: 0.8;
                width: 800px;
            }

            #f_title{
                padding-left: 10px;
                margin-bottom: -15px;
                border-radius: 10px;
                -webkit-border-radius: 10px;
                background: -moz-linear-gradient(left, #b5bdc8 0%, #29343a 80%, #28343b 100%);
                background: -webkit-gradient(linear, left top, right top, color-stop(0%, #b5bdc8), color-stop(80%, #29343a), color-stop(100%, #28343b));
                background: -o-linear-gradient(left, #b5bdc8 0%, #29343a 80%, #28343b 100%);
            }

            #f_dname{
                color: #000;
                text-shadow: 2px 1px 2px #fff;
            }

            .f_thumb{
                -webkit-border-radius: 8px;
                border-radius: 8px;
                border-color: #000;
                background: -moz-linear-gradient(top, #ebf1f6 0%, #abd3ee 80%, #89c3eb 100%);
                background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #ebf1f6), color-stop(80%, #abd3ee), color-stop(100%, #89c3eb));
                background: -o-linear-gradient(top, #ebf1f6 0%, #abd3ee 80%, #89c3eb 100%);
                max-height: 500px;
                
            }

            .f_thumb:hover{
                background: -moz-linear-gradient(top, #d0e4f7 0%, #73b1e7 24%, #0a77d5 50%, #539fe1 79%, #87bcea 100%);
                background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #d0e4f7), color-stop(24%, #73b1e7), color-stop(79%, #0a77d5), color-stop(100%, #87bcea));
                background: -o-linear-gradient(top, #d0e4f7 0%, #73b1e7 24%, #0a77d5 50%, #539fe1 79%, #87bcea 100%);
                -moz-transform: scale(0.94) rotate(-2deg);
                -webkit-tranform: scale(0.94) rotate(-2deg);
                -o-tranform: scale(0.94) rotate(-2deg);
            }

            .f_footer{
                box-shadow: 7px 7px 5px rgb(5, 10, 15);
                -webkit-box-shadow: 7px 7px 5px rgb(5, 10, 15);
            }
            
            .f_body{
                min-height: 600px;
                {if isset($list_journal[0]['Title'])}
                    background: #F9FAFB url('{$base_url}application/views/img/bg.png') scroll no-repeat;
                {else}
                    background: #F9FAFB url('{$base_url}application/views/img/bg2.png') scroll no-repeat;
                {/if}
                background-position:center center;
            }
            
        </style>
        <!-- ------------------- end of css ------------------------ -->

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