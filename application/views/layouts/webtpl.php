<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>XOCIUM</title>
    
    <!-- core CSS -->
    <link href="<?php echo $this->config->item('base_archivos_url');?>css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo $this->config->item('base_archivos_url');?>css/font-awesome.min.css" rel="stylesheet">
    <link href="<?php echo $this->config->item('base_archivos_url');?>css/animate.min.css" rel="stylesheet">
    <link href="<?php echo $this->config->item('base_archivos_url');?>css/prettyPhoto.css" rel="stylesheet">
    <link href="<?php echo $this->config->item('base_archivos_url');?>css/main.css" rel="stylesheet">
    <link href="<?php echo $this->config->item('base_archivos_url');?>css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="<?php echo $this->config->item('base_archivos_url');?>images/ico/icon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?php echo $this->config->item('base_archivos_url');?>images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php echo $this->config->item('base_archivos_url');?>images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php echo $this->config->item('base_archivos_url');?>images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<?php echo $this->config->item('base_archivos_url');?>images/ico/apple-touch-icon-57-precomposed.png">
    <?php echo $this->layout->css; ?>
</head><!--/head-->
<?php
        $empresa=$query=$this->db->select("*")->get_where('empresa',["estado = "=>"0"]);
                                    $resultado=$query->result();
 ?>


<body class="homepage">

    <header id="header">
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-4">
                        <div class="top-number"><p><i class="fa fa-phone-square"></i>  <?php echo $resultado[0]->telefono;?>   RPM:<?php echo $resultado[0]->rpm;?></p></div>
                    </div>
                    <div class="col-sm-6 col-xs-8">
                       <div class="social">
                            <ul class="social-share">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li> 
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-skype"></i></a></li>
                            </ul>
                            <div class="search">
                                <form role="form">
                                    <input type="text" class="search-form" autocomplete="off" placeholder="Search">
                                    <i class="fa fa-search"></i>
                                </form>
                           </div>
                       </div>
                    </div>
                </div>
            </div><!--/.container-->
        </div><!--/.top-bar-->

        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button> 
                    <a class="navbar-brand" href="index.html"><img src="<?php echo $this->config->item('base_archivos_url');?>images/xocium.png" alt="logo" style="width:200px;   border: 0px solid;
    border-radius: 5px;"></a>
                </div>
                
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                    <?php
                        if($this->uri->uri_string()==""){

                    ?>
                    <li class="active">
                    <?php
                        }else{
                    ?>
                    <li class="">
                    <?php
                    }
                    ?>

                    <a href="<?php echo base_url();?>">Inicio</a></li>

                    <?php 
                        $url=$this->uri->uri_string();
                            $query2=$this->db->get_where('modulos',['url'=>$url]);
                                    $resultado2=$query2->result();
                    $total=$this->db->order_by('orden', 'ASC')->get_where('modulos',['idpadre'=>'1','estado'=>0]);
                             $t=$total->result();
                             foreach ($t as  $value) {
                                     if($url==$value->url){                 
                    ?>
            
        <li class="active"><a href="<?php echo base_url();?><?php echo $value->url;?>"><?php echo $value->descripcion?></a></li>

                    <?php
                }else{
                    ?>

            <li><a href="<?php echo base_url();?><?php echo $value->url;?>"><?php echo $value->descripcion?></a></li>

                    <?php
                        }
                         
                       }

                    ?>                       
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
        
    </header><!--/header-->

   <?php echo $content_for_layout; ?>
  
<br>
    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2016 <a target="_blank" href="http://shapebootstrap.net/" title="Free Twitter Bootstrap WordPress Themes and HTML templates"> XOCIUM PERÚ SA</a>.  
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="#">Inicio</a></li>
                         
                    </ul>
                </div>
            </div>
        </div>
    </footer><!--/#footer-->

    <script src="<?php echo $this->config->item('base_archivos_url');?>js/jquery.js"></script>
    <script src="<?php echo $this->config->item('base_archivos_url');?>js/bootstrap.min.js"></script>
    <script src="<?php echo $this->config->item('base_archivos_url');?>js/jquery.prettyPhoto.js"></script>
    <script src="<?php echo $this->config->item('base_archivos_url');?>js/jquery.isotope.min.js"></script>
    <script src="<?php echo $this->config->item('base_archivos_url');?>js/main.js"></script>
    <script src="<?php echo $this->config->item('base_archivos_url');?>js/wow.min.js"></script>
     <script type="text/javascript">
     $(document).ready(function(){  
        $("#imagen1").click(function(){
            var img=$(this).attr("src");
            $("#myModalbody").empty();
            $("#myModalbody").append('<img src="'+img+'" style="width: 80%;height:150%"class="img-responsive">');

            $("#myModal").modal("show");

        });
             $("#imagen2").click(function(){
                var img=$(this).attr("src");
            $("#myModalbody").empty();
            $("#myModalbody").append('<img src="'+img+'" class="img-responsive">');
               $("#myModal").modal('show');

        });

     });
 </script>
     <?php echo $this->layout->js; ?>
</body>
</html>