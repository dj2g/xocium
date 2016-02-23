<section id="feature">
        <div class="container">
            <div class="center wow fadeInDown">
                <h2>Simuladores empresariales</h2>
    
                </div>
            <div class="row">
                <div class="col-xs-12 col-sm-11 wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">
                   <div class="tab-wrap" > 
                        <div class="media">
                            <div class="parrent pull-left">



                                <ul class="nav nav-tabs nav-stacked">

                                        <?php $c=0;  foreach ($data as $key ) {  

                                                $c=$c+1;


                                                if ($c == 1) { ?>


                                                     <li class="active"><a href="#tab<?php echo $c;?>" data-toggle="tab" class="analistic-01"><?php echo $key->nombre; ?></a></li>

                                            <?php   

                                                }else{  ?>

                                                 <li class=""><a href="#tab<?php echo $c;?>" data-toggle="tab" class="analistic-01"><?php echo $key->nombre; ?></a></li>

                                            <?php 
                                                } 
                                            ?>
                                                                        
                                     

                                   
                                     

                                       <?php }?>
                                </ul>
                            </div>

                            <div class="parrent media-body" style="background-color: white;">
                                <div class="tab-content">

                                      <?php $cx=0;  foreach ($data as $keyx ) { 
                                                    $cx=$cx+1;


                                                    if($cx==1){ 
                                       ?>

                                    <div class="tab-pane fade active in" id="tab<?php echo $cx; ?>">
                                        <div class="media">
                                           <div class="pull-left">
                                                <img class="img-responsive" src="<?php echo $this->config->item('base_archivos_url');?>images/tab2.png">
                                            </div>
                                            <div class="media-body">
                                                  
                                                 <p style="text-align:justify"><?php echo $keyx->descripcion; ?> </p>
                                            </div>
                                        </div>
                                    </div>

                                    <?php  }else{ 

                                       ?>  

                                      <div class="tab-pane fade" id="tab<?php echo $cx; ?>">
                                        <div class="media">
                                           <div class="pull-left">
                                                <img class="img-responsive" src="<?php echo $this->config->item('base_archivos_url');?>images/tab2.png">
                                            </div>
                                            <div class="media-body">
                                                  
                                                 <p style="text-align:justify"><?php echo $keyx->descripcion; ?> </p>
                                            </div>
                                        </div>
                                    </div>



                                      <?php } }
                                       ?>   


                                </div> <!--/.tab-content-->  
                            </div> <!--/.media-body--> 
                        </div> <!--/.media-->     
                    </div><!--/.tab-wrap-->               
                </div><!--/.col-sm-6-->

                

            </div><!--/.row-->
        </div><!--/.container-->
    </section>