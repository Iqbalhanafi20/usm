 <div class="container">

 	<div class="row">
 		<div class="col-md-4"></div>
 		<div class="col-md-4">
 			<div class="login-panel panel panel-default" style="margin-top: 150px;">
 				<div class="panel-body">
 					<center><a href="<?php echo base_url();?>"><img src="<?php echo base_url('images/logokkg.png');?>"
 								style="height:3rem;width:auto"></a></center>


 					<form method="post" class="form-signin" action="<?php echo site_url('login/proses_forgot');?>">
 						<center>
 							<h2 class="form-signin-heading"><?php echo $this->lang->line('login');?></h2>
 						</center>
 						<?php 
				if($this->session->flashdata('message')){
					?>
 						<div class="alert alert-danger">
 							<?php echo $this->session->flashdata('message');?>
 						</div>
 						<?php	
				}
				?>
 						<div class="form-group">
 							<label for="inputEmail"><?php echo $this->lang->line('email_linked_account');?></label>
 							<input type="email" id="inputEmail" name="email" class="form-control"
 								placeholder="<?php echo $this->lang->line('email_address');?>" required autofocus>
						 </div>
						 
						 <div class="form-group">
 							<input type="password" id="password1" name="password1" class="form-control"
 								placeholder="New Password" required autofocus>
						  </div>
						  
						  <div class="form-group">
 							<input type="password" id="password2" name="password2" class="form-control"
 								placeholder="Confirm Password" required autofocus>
 						 </div>

 						<div class="form-group">

 							<button class="btn btn-lg btn-primary btn-block"
 								type="submit"><?php echo $this->lang->line('send_new_password');?></button>
 						</div>
 						<?php 
					if($this->config->item('user_registration')){
						?>
									<a
										href="<?php echo site_url('login/registration');?>"><?php echo $this->lang->line('register_new_account');?></a>
									&nbsp;&nbsp;&nbsp;&nbsp;
									<?php
					}
					?>
 						<a href="<?php echo site_url('login');?>"><?php echo $this->lang->line('login');?></a>

 					</form>
 				</div>
 			</div>
 		</div>
 		<div class="col-md-4"></div>
 	</div>

 </div>