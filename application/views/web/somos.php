
 <section id="feature" >
        <div class="container">
           <div class="center wow fadeInDown">
                <h2>Quienes somos</h2>
                <p class="lead"> 
                	<?php
echo $data["descripcion"];

?>
                </div>
<div class="center wow fadeInDown">
                 <img class="img-responsive" style="display:inline" src="<?php echo $this->config->item('base_archivos_url');?>images/baner3.jpg">
                        
                </div>
           
        </div><!--/.container-->
    </section><!--/#feature-->


<section id="recent-works">
        <div class="container">
            <div class="center wow fadeInDown">
                <h2>Misión y Visión</h2>
 </div>

            <div class="row">

                <div class="features">
                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-bullhorn"></i>
                            <h2>Mision</h2>
                            <h3 style="text-align: justify;"  > <?php
  echo $data["mision"];;

?></div>
                    </div><!--/.col-md-4-->

                                       
                
                 <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-bullhorn"></i>
                            <h2>Vision</h2>
                            <h3 style="text-align: justify;"  > <?php
 echo $data["vision"];

?></div>
                    </div><!--/.col-md-4-->


                    

                     
                </div><!--/.services-->
                	 
            </div><!--/.row-->
        </div><!--/.container-->
    </section> 

      
   
      <section id="feature" class="container">
       

        <div class="blog">
            <div class="row">
            	<div class="center wow fadeInDown">
                <h2>Que nos diferencia</h2>
 </div>
                <div class="col-md-12">
                    
                      <?php foreach ($data['ventaja'] as $key   ) { ?>
                        <div class="panel panel-success" style="background-color:white;margin-left:6%;
  margin-right: 6%;">
    <div class="panel-heading">
      <h3 class="panel-title"><b><?php echo $key->nombre_ventaja; ?></b></h3>
    </div>
    <div class="panel-body">
      <?php echo $key->descripcion; ?>
    </div>
  </div>
                               
                         
<?php	} ;


                	?>
                         
                    </div><!--/.col-md-8-->

                 

            </div><!--/.row-->

         </div><!--/.blog-->

    </section><!--/#blog-->

 
            
<section id="services" class="service-item">
	   <div class="container">
            <div class="center wow fadeInDown">
                <h2>Nuestras Competencias</h2>
                 </div>

            <div class="row">

            		<?php foreach ($data['competencia'] as $keyx   ) { ?>
                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="<?php echo $this->config->item('base_archivos_url');?>images/services/services1.png">
                        </div>
                        <div class="media-body">
                            
                            <p> <?php echo $keyx->descripcion; ?></p>
                        </div>
                    </div>
                </div>

                <?php	} ;


                	?>
                                                             
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#services-->

