<!DOCTYPE html>
<html lang="en">
    
<!-- Mirrored from responsiweb.com/themes/preview/ace/1.3.5/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 30 Jan 2016 15:38:13 GMT -->
<head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta charset="utf-8" />
        <title>Login Page - Ace Admin</title>

        <meta name="description" content="User login page" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

        <!-- bootstrap & fontawesome -->
        <link rel="stylesheet" href="<?php echo $this->config->item('base_archivos_url');?>dist/css/bootstrap.min.css" />
        <link rel="stylesheet" href="<?php echo $this->config->item('base_archivos_url');?>font-awesome/4.5.0/css/font-awesome.min.css" />

        <!-- text fonts -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

        <!-- ace styles -->
        <link rel="stylesheet" href="<?php echo $this->config->item('base_archivos_url'); ?>dist/css/ace.min.css" />

        <!--[if lte IE 9]>
            <link rel="stylesheet" href="dist/css/ace-part2.min.css" />
        <![endif]-->
        <link rel="stylesheet" href="<?php echo $this->config->item('base_archivos_url'); ?>dist/css/ace-rtl.min.css" />
         <?php print $this->layout->css; ?>
  
    </head>

    <body class="login-layout">
       
<?php echo $content_for_layout; ?>

       <!-- /.main-container -->

        <!-- basic scripts -->

        <!--[if !IE]> -->
        <script src="<?php echo $this->config->item('base_archivos_url'); ?>jquery/2.1.4/jquery.min.js"></script>

        <!-- <![endif]-->

        <!--[if IE]>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<![endif]-->
        <script type="text/javascript">
            if('ontouchstart' in document.documentElement) document.write("<script src='<?php echo $this->config->item('base_archivos_url'); ?>dist/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
        </script>

        <!-- inline scripts related to this page -->
        <script type="text/javascript">
            jQuery(function($) {
             $(document).on('click', '.toolbar a[data-target]', function(e) {
                e.preventDefault();
                var target = $(this).data('target');
                $('.widget-box.visible').removeClass('visible');//hide others
                $(target).addClass('visible');//show target
             });
            });
            
            
            
            //you don't need this, just used for changing background
            jQuery(function($) {
             $('#btn-login-dark').on('click', function(e) {
                $('body').attr('class', 'login-layout');
                $('#id-text2').attr('class', 'white');
                $('#id-company-text').attr('class', 'blue');
                
                e.preventDefault();
             });
             $('#btn-login-light').on('click', function(e) {
                $('body').attr('class', 'login-layout light-login');
                $('#id-text2').attr('class', 'grey');
                $('#id-company-text').attr('class', 'blue');
                
                e.preventDefault();
             });
             $('#btn-login-blur').on('click', function(e) {
                $('body').attr('class', 'login-layout blur-login');
                $('#id-text2').attr('class', 'white');
                $('#id-company-text').attr('class', 'light-blue');
                
                e.preventDefault();
             });
             
            });
        </script>
          <?php echo $this->layout->js; ?>
    </body>

<!-- Mirrored from responsiweb.com/themes/preview/ace/1.3.5/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 30 Jan 2016 15:38:14 GMT -->
</html>
