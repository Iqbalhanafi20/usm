<div class="container">

   
<h3><?php echo $title;?></h3>
  


 <div class="row">
    <form method="post" action="<?php echo site_url('setting/edit_event/'.$id);?>">
   
<div class="col-md-8">
<br> 
<div class="login-panel panel panel-default">
       <div class="panel-body"> 
   
   
   
           <?php 
       if($this->session->flashdata('message')){
           echo $this->session->flashdata('message');	
       }

       foreach($eve as $row);
       ?>	
       
       
  
           <div class="form-group">	 
                   <label for="inputEmail"  >Event Name</label> 
                   <input type="text" required  name="event_name"  class="form-control"  value="<?php echo $row->event;?>" > 
           </div>

           <input type="hidden" required  name="date_event" placeholder="YYYY-MM-DD" class="form-control"  value="<?php echo $row->date;?>" > 
            
          
        


   <button class="btn btn-default" type="submit"><?php echo $this->lang->line('submit');?></button>

       </div>
</div>




</div>
     </form>
</div>





</div>
