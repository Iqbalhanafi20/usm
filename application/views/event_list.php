<div class="container">

   
<h3><?php echo $title;?></h3>


 <div class="row">

<div class="col-md-12">
<br> 
           <?php 
       if($this->session->flashdata('message')){
           echo $this->session->flashdata('message');	
       }
       ?>	
       <div id="message"></div>
       
        <a href="<?php echo site_url('setting/add_new_event');?>" class="btn btn-success">Add New</a>
   
<table class="table table-bordered">
<tr>
<th>Event name</th>
<th>Input Date</th>
<th>Action</th>
</tr>
<?php 
if(count($eve)==0){
   ?>
<tr>
<td colspan="3"><?php echo $this->lang->line('no_record_found');?></td>
</tr>	
   
   
   <?php
}

foreach($eve as $val){
?>
<tr>
<td> <?php echo $val->event;?></td>
<td><?php echo $val->date;?></td>
<td>
<a href="<?php echo site_url('setting/edit_event/'.$val->id);?>"><img src="<?php echo base_url('images/edit.png');?>"></a>
<a href="<?php echo site_url('setting/pre_remove_event/'.$val->id);?>"><img src="<?php echo base_url('images/cross.png');?>"></a>
</td>
</tr>

<?php 
}
?>

</table>


</div>

</div>



</div>
