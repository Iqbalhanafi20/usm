<div class="container">

   
<h3><?php echo $title;?></h3>
  


 <div class="row">
    <form method="post" action="<?php echo site_url('setting/add_new_tak');?>">
   
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
                   <label for="inputEmail"  >Tahun Akademik</label> 
                   <input type="text" required  name="tak_name" placeholder="YYYY/YYYY"  class="form-control"   > 
           </div>
           <?php 
           $tgl = date("Y-m-d");
           ?> 
      
   <button class="btn btn-default" type="submit"><?php echo $this->lang->line('submit');?></button>

       </div>
</div>




</div>
     </form>
</div>





</div>
