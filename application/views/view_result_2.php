<html lang="en">
  <head>
  <title> <?php echo $title;?></title>
 <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">


  
  <!-- Custom fonts for this template-->
  <link href="<?php echo base_url();?>vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
 <!-- custom css -->
	<link href="<?php echo base_url('css/style.css?q='.time());?>" rel="stylesheet">
	
	<!-- Custom styles for this template-->
  <link href="<?php echo base_url();?>css/sb-admin-2.min.css" rel="stylesheet">

	
	
  <style>
  html,body,h1,h2,h3,h4,p,div,span,ul,li,a{
    direction: <?php echo $this->config->item('direction');?>;
}
.btn-default{
	
	border:1px solid #c8c4c4;
	
}
form{
	width: 100%;
}

.sidebar {
    width: 16rem!important;
}
  </style>	
	<script src="<?php echo base_url();?>vendor/jquery/jquery.min.js"></script>
  <script src="<?php echo base_url();?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="<?php echo base_url();?>vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="<?php echo base_url();?>js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="<?php echo base_url();?>vendor/chart.js/Chart.min.js"></script>

   
	
	<script>
	
	var base_url="<?php echo base_url();?>";

	</script>
	
	 
	<?php
	if(($this->uri->segment(1).'/'.$this->uri->segment(2))!='quiz/attempt'){
	?>
	<!-- custom javascript -->
	  	<script src="<?php echo base_url('js/basic.js?q='.time());?>"></script>
	<?php
	}
	?>	
	<!-- firebase messaging menifest.json -->
	 <link rel="manifest" href="<?php echo base_url('js/manifest.json');?>">

</head>
<style>
body{
    padding: 20px;
}
.cari{
    background-color: #FFCC00;
}
.cari:hover{
    background-color: #003366;
    color: white;
}
.isi-judul{
  margin-bottom: 30px;
  text-align: center;
}
</style>
<body>
<div class="isi-judul">
	<h5>"Selamat! Kamu telah menyelesaikan USM Online dari Institut Bisnis dan Informatika Kwik Kian Gie"</h5>
</div>
<form>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="email" aria-describedby="emailHelp" value="<?=$email?>">
    <small id="emailHelp" class="form-text text-muted">Masukan Email yang telah terdaftar secara lengkap</small>
  </div>
  <button type="button" class="btn cari">Submit</button>
</form>

<div class="isi"></div>

</body>

</html>
