

                     <div class="page-header">
							<h1>
								Informacion de la Empresa
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									Common form elements and layouts
								</small>
							</h1>
						</div>

						<div class="row">
						<?php echo form_open(base_url().'empresa',['class'=>"form-horizontal","rol"=>"form",'id'=>"form1",'name'=>'form1']) ?>
							<input type="hidden" name="id_empresa" id="id_empresa" value="<?php  if (isset($data[0]->id_empresa)){echo $data[0]->id_empresa;}else{echo '0';}?>" />
							<div class="col-xs-6">
								<!-- PAGE CONTENT BEGINS -->
								
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Nombre </label>

										<div class="col-sm-9">

											<input type="text" id="nombre" name="nombre" placeholder="Username" class="col-xs-9 col-sm-10" value="<?php if(isset($data[0]->nombre))echo $data[0]->nombre;?>" <?php if(isset($data[0]->nombre)) echo "disabled='disabled'"?>>
											<?php  echo form_error('nombre'); ?>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Razon Social </label>

										<div class="col-sm-9">

											<input type="text" id="razon_social" name="razon_social" placeholder="Username" class="col-xs-9 col-sm-10" value="<?php if(isset($data[0]->razon_social))echo $data[0]->razon_social;?>" <?php if(isset($data[0]->razon_social)) echo "disabled='disabled'"?>>
											<?php  echo form_error('razon_social'); ?>
										</div>
									</div>
										<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Ruc </label>

										<div class="col-sm-9">

											<input type="text" max="11"id="ruc" name='ruc' placeholder="Username" class="col-xs-9 col-sm-10" value="<?php if(isset($data[0]->ruc))echo $data[0]->ruc;?>"<?php if(isset($data[0]->ruc)) echo "disabled='disabled'"?>>
										</div>
									</div>
										<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Direccion </label>

										<div class="col-sm-9">

											<input type="text" id="direccion" name="direccion" placeholder="Username" class="col-xs-9 col-sm-10" value="<?php if(isset($data[0]->direccion))echo $data[0]->direccion;?>" <?php if(isset($data[0]->direccion)) echo "disabled='disabled'"?>>
										</div>
									</div>
										<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Telefono </label>

										<div class="col-sm-9">

											<input type="text" id="telefono" name='telefono' placeholder="Username" class="input-mask-phone col-xs-9 col-sm-10" value="<?php if(isset($data[0]->telefono))echo $data[0]->telefono;?>" <?php if(isset($data[0]->telefono)) echo "disabled='disabled'"?>>
										</div>
									</div>
										<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Rpm </label>

										<div class="col-sm-9">

											<input type="text" id="rpm" name="rpm" placeholder="Username" class="col-xs-9 col-sm-10" value="<?php if(isset($data[0]->rpm))echo $data[0]->rpm;?>"<?php if(isset($data[0]->rpm)) echo "disabled='disabled'"?>>
										</div>
									</div>
										<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Rpc </label>

										<div class="col-sm-9">

											<input type="text" id="rpc" name='rpc' placeholder="Username" class="col-xs-9 col-sm-10" value="<?php if(isset($data[0]->rpc))echo $data[0]->rpc;?>"<?php if(isset($data[0]->rpc)) echo "disabled='disabled'"?>>
										</div>
									</div>
									
										

								</div>
									<div class="col-xs-6">
										<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Ciudad </label>

										<div class="col-sm-9">

											<input type="text" id="ciudad" name='ciudad' placeholder="Username" class="col-xs-9 col-sm-10" value="<?php if(isset($data[0]->ciudad))echo $data[0]->ciudad;?>"<?php if(isset($data[0]->ciudad)) echo "disabled='disabled'"?>>
										</div>
									</div>
								<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Departamento </label>

										<div class="col-sm-9">

											<input type="text" id="departamento" name='departamento' placeholder="Username" class="col-xs-9 col-sm-10" value="<?php if(isset($data[0]->departamento))echo $data[0]->departamento;?>"<?php if(isset($data[0]->departamento)) echo "disabled='disabled'"?>>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Descripcion </label>

										<div class="col-sm-9">

											<textarea type="text" id="descripcion"  name='descripcion' placeholder="Descipcion" class="col-xs-9 col-sm-10" <?php if(isset($data[0]->descripcion)) echo "disabled='disabled'"?>> 
											<?php if(isset($data[0]->descripcion))echo $data[0]->descripcion;?>
											</textarea>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Rec. Titulo </label>

										<div class="col-sm-9">

											<input type="text" id="rec_titulo" name='rec_titulo' placeholder="Username" class="col-xs-9 col-sm-10" value="<?php if(isset($data[0]->rec_titulo))echo $data[0]->rec_titulo;?>"<?php if(isset($data[0]->rec_titulo)) echo "disabled='disabled'"?>>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Rec. Descripcion </label>

										<div class="col-sm-9">

											<input type="text" id="rec_descripcion" name='rec_descripcion' placeholder="Username" class="col-xs-9 col-sm-10" value="<?php if(isset($data[0]->rec_descripcion))echo $data[0]->rec_descripcion;?>"<?php if(isset($data[0]->rec_descripcion)) echo "disabled='disabled'"?>>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Email </label>

										<div class="col-sm-9">

											<input type="email" id="email" name='email' placeholder="Username" class="col-xs-9 col-sm-10" value="<?php if(isset($data[0]->email))echo $data[0]->email;?>"<?php if(isset($data[0]->email)) echo "disabled='disabled'"?>>
										</div>
									</div>
														
								</div>
								<div class="col-sm-12" align="center">
									
									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-6">
											<button class="btn btn-info" type="button" id="save" onclick="guardar()" <?php  if (isset($data[0]->id_empresa)){?>style="display: none;" <?php }?>>
												<i class="ace-icon fa fa-check bigger-110"></i>
												Guardar
											</button>

											&nbsp; &nbsp; &nbsp;
											<?php  if (isset($data[0]->id_empresa)){?>
											<button class="btn" type="reset" id="edit" onclick="editar()">
												<i class="ace-icon fa fa-undo bigger-110"></i>
												Editar
											</button>
											<?php }?>
										</div>
									</div>
								</div>
									<input type="hidden" id="img2" value="<?php if(isset($data[0]->img2))echo $data[0]->img2;?>" name="img2"/>
									<input type="hidden" id="img1"  name='img1' placeholder="Username" class="col-xs-9 col-sm-10" value="<?php if(isset($data[0]->img1))echo $data[0]->img1;?>">
									<input type="hidden" name="estado" value="<?php if(isset($data[0]->estado)){echo $data[0]->estado;}else{ echo "0";}?>" name="estado"/>

						  <?php echo form_close() ?>
								</div>

								