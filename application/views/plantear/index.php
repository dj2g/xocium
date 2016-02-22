  <div class="page-header">
							<h1>
								Mision y Vision
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									Common form elements and layouts
								</small>
							</h1>
						</div>
	<div class="form-group">
		<div class="row">
						<?php echo form_open(base_url().'plantear',['class'=>"form-horizontal","rol"=>"form",'id'=>"form1",'name'=>'form1']) ?>
				<input type="hidden" name="id_mision" id="id_mision" value="<?php  if(isset($data[0]->id_mision)){echo $data[0]->id_mision;}else{echo '0';}?>" />
							<input type="hidden" name="id_vision" id="id_vision" value="<?php  if(isset($data2[0]->id_vision)){echo $data2[0]->id_vision;}else{echo '0';}?>" />
							<div class="col-xs-6">

										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Mision </label>
										<div class="col-sm-9">
											<textarea type="text" id="mision" name='mision' placeholder="Username" class="col-xs-9 col-sm-10" <?php if(isset($data[0]->id_mision)) echo "disabled='disabled'"?>><?php if (isset($data[0]->mision))echo $data[0]->mision;?></textarea>
										</div>
									</div>
									
									<div class="col-xs-6">
										<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Vision </label>
										<div class="col-sm-9">
											<textarea type="text" id="vision" name='vision' placeholder="Username" class="col-xs-9 col-sm-10" <?php if(isset($data2[0]->id_vision)) echo "disabled='disabled'"?>><?php if (isset($data2[0]->vision))echo $data2[0]->vision;?></textarea>
										</div>
									</div>

									</div>

									<div class="col-sm-12" align="center">
									
									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-6">
											<button class="btn btn-info" type="button" id="save" onclick="guardar()" <?php  if (isset($data[0]->id_mision)){?>style="display: none;" <?php }?>>
												<i class="ace-icon fa fa-check bigger-110"></i>
												Guardar
											</button>
											&nbsp; &nbsp; &nbsp;
											<?php  if (isset($data[0]->id_mision)){?>
											<button class="btn" type="reset" id="edit" onclick="editar()">
												<i class="ace-icon fa fa-undo bigger-110"></i>
												Editar
											</button>
											<?php }?>
										</div>
									</div>
								</div>
									
	<input type="hidden" name="estado" value="<?php if(isset($data[0]->estado)){echo $data[0]->estado;}else{ echo "0";}?>" name="estado"/>
 						<?php echo form_close();?>
							</div>

							</div>