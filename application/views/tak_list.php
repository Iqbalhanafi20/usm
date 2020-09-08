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
       
        <a href="<?php echo site_url('setting/add_new_tak');?>" class="btn btn-success">Add New</a>
   
<table class="table table-bordered">
<tr>
<th>Tahun Akademik</th>
<th>Action</th>
</tr>
<?php 
if(count($tak)==0){
   ?>
<tr>
<td colspan="3"><?php echo $this->lang->line('no_record_found');?></td>
</tr>	
   
   
   <?php
}

foreach($tak as $val){
?>
<tr>
<td> <?php echo $val->tahun_akademik;?></td>
<td>
<a href="<?php echo site_url('setting/edit_tak/'.$val->tahun_akademik);?>"><img src="<?php echo base_url('images/edit.png');?>"></a>
<a class="deltak" href="#" tahun="<?=$val->tahun_akademik?>"><img src="<?php echo base_url('images/cross.png');?>"></a>
</td>
</tr>

<?php 
}
?>

</table>


</div>

</div>



</div>
