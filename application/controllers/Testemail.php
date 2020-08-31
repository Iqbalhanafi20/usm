<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Testemail extends CI_Controller {

	 function __construct()
	 {
	   parent::__construct();
	   
	 }

	 function index(){
	 	
	 		$config = array(
			'protocol'  => 'exim',
			'smtp_host' => 'smtp.gmail.com',
			'smtp_port' => 587,
			'smtp_user' => 'system@kwikkiangie.ac.id',
			'smtp_pass' => 'fingerprint2016',
			'mailtype'  => 'html',
			'charset'   => 'utf-8',
			'smtp_timeout'=> 30,
			'smtp_crypto' => 'tls'
		);

		$this->load->library('email', $config);
		$this->email->set_newline("\r\n");

			$this->email->to('iqbal.hanafi@kwikkiangie.ac.id');
			$this->email->from('no-reply@kwikkiangie.ac.id', 'test');
			$this->email->subject('bismillah');
			$this->email->message('bisa');
			if(!$this->email->send()){
			 print_r($this->email->print_debugger());
			}else echo 'Sukses! email berhasil dikirim.<br>';


	 }
}

// if($this->config->item('allow_result_email')){
// 	$this->load->library('email');
// 	$query = $this -> db -> query("select savsoft_result.*,savsoft_users.*,savsoft_quiz.* from savsoft_result, savsoft_users, savsoft_quiz where savsoft_users.uid=savsoft_result.uid and savsoft_quiz.quid=savsoft_result.quid and savsoft_result.rid='$rid'");
// 	$qrr=$query->row_array();
//   		if($this->config->item('protocol')=="smtp"){
// 			$config['protocol'] = 'smtp';
// 			$config['smtp_host'] = $this->config->item('smtp_hostname');
// 			$config['smtp_user'] = $this->config->item('smtp_username');
// 			$config['smtp_pass'] = $this->config->item('smtp_password');
// 			$config['smtp_port'] = $this->config->item('smtp_port');
// 			$config['smtp_timeout'] = $this->config->item('smtp_timeout');
// 			$config['mailtype'] = $this->config->item('smtp_mailtype');
// 			$config['starttls']  = $this->config->item('starttls');
// 			$config['newline']  = $this->config->item('newline');

// 			$this->email->initialize($config);
// 		}
// 			$toemail=$qrr['email'];
// 			$fromemail=$this->config->item('fromemail');
// 			$fromname=$this->config->item('fromname');
// 			$subject=$this->config->item('result_subject');
// 			$message=$this->config->item('result_message');
			
// 			$subject=str_replace('[email]',$qrr['email'],$subject);
// 			$subject=str_replace('[first_name]',$qrr['first_name'],$subject);
// 			$subject=str_replace('[last_name]',$qrr['last_name'],$subject);
// 			$subject=str_replace('[quiz_name]',$qrr['quiz_name'],$subject);
// 			$subject=str_replace('[score_obtained]',$qrr['score_obtained'],$subject);
// 			$subject=str_replace('[percentage_obtained]',$qrr['percentage_obtained'],$subject);
// 			$subject=str_replace('[current_date]',date('Y-m-d H:i:s',time()),$subject);
// 			$subject=str_replace('[result_status]',$qrr['result_status'],$subject);
			
// 			$message=str_replace('[email]',$qrr['email'],$message);
// 			$message=str_replace('[first_name]',$qrr['first_name'],$message);
// 			$message=str_replace('[last_name]',$qrr['last_name'],$message);
// 			$message=str_replace('[quiz_name]',$qrr['quiz_name'],$message);
// 			$message=str_replace('[score_obtained]',$qrr['score_obtained'],$message);
// 			$message=str_replace('[percentage_obtained]',$qrr['percentage_obtained'],$message);
// 			$message=str_replace('[current_date]',date('Y-m-d H:i:s',time()),$message);
// 			$message=str_replace('[result_status]',$qrr['result_status'],$message);
			 
			
// 			$this->email->to($toemail);
// 			$this->email->from($fromemail, $fromname);
// 			$this->email->subject($subject);
// 			$this->email->message($message);
// 			if(!$this->email->send()){
// 			 //print_r($this->email->print_debugger());
			
// 			}
// 	}