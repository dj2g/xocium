 <section id="main-slider" class="no-margin">
        <div class="carousel slide">
            <ol class="carousel-indicators">
                <li data-target="#main-slider" data-slide-to="0" class="active"></li>
                <li data-target="#main-slider" data-slide-to="1"></li>
                <li data-target="#main-slider" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">

                <div class="item active" style="background-image: url(<?php echo $this->config->item('base_archivos_url');?>images/baner3.jpg)">
                    <div class="container"style="margin-left: 4%;" >
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Xocium</h1>
                                    <h2 class="animation animated-item-2">Somos una empresa que está en todo el Perú...</h2>
                                    <a class="btn-slide animation animated-item-3" href="#">Leer más</a>
                                </div>
                            </div>

                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img" style="    width: 50%;
    margin-top: 5%;
    margin-left: 30%; 
    ">
                                    <img  id="imagen1"  style="border: 2px solid;
    border-radius: 30px;" src="<?php echo $this->config->item('base_archivos_url');?>images/mapa.jpg" class="img-responsive">
                                </div>
                            </div>

                        </div>
                    </div>
                </div><!--/.item-->

                <div class="item" style="opacity: 5;
 background-image: url(<?php echo $this->config->item('base_archivos_url');?>images/linea.png)">
                    <div class="container" style="margin-left: 4%;">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content" >
                                    <h1 style="color: 
                              black;  "class="animation animated-item-1">Clientes</h1>
                                    <h2 style="color: 
                              black;  " class="animation animated-item-2">Nuestros clientes...</h2>
                                    <a class="btn-slide animation animated-item-3" href="#">Leer más</a>
                                </div>
                            </div>

                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img" style="    width: 60%;
    margin-top: 10%;
    margin-left: 20%; 
    ">
                                    <img id="imagen2" style="border: 2px solid; 
    border-radius: 30px;" style=""  src="<?php echo $this->config->item('base_archivos_url');?>images/clientes.jpg" class="img-responsive">
                                </div>
                            </div>

                        </div>
                    </div>
                </div><!--/.item-->

                <div class="item" style="background-image: url(<?php echo $this->config->item('base_archivos_url');?>images/banerx3.jpg)">
                    <div class="container" style="margin-left: 4%;">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Equipo Técnico</h1>
                                    <h2 class="animation animated-item-2">Nuestro equipo técnico ..</h2>
                                    <a class="btn-slide animation animated-item-3" href="#">Leer más</a>
                                </div>
                            </div>
                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="<?php echo $this->config->item('base_archivos_url');?>images/slider/img3.png" class="img-responsive">
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/.item-->
            </div><!--/.carousel-inner-->
        </div><!--/.carousel-->
        <a class="prev hidden-xs" href="#main-slider" data-slide="prev">
            <i class="fa fa-chevron-left"></i>
        </a>
        <a class="next hidden-xs" href="#main-slider" data-slide="next">
            <i class="fa fa-chevron-right"></i>
        </a>
    </section><!--/#main-slider-->

    <div id="myModal" class="modal fade modal-lg" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        
      </div>
      <div class="modal-body" id="myModalbody" align="center">
        <p>Some text in the modal.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>