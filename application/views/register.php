<div class="row"  style="border-bottom:1px solid #dddddd;">
<div class="container"  >
<div class="col-md-1">
</div>
<div class="col-md-10">
<a href="<?php echo base_url();?>"><img style="width: 150px;" src="<?php echo base_url('images/logokkg.png');?>" style="height:3rem;width:auto"></a>
</div>
<div class="col-md-1">
</div>

</div>

</div>

 <div class="container">

   
 <h3><?php echo $title;?></h3>
   
 

  <div class="row">
     <form method="post" action="<?php echo site_url('login/insert_user/');?>">
	
<div class="col-md-8">
<br> 
 <div class="login-panel panel panel-default">
		<div class="panel-body"> 
	
	
	
			<?php 
		if($this->session->flashdata('message')){
			echo $this->session->flashdata('message');	
		}
		?>	
		
		
				<div class="form-group">	 
					<label for="inputEmail" class="sr-only"><?php echo $this->lang->line('email_address');?></label> 
					<input type="email" id="inputEmail" name="email" class="form-control" placeholder="<?php echo $this->lang->line('email_address');?>" required autofocus>
			</div>
			<div class="form-group">	  
					<label for="inputPassword" class="sr-only"><?php echo $this->lang->line('password');?></label>
					<input type="password" id="inputPassword" name="password"  class="form-control" placeholder="<?php echo $this->lang->line('password');?>" required autofocus>
			 </div>
				<div class="form-group">	 
					<label for="inputEmail" class="sr-only"><?php echo $this->lang->line('first_name');?></label> 
					<input type="text"  name="first_name"  class="form-control" placeholder="<?php echo $this->lang->line('first_name');?>"   required autofocus>
			</div>
				<div class="form-group">	 
					<label for="inputEmail" class="sr-only"><?php echo $this->lang->line('last_name');?></label> 
					<input type="text"   name="last_name"  class="form-control" placeholder="<?php echo $this->lang->line('last_name');?>"   autofocus>
			</div>
			<div class="form-group">	 
					<label for="inputEmail" class="sr-only"><?php echo $this->lang->line('contact_no');?></label> 
					<input type="text" name="contact_no"  class="form-control" onkeypress="return hanyaAngka(event)" placeholder="<?php echo $this->lang->line('contact_no');?>" maxlength="14"   required autofocus>
			</div>
		<?php 
		// 	if($this->session->userdata('cart')){
		// 	$d=$this->session->userdata('cart');
		// foreach($d as $k => $v){
		?>


		<!-- <input type="hidden" name="gid[]" value="<?php echo $v[0];?>"> -->

		
		<?php
		// }
		// 	}else{
			?>


		<!-- <input type="hidden" name="gid[]" value="<?php echo $this->config->item('default_group');?>"> -->


		<?php	
				
			// }
			
		?>
			
				<div class="form-group">	 
					<label   ><?php echo $this->lang->line('select_group');?></label> 
					<select class="form-control" name="gid[]" id="gid"  required autofocus>
					<?php 
					foreach($group_list as $key => $val){
						?>
						
					<option value="<?php echo $val['gid'];?>" <?php if($val['gid']==$gid){ echo 'selected'; } ?> ><?php echo $val['group_name'];?></option>
						<?php 
					}
					?>
					</select>
				</div>

				<div class="form-group">	 
					<label   >Select Event</label> 
					<select class="form-control" name="eventid"  required>
					<?php 
					foreach($eve as $val){
						?>
						
					<option value="<?php echo $val->id;?>"><?php echo $val->event;?></option>
						<?php 
					}
					?>
					</select>
				</div>

				<div class="form-group">	 
					<label   >Jurusan Yang Diinginkan</label> 
					<select class="form-control" name="jurusan"  required>
					<?php 
					foreach($jur as $val){
						?>
						
					<option value="<?php echo $val->meprogdi;?>"><?php echo $val->meprogdi." (".$val->idprogm.")";?></option>
						<?php 
					}
					?>
					</select>
				</div>

 

	<?php 
	foreach($custom_form as $fk => $fval){
 
	?>
				<div class="form-group">	 
					<label for="inputEmail"  ><?php echo $fval['field_title']; ?></label> 
					<input type="<?php echo $fval['field_type']; ?>" name="custom[<?php echo $fval['field_id']; ?>]"  class="form-control" value="<?php echo $fval['field_value']; ?>"  <?php echo $fval['field_validate']; ?> required autofocus>
				</div>
	
	<?php
	}
	?>	
	
	

 
	<button class="btn btn-default" type="submit"><?php echo $this->lang->line('submit');?></button>
 &nbsp;&nbsp;&nbsp;&nbsp; <a href="<?php echo site_url('login');?>"><?php echo $this->lang->line('login');?></a>
		</div>
</div>
 
 
 
 
</div>
      </form>
</div>

 



</div>
<script>
		function hanyaAngka(evt) {
		  var charCode = (evt.which) ? evt.which : event.keyCode
		   if (charCode > 31 && (charCode < 48 || charCode > 57))
 
		    return false;
		  return true;
		}
</script>