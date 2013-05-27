<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
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
        
        <style type="text/css">
            body{
                padding-top: 15px;
                background-color: #cecece;
            }
            #header{
                background-image: url('{$base_url}application/views/img/images/header_pdfviewer.png');
                background-repeat: no-repeat;
                height: 101px;

            }
            #footer{
                background-image: url('{$base_url}application/views/img/images/footer_pdfviewer.png');
                background-repeat: no-repeat;
                height: 50px;
            }

            #form_id{
                margin-left: 130px;
                text-align: left;
                margin-top: 30px;
            }   

            a{
                color: #08599e;
            }

            #iframe{
                width: 100%;
                height: 30px;
                background: #d8d8d8;
                border-top-left-radius: 5px;
                border-top-right-radius: 5px;
            }

        </style>
        
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->
        {*$list_ofCat|@var_dump}
        {$list_ofSubcat|@var_dump} 
        {$choose_urlPDF|@var_dump*}
        
        <div class="container socs-content" >
            <div class="container" id="header"> </div>
            <div class="navbar">
                <div class="navbar-inner">
                    <ul class="nav">
                        <li class="active"><a href="">Home</a></li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="">Journal Type<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="{$site_url}pdfviewer/view_list/Full-Length"> Full Length </a></li>
                                <li><a href="{$site_url}pdfviewer/view_list/Compendium"> Compendium </a></li>
                            </ul>
                        </li>
                        <li><a  href=""> About Us </a></li> 
                    </ul>
                </div>
            </div>


            <!--
            <iframe style="border: 1px solid;"  src="http://docs.google.com/viewer?url=http%3A%2F%2Fwww.cte.bilkent.edu.tr%2F~cte301%2FPHP_Notes_01.pdf&embedded=true" width="700" height="780" style="border: none;"></iframe>
            -->

            <!--
            <iframe src="http://en.pdf24.org/reader?open=http%3A%2F%2Fwww.cte.bilkent.edu.tr%2F~cte301%2FPHP_Notes_01.pdf" style="border:none; width:100%; height:600px" ></iframe>
            -->

            <div style="border: 1px solid; box-shadow: 10px 10px 5px #888888; margin-top: -15px; border-top-left-radius: 5px; border-top-right-radius: 5px;">

                <div style="margin-top: -10px;" id="iframe"><center><h4 style="font-family: georgia;">{if isset($journal_title)} {$journal_title} {else} Choose PDF File {/if}</h4></center></div>
                <applet code="EmbedPDF.class" archive="{$base_url}application/views/applet/fontsseparate/EmbedPDF.jar" style="width: 100%; height: 620px;">

                    <!-- Use the following parameters to configure Embed PDF: -->

                    <!-- The URL of the PDF document that we want to show: -->
                    <param name="pdf" value="{$base_url}{$url_pdf}"/> 

                    <!-- The location of the font files: -->
                    <param name="fonts" value="fontsseparate"/> 

                    <!-- Whether users may open the PDF document in a new window: -->
                    <param name="enableOpenWindow" value="true"/>

                    <!-- Whether the PDF is rendered with subpixel-antialiasing (may be slow and needs more memory) -->
                    <param name="enableSubpixAA" value="true"/>


                    <!-- The following parameters are recommended to improve usability and
                         performance of the applet when run with Sun's Java Plugin: -->

                    <!-- whether language-specific texts shall be looked up on the server. -->
                    <param name="codebase_lookup" value="false"/>

                    <!-- whether the code of the applet shall be shared with other applets. -->
                    <param name="classloader_cache" value="false"/>

                    <!-- Whether the server provides a highly compressed .pack.gz-version of the applet.
                         The amount of memory that the applet may use (128m is 128 mega bytes).
                    -->
                    <param name="java_arguments" value="-Djnlp.packEnabled=true -Xmx128m"/>

                    <!-- the splash screen to show, while the applet loads. -->
                    <param name="image" value="splash.gif"/>

                    <!-- the border of the splash screen. -->
                    <param name="boxborder" value="false"/>

                    <!-- whether the splash screen shall be centered. -->
                    <param name="centerimage" value="true"/>

                    <!-- If the browser does not supprt java, we just provide a link to the PDF-document. -->
                    <a href="{$base_url}{$url}">view pdf</a>
                </applet>
            </div>      
            <hr>

            <footer id="footer"></footer> 
        </div>      

        {if isset($pre_viewtables)}
            {include file="view_list.tpl"}
        {/if}
        
        <script>window.jQuery || document.write('<script src="{$base_url}application/views/js/vendor/jquery-1.9.1.js"><\/script>')</script>
        <!--<script src="{$base_url}application/views/js/vendor/jquery-1.9.1.js"></script>-->
        <script src="{$base_url}application/views/js/vendor/bootbox.js"></script>
        <script src="{$base_url}application/views/js/vendor/bootstrap.js"></script>
        <script src="{$base_url}application/views/dataTables/jquery.dataTables.js"></script>
        <script src="{$base_url}application/views/dataTables/DT_bootstrap.js"></script>  
        <script src="{$base_url}application/views/js/main.js"></script>

        {if isset($pre_viewtables)}
            {literal}
                <script type="text/javascript">
            $(document).ready(function() {
                $('#view_list').modal('show');
            });
                </script>
            {/literal}
        {/if}
    </body>
</html>
