  <section id="feature">
        <div class="container">
			<div class="center wow fadeInDown">
				<h2><?php echo $data[0]->nombre_equipo; ?></h2>
				<p class="lead"> <?php echo $data[0]->equipodesc; ?>  </p>
			</div>
			
			<!-- about us slider -->
			<div id="about-slider">
				<div id="carousel-slider" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
				  	<ol class="carousel-indicators visible-xs">
					    <li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
					    <li data-target="#carousel-slider" data-slide-to="1"></li>
					    <li data-target="#carousel-slider" data-slide-to="2"></li>
				  	</ol>

					<div class="carousel-inner" style="height: 300px;">
						<div class="item active">
							<img src="<?php echo $this->config->item('base_archivos_url');?>images/slider_one.jpg" class="img-responsive" alt=""> 
					   </div>
					   <div class="item">
							<img src="<?php echo $this->config->item('base_archivos_url');?>images/slider_one.jpg" class="img-responsive" alt=""> 
					   </div> 
					   <div class="item">
							<img src="<?php echo $this->config->item('base_archivos_url');?>images/slider_one.jpg" class="img-responsive" alt=""> 
					   </div> 
					</div>
					
					<a class="left carousel-control hidden-xs" href="#carousel-slider" data-slide="prev">
						<i class="fa fa-angle-left"></i> 
					</a>
					
					<a class=" right carousel-control hidden-xs"href="#carousel-slider" data-slide="next">
						<i class="fa fa-angle-right"></i> 
					</a>
				</div> <!--/#carousel-slider-->
			</div><!--/#about-slider-->
			
			
			<!-- Our Skill -->
			

			<!-- our-team -->
			<br><br>
			<div class="team">
				<div class="row team-bar">
					<div class="first-one-arrow hidden-xs">
						<hr>
					</div>
					<div class="first-arrow hidden-xs">
						<hr> <i class="fa fa-angle-up"></i>
					</div>
					<div class="second-arrow hidden-xs">
						<hr> <i class="fa fa-angle-down"></i>
					</div>
					<div class="third-arrow hidden-xs">
						<hr> <i class="fa fa-angle-up"></i>
					</div>
					<div class="fourth-arrow hidden-xs">
						<hr> <i class="fa fa-angle-down"></i>
					</div>
				</div> <!--skill_border-->     
				<div class="center wow fadeInDown">
					<h2>El equipo </h2>
					 </div>

				<div class="row clearfix">


					<?php $count=0; foreach ($data as $key ) { 	 
 						$count=$count+1;
 					 
						?>
					
					<div class="col-md-4 col-sm-6"  >	
						<div class="single-profile-top wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms"  >
							<div class="media">
								<div class="pull-left">
									<a href="#"><img class="media-object" src="<?php echo $this->config->item('base_archivos_url');?>images/man1.jpg" alt=""></a>
								</div>
								<div class="media-body">
									<h4><?php echo   $key->grado_titulo ."".$key->nombre ." ". $key->apellidop ." ". $key->apellidom;  ?></h4>
									<h5><?php echo $key->cargo; ?> *</h5>
									<ul class="tag clearfix">
										<li class="btn"><a href="#">Cel.Tel:<?php echo $key->cel."|".$key->rpm."|".$key->rpc; ?></a></li>
										<li class="btn"><a href="#">Ui</a></li>
										 
									</ul>
									
									<ul class="social_icons">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li> 
										<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
									</ul>
								</div>
							</div><!--/.media -->

							 
							 <p style="width:100%;height:200px;text-align: justify;  overflow:auto;" >
							 	<?php echo $key->descripcion;?>
							</p> 
						</div>



					</div><!--/.col-lg-4 -->

					<?php if($count ==3){
							 echo '	<br>.<div class="row team-bar">
					<div class="first-one-arrow hidden-xs">
						<hr>
					</div>
					<div class="first-arrow hidden-xs">
						<hr> <i class="fa fa-angle-up"></i>
					</div>
					<div class="second-arrow hidden-xs">
						<hr> <i class="fa fa-angle-down"></i>
					</div>
					<div class="third-arrow hidden-xs">
						<hr> <i class="fa fa-angle-up"></i>
					</div>
					<div class="fourth-arrow hidden-xs">
						<hr> <i class="fa fa-angle-down"></i>
					</div>
				</div> <!--skill_border--> ';
							$count=0;
								}
					 
					 	 
				}
					?>
						 


				</div> <!--/.row -->
				  

			 
			</div><!--section-->
		
					
		
		
		
		</div><!--/.container-->
    </section><!--/about-us-->
	
  