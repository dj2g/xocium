  <section id="feature">
        <div class="container">
            <div class="center wow fadeInDown">
                <h2>Nuestros servicios</h2>
    
                </div>
            <div class="row">
                <div class="col-xs-12 col-sm-11 wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">
                   <div class="tab-wrap" > 
                        <div class="media">
                            <div class="parrent pull-left">



                                <ul class="nav nav-tabs nav-stacked">

                                        <?php $c=0;  foreach ($data['trabajo'] as $key ) {  

                                                $c=$c+1;


                                                if ($c == 1) { ?>


                                                     <li class="active"><a href="#tab<?php echo $c;?>" data-toggle="tab" class="analistic-01"><?php echo $key->descripcion; ?></a></li>

                                            <?php   

                                                }else{  ?>

                                                 <li class=""><a href="#tab<?php echo $c;?>" data-toggle="tab" class="analistic-01"><?php echo $key->descripcion; ?></a></li>

                                            <?php 
                                                } 
                                            ?>
                                                                        
                                     

                                   
                                     

                                       <?php }?>
                                </ul>
                            </div>



                             <?php   $max=(int)$data["max"][0]->max;?> 


                           <div class="parrent media-body" style="background-color: white;">
                                <div class="tab-content">

                                      <?php 

                                            for($i=1;$i<=$max ;$i++){

                                                 if($i==1){  ?>
                                     

                                                     <div class="tab-pane fade active in" id="tab<?php echo $i; ?>">
                                        <div class="media">
                                           <div class="pull-left">
                                               <!-- <img class="img-responsive" src="<?php echo $this->config->item('base_archivos_url');?>images/tab1.png"> -->
                                            </div>
                                            <div class="media-body">
                                                  
                                                  <?php foreach ($data['servicio'] as $keyz) {
                                                     
                                                  if($i== $keyz->id_trabajo ){  ?>

                                                   <p style="text-align:justify"> <span class="glyphicon  glyphicon-check" style="color:green;"></span> <?php echo  $keyz->nombre_servicio; ?> </p> 
                                                 

                                                 <?php }}

                                                

                                                  ?>

                                            </div>
                                        </div>
                                    </div>
                                                <?php } else{ 



                                                     ?>  

                                      <div class="tab-pane fade" id="tab<?php echo $i; ?>">
                                        <div class="media">
                                           <div class="pull-left">
                                               <!-- <img class="img-responsive" src="<?php echo $this->config->item('base_archivos_url');?>images/tab1.png"> -->
                                            </div>
                                            <div class="media-body">
                                                  
                                                <?php foreach ($data['servicio'] as $keyz) {
                                                     
                                                  if($i== $keyz->id_trabajo ){  ?>

                                                     <p style="text-align:justify"><span class="glyphicon  glyphicon-check" style="color:green;"></span> <?php echo $keyz->nombre_servicio; ?> </p> 
                                                 

                                                 <?php }

                                                

                                                  }?>


                                            </div>
                                        </div>
                                    </div>



                                      <?php } 

                                            }  ?>







                                                   

                                     

                                   

                                   


                                </div> <!--/.tab-content-->  
                           </div> <!--/.media-body-->  




                        </div> <!--/.media-->     
                    </div><!--/.tab-wrap-->               
                </div><!--/.col-sm-6-->

                

            </div><!--/.row-->
        </div><!--/.container-->
    </section>