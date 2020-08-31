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
       
        <form method="post" action="<?php echo site_url('setting/remove_event/'.$id);?>">

<div class="form-group">
Select group to which you want to move the users of deleted Event 
</div>
<div class="form-group">

<select name="mgid">
<?php 
foreach($eve as $val){
if($id == $val->id){ 
    $sel = "selected";
}else{
    $sel = "";
}
?>
<option value="<?php echo $val->id;?>" <?=$sel?>><?php echo $val->event;?></option>
<?php 

}
?>
</select>


</div>
 


<button class="btn btn-danger" type="submit"><?php echo $this->lang->line('submit');?></button>
<a href="<?php echo site_url('setting/event');?>" class="btn btn-default"  ><?php echo $this->lang->line('cancel');?></a>

</td>
</tr>
</table>
</form>
</div>

</div>



</div>
