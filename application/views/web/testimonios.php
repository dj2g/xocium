  <section id="content">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 wow fadeInDown">
                    

                <div class="col-xs-12 col-sm-12 wow fadeInDown">
                    <div class="testimonial" style="margin-left: 8%;
    margin-right: 8%;    text-align: justify;">
                        <h2>Testimonios</h2>
                        <br>
                        <?php foreach ($data as $key  ) { ?>
                           
                            <div class="media testimonial-inner">
                            <div class="pull-left">
                                <img class="img-responsive img-circle" src="<?php echo $this->config->item('base_archivos_url');?>images/testimonials1.png">
                            </div>
                            <div class="media-body">
                                <span><strong>-<?php echo $key->nombre_testigo; ?></strong> </span>
                                <p style="text"><?php echo $key->descripcion; ?></p>
                                
                            </div>
                         </div>

                        <?php 

                            }?>
                         

                          

                    </div>
                </div>

            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#content-->