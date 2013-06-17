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
            body{
                background: #F4F4F4;
            }
            /*body {
                 padding-top: 60px;
                 padding-bottom: 40px;
            }
            */
            #back_header{
                background:#9b060b url('{$base_url}application/views/img/journal.png') scroll;
                height: 102px; 
                background-repeat: no-repeat;
                background-position: center center;
                background-size: 100% 100%;
            }
            #back_body{
                margin-top: 5px;
                margin-bottom: 20px;
                margin-left: -7px;
                margin-right: -8px;
                border: 2px solid #000000;
                border-radius: 16px 16px 16px 16px;
                padding: 10px 10px 10px 10px;
                box-shadow: 7px 7px 5px rgb(51,0,0);
            }
            #back_sidebar{
                margin-top: 5px;
            }
            #back_footer{
                background:#9b060b url('{$base_url}application/views/img/footer.png') scroll;
                height: 50px; 
                background-repeat: no-repeat;
                background-position: center center;
                background-size: 100% 100%;
                box-shadow: 7px 7px 5px rgb(34,0,10);
            }
            .b_side{
                background: -moz-linear-gradient(center top, rgb(144,2,3) 0%, rgb(64,1,15) 100%) repeat scroll 0% 0% transparent;
                background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, rgb(144,2,3)), color-stop(100%, rgb(64,1,15)));
                background: -webkit-linear-gradient(center top, rgb(144,2,3) 0%, rgb(64,1,15) 100%);
                background: -o-linear-gradient(center top, rgb(144,2,3) 0%, rgb(64,1,15) 100%);
                border-radius: 16px 16px 16px 16px;
                box-shadow: 7px 7px 5px rgb(51,0,0);
            }
            #gradient1{
                background: #a90329;
                background: -moz-linear-gradient(top, #a90329 0%, #8f0222 44%, #c10310 70%, #6d0019 100%);
                background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#a90329), color-stop(44%,#8f0222), color-stop(70%,#c10310), color-stop(100%,#6d0019));
                background: -webkit-linear-gradient(top, #a90329 0%,#8f0222 44%,#c10310 70%,#6d0019 100%);
                background: -o-linear-gradient(top, #a90329 0%,#8f0222 44%,#c10310 70%,#6d0019 100%);
                background: -ms-linear-gradient(top, #a90329 0%,#8f0222 44%,#c10310 70%,#6d0019 100%); 
                background: linear-gradient(to bottom, #a90329 0%,#8f0222 44%,#c10310 70%,#6d0019 100%);
                filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#a90329', endColorstr='#6d0019',GradientType=0 )
            }

            #gradient2{
                background: #a90329;
                background: -moz-linear-gradient(top, #a90329 0%, #8f0222 44%, #c10310 70%, #6d0019 100%);
                background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#a90329), color-stop(44%,#8f0222), color-stop(70%,#c10310), color-stop(100%,#6d0019));
                background: -webkit-linear-gradient(top, #a90329 0%,#8f0222 44%,#c10310 70%,#6d0019 100%);
                background: -o-linear-gradient(top, #a90329 0%,#8f0222 44%,#c10310 70%,#6d0019 100%);
                background: -ms-linear-gradient(top, #a90329 0%,#8f0222 44%,#c10310 70%,#6d0019 100%);
                background: linear-gradient(to bottom, #a90329 0%,#8f0222 44%,#c10310 70%,#6d0019 100%);
                filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#a90329', endColorstr='#6d0019',GradientType=0 ); 
            }

            #gradient3{
                background: #a90329;
                background: -moz-linear-gradient(top, #a90329 0%, #8f0222 44%, #c10310 70%, #6d0019 100%);
                background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#a90329), color-stop(44%,#8f0222), color-stop(70%,#c10310), color-stop(100%,#6d0019));
                background: -webkit-linear-gradient(top, #a90329 0%,#8f0222 44%,#c10310 70%,#6d0019 100%);
                background: -o-linear-gradient(top, #a90329 0%,#8f0222 44%,#c10310 70%,#6d0019 100%);
                background: -ms-linear-gradient(top, #a90329 0%,#8f0222 44%,#c10310 70%,#6d0019 100%); 
                background: linear-gradient(to bottom, #a90329 0%,#8f0222 44%,#c10310 70%,#6d0019 100%);
                filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#a90329', endColorstr='#6d0019',GradientType=0 );
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

                    {*Content*}
                    <div id="back_body">
                        {$alert}
                        {include file=$content}
                    </div>
                </div>

                <div class="span4">


                    {*Sidebar*}
                    <div id="back_sidebar">
                        {include file=$sidebar}
                    </div>
                </div>
            </div>

        </div>

        {*Footer*}
        {include file=$back_footer}

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