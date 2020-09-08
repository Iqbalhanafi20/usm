<?php
defined('BASEPATH') OR exit('No direct script access allowed');
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

// use PHPMailerPHPMailerPHPMailer;
// use PHPMailerPHPMailerException;

class Login extends CI_Controller {

	 function __construct()
	 {
	   parent::__construct();
		// send email with phpmailer
		require APPPATH.'libraries/phpmailer/src/Exception.php';
        require APPPATH.'libraries/phpmailer/src/PHPMailer.php';
		require APPPATH.'libraries/phpmailer/src/SMTP.php';

	   $this->load->library('email');
	   $this->load->database();
	   $this->load->model("user_model");
	   $this->load->model('quiz_model');
	   $this->lang->load('basic', $this->config->item('language'));
		if($this->db->database ==''){
		$this->load->helper('url');
		redirect('install');	
		}
		 
		 
		 
		
		
	 }

	public function index()
	{

	if($_SERVER['HTTPS']!="on")
  {
     $redirect= "https://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
     header("Location:$redirect");
  }
// end
		
		$this->load->helper('url');
		if($this->session->userdata('logged_in')){
			$logged_in=$this->session->userdata('logged_in');
			if($logged_in['su']=='1'){
				redirect('dashboard');
			}else{
				redirect('quiz');	
			}
			
		}
		
		
		$data['title']=$this->lang->line('login');
		$data['recent_quiz']=$this->quiz_model->recent_quiz('5');


		$this->form_validation->set_rules('captcha', 'Security','trim|required|xss_clean|callback_check_captcha');
            if($this->form_validation->run() == False)
            {
			   $data['captcha_img'] = $this->get_captcha();
                // $this->load->view('view_login', $data);
               $this->load->view('login', $data);
        }

		
		// $this->load->view('login',$data);
		 
	}

	public function download($id=""){
		$this->load->helper('download');
		if($id==1){
			force_download('upload/TATA_CARA_PELAKSANAAN_UJIAN_SARINGAN_MASUK.pdf', NULL);
		}else{
			force_download('upload/TATA_CARA_PENDAFTARAN_AKUN_BARU_USM.pdf', NULL);
		}
	}

	// create captcha
	public function get_captcha()
    {
        $this->load->helper('captcha');
        $word=rand(1000,9999);
        $vals = array(
                        'word'       => $word,
                        'img_path'   => './captcha/',
                        'img_url'    => base_url().'captcha/',
                        'img_width'  => 100,
                        'img_height' => 44,
                        'border'     => 0, 
                        'word_length'=> 4,
                        'font_path'  => './system/fonts/texb.ttf',
                        'expiration' => 3600, //1 houre,
                        'pool'       => '0123456789',
                        'colors'     => array(
                                    'background' => array(60,141,188),
                                    'border' => array(255, 255, 255),
                                    'text' => array(255,255,255),
                                    'grid' => array(96,185,236)
                                    )
                    );
        $cap = create_captcha($vals);
        $this->session->set_userdata($cap);
        return $cap['image'];
	}
	

	public function reload_captcha()
    {
        $new_captcha = $this->get_captcha();
        echo "".$new_captcha;
    }


	
	public function resend()
	{
		
		
		 $this->load->helper('url');
		if($this->input->post('email')){
		$status=$this->user_model->resend($this->input->post('email'));
		$this->session->set_flashdata('message', $status);
		redirect('login/resend');
		}
		
		
		$data['title']=$this->lang->line('resend_link');
		 
		$this->load->view('header',$data);
		$this->load->view('resend',$data);
		$this->load->view('footer',$data);
	}
	
	
 
	
		function addtocart($gid,$gname,$price){
		$this->load->helper('url');
		if($this->session->userdata('cart')){
			$d=$this->session->userdata('cart');
		$d[]=array(
			$gid,$gname,$price
			);		
		}else{
			$d=array();
		$d[]=array(
			$gid,$gname,$price
			);	
		}
		$this->session->set_userdata('cart',$d);
		$this->session->set_flashdata('message', 'Group added into cart');
			redirect('login/registration/');
	}
	
	function clearcart(){
		$this->load->helper('url');
			$this->session->unset_userdata('cart');
			$this->session->set_flashdata('message', 'Cart cleared successfully');
			redirect('login/pre_registration');
	}
	function clearcartval($gid){
		$this->load->helper('url');
		$d=array();
		foreach($this->session->userdata('cart') as $k => $v){
		if($v[0]==$gid){

		}else{
			$d[]=$v;
		}		
		}
			$this->session->set_userdata('cart',$d);
			$this->session->set_flashdata('message', 'Group removed from cart');
			redirect('login/pre_registration');
	}
	
	
	
	
	
		public function pre_registration()
	{
	$this->load->helper('url');
		$data['title']=$this->lang->line('select_package');
		// fetching group list
		$data['group_list']=$this->user_model->group_list();
		$this->load->view('header',$data);
		$this->load->view('pre_register',$data);
		$this->load->view('footer',$data);
	}

	
		public function registration($gid='0')
	{
	$this->load->helper('url');
		$data['gid']=$gid;
		$data['title']=$this->lang->line('register_new_account');
		$data['custom_form']=$this->user_model->custom_form('Registration');
		// fetching group list
		$data['group_list']=$this->user_model->group_list();
		$data['eve'] = $this->quiz_model->list_event();
		$data['tak'] = $this->quiz_model->list_tak();
		$data['jur'] = $this->quiz_model->list_jurusan();
		$this->load->view('header',$data);
		$this->load->view('register',$data);
		$this->load->view('footer',$data);
	}

	// public function check_cap_tcha()
    // {
    //     $user_captcha_code      = $this->input->post('captcha');
    //     $session_captcha_code   = $this->session->userdata('word');

    //     if($session_captcha_code == $user_captcha_code)
    //     {
    //         $userid     = $this->security->xss_clean($this->input->post('userid'));
    //         $password   = $this->security->xss_clean($this->input->post('password'));
    //         $this->load->model('model_login');

    //         if($userid == '') {
    //             // $this->session->sess_destroy();

    //             $this->session->set_flashdata('error', 'User ID tidak boleh kosong !');
    //             // $this->index();
                
    //             redirect('login');

    //         } elseif ($password == '') {
    //             // $this->session->sess_destroy();
    //             $this->session->set_flashdata('error', 'Password anda tidak boleh kosong !');
              
    //             redirect('login');

    //         } else {
                
    //             $result = $this->model_login->validate();
    //             if(!empty($result)) 
    //             {
    //                 if(($password == $result['password']) || ($password == $result['password_ortu'])) 
    //                 {   
    //                     //log satr9999
    //                     $this->model_satr->logsatr9991($userid);
    //                         if(strlen($password)<6){
    //                             $this->session->set_userdata('changepass','pendek');
    //                         }elseif($userid==$password)  {
    //                             $this->session->set_userdata('changepass','belum');
    //                         }else{
    //                             $this->session->set_userdata('changepass','sudah');
    //                         }
    //                     redirect('welcome');

    //                 } else {
    //                     // $this->session->sess_destroy();
    //                     $this->session->set_flashdata('error', 'NIM dan Password tidak cocok !!!');
               
    //                     redirect('login');
    //                 }

    //             } else {
    //                 // $this->session->sess_destroy();
    //                 $this->session->set_flashdata('error', 'Data Anda tidak lengkap, silahkan periksa !!!');
                
    //                 redirect('login');
    //             }  
    //         }

    //     } else {
    //         // $this->session->sess_destroy();
    //         $this->session->set_flashdata('error', 'Captcha Salah !!!');
    //         redirect('login');
    //     }
    // }

	
	public function verifylogin($p1='',$p2=''){

		$user_captcha_code      = $this->input->post('captcha');
		$session_captcha_code   = $this->session->userdata('word');
		
		if($session_captcha_code == $user_captcha_code)
        {
			if($p1 == ''){
				$username=$this->input->post('email');
				$password=$this->input->post('password');
				}else{
				$username=urldecode($p1);
				$password=urldecode($p2);
				}
				 $status=$this->user_model->login($username,$password);
				if($status['status']=='1'){
					$this->load->helper('url');
					// row exist fetch userdata
					$user=$status['user'];
					$gids=$user['gid'];
					$uid=$user['uid'];
					 $sl="select * from savsoft_group where gid in ($gids) ";
					$rq=$this->db->query($sl);
					 
					$gr=$rq->result_array();
					 
					$price=0;
						
						
					foreach($gr as $pk => $pv){
						$gid=$pv['gid'];
						$sl2="select * from savsoft_payment where uid='$uid' and gid='$gid' and payment_status='Paid' ";
						 
						$sl3=$this->db->query($sl2);
						// echo $sl3->num_rows(); echo "<br>";
						
					if($sl3->num_rows() >= 1){
							
						}else{
					$price += $pv['price'];	
						}
					}
				 
					// validate if user assigned to paid group
					if($price > '0'){
						
						// user assigned to paid group now validate expiry date.
						if($user['subscription_expired'] <= time()){
							// eubscription expired, redirect to payment page
							
							redirect('payment_gateway_2/subscribe/'.$gids.'/'.$user['uid']);
							
						}
						
					}
					 
					$user['base_url']=base_url();
					// creating login cookie
					$this->session->set_userdata('logged_in', $user);
					// redirect to dashboard
					if($user['su']=='1'){
					 redirect('dashboard');
						 
					}else{
						$burl=$this->config->item('base_url').'index.php/quiz';
					 header("location:$burl");
					}
				}else if($status['status']=='0'){
					 
					// invalid login
					// try to auth wp
					if($this->config->item('wp-login')){
					 
								if($this->authentication($username, $password)){
							   
								 $this->verifylogin($username, $password);
								}else{
								 $this->load->helper('url');
								 $this->session->set_flashdata('message', $status['message']);
					 $burl=$this->config->item('base_url');
					 header("location:$burl");
								}
						}else{
						
						$this->load->helper('url');
						$this->session->set_flashdata('message', $status['message']);
					redirect('login');
						}
						
					
				}else if($status['status']=='2'){
								$this->load->helper('url');
		
					 
					// email not verified
					$this->session->set_flashdata('message', $status['message']);
					redirect('login');
				}else if($status['status']=='3'){
								$this->load->helper('url');
		
					 
					// email not verified
					$this->session->set_flashdata('message', $status['message']);
					redirect('login');
				}
		}else{
			$this->session->set_flashdata('message', 'Captcha Salah !!!');
            redirect('login');
		}
		
		
	}
	
	
		
	function verify($vcode){
		$this->load->helper('url');	 
		 if($this->user_model->verify_code($vcode)){
			 $data['title']=$this->lang->line('email_verified');
		   $this->load->view('header',$data);
			$this->load->view('verify_code',$data);
		  $this->load->view('footer',$data);

			}else{
			 $data['title']=$this->lang->line('invalid_link');
		   $this->load->view('header',$data);
			$this->load->view('verify_code',$data);
		  $this->load->view('footer',$data);

			}
	}
	
	

	function forgot(){
		$this->load->helper('url');
				if($this->input->post('email')){
				$user_email=$this->input->post('email');
				 if($this->user_model->reset_password($user_email)){
					// $this->session->set_flashdata('message', "<div class='alert alert-success'>".$this->lang->line('password_updated')." </div>");

					$this->session->set_flashdata('message', "<div class='alert alert-success'>Reset link have been sent to your email</div>");
							
				}else{
					$this->session->set_flashdata('message', "<div class='alert alert-danger'>".$this->lang->line('email_doesnot_exist')." </div>");
							
				}
				redirect('login/forgot');
				}
				
	  
				$data['title']=$this->lang->line('forgot_password');
			   $this->load->view('header',$data);
				$this->load->view('forgot_password_email',$data);
			  $this->load->view('footer',$data);
	
		
		}
	
	
	function forgot_password(){
			$this->load->helper('url');
			
			// if($this->input->post('email')){

			// 	$user_email=$this->input->post('email');
			// 	if($this->user_model->reset_password($user_email)){
			// 		$this->session->set_flashdata('message', "<div class='alert alert-success'>".$this->lang->line('password_updated')." </div>");
							
			// 	}else{
			// 		$this->session->set_flashdata('message', "<div class='alert alert-danger'>".$this->lang->line('email_doesnot_exist')." </div>");
							
			// 	}
			// 	redirect('login/forgot');
			// }
			
  
		   $data['title']=$this->lang->line('forgot_password');
		   $this->load->view('header',$data);
		   $this->load->view('forgot_password',$data);
		   $this->load->view('footer',$data);

	
	}
	

	function proses_forgot(){
		$this->load->helper('url');
		$password1 = $this->input->post('password1');
		$password2 = $this->input->post('password2');
		$email = $this->input->post('email');

		// $where = array("email"=>$email);
		$cek = $this->user_model->cek_password($email);
		if($cek > 0){
			if($password1 <> $password2){
				$this->session->set_flashdata('message', "<div class='alert alert-danger'>Password not match</div>");
				redirect('login/forgot_password');
			}else{
				$data = array(
					"password"=>md5($this->input->post('password1'))
				);

				$where = array(
					"email"=>$email
				);

				$updated = $this->user_model->update_password($data,$where);

				if($updated){
					$this->session->set_flashdata('message', "<div class='alert alert-success'>Password updated</div>");
				}else{
					$this->session->set_flashdata('message', "<div class='alert alert-danger'>Update password fail</div>");
				}
			
				redirect('login/forgot_password');
			}
		}else{
			$this->session->set_flashdata('message', "<div class='alert alert-danger'>".$this->lang->line('email_doesnot_exist')." </div>");
			redirect('login/forgot_password');
		}
		
	}
	
	
		public function insert_user()
	{
		
		
		$this->load->helper('url');
		$this->load->library('form_validation');
		$this->form_validation->set_rules('email', 'Email', 'required|is_unique[savsoft_users.email]');
        $this->form_validation->set_rules('password', 'Password', 'required');
          if ($this->form_validation->run() == FALSE)
                {
                     $this->session->set_flashdata('message', "<div class='alert alert-danger'>The Email already exist or".validation_errors()."</div>");
					redirect('login/registration/');
                }
                else
                {
					if($this->user_model->insert_user_2()){
                        if($this->config->item('verify_email')){
						$link = site_url('login');
						$this->session->set_flashdata('message', "<div class='alert alert-success'>".$this->lang->line('account_registered_email_sent').", Please <a href='".$link."'>Sign in</a> </div>");
						// $this->session->set_flashdata('message', "<div class='alert alert-success'>Your email has been successfully registered, Please <a href='".$link."'>Sign in</a> </div>");
					
						}else{
							$this->session->set_flashdata('message', "<div class='alert alert-success'>".$this->lang->line('account_registered')." </div>");
						}
						}else{
						    $this->session->set_flashdata('message', "<div class='alert alert-danger'>".$this->lang->line('error_to_add_data')." </div>");
						
					}
					redirect('login/registration/');
                }       

	}
	
	
	
	
	function verify_result($rid){
		$this->load->helper('url');
		$this->load->model("result_model");
		
			$data['result']=$this->result_model->get_result($rid);
	if($data['result']['gen_certificate']=='0'){
		exit();
	}
	
	
	$certificate_text=$data['result']['certificate_text'];
	$certificate_text=str_replace('{email}',$data['result']['email'],$certificate_text);
	$certificate_text=str_replace('{first_name}',$data['result']['first_name'],$certificate_text);
	$certificate_text=str_replace('{last_name}',$data['result']['last_name'],$certificate_text);
	$certificate_text=str_replace('{percentage_obtained}',$data['result']['percentage_obtained'],$certificate_text);
	$certificate_text=str_replace('{score_obtained}',$data['result']['score_obtained'],$certificate_text);
	$certificate_text=str_replace('{quiz_name}',$data['result']['quiz_name'],$certificate_text);
	$certificate_text=str_replace('{status}',$data['result']['result_status'],$certificate_text);
	$certificate_text=str_replace('{result_id}',$data['result']['rid'],$certificate_text);
	$certificate_text=str_replace('{generated_date}',date('Y-m-d',$data['result']['end_time']),$certificate_text);
	
	$data['certificate_text']=$certificate_text;
	  $this->load->view('view_certificate_2',$data);
	 

	}
	
	
	
	function authentication ($user, $pass){
                  global $wp, $wp_rewrite, $wp_the_query, $wp_query;

                  if(empty($user) || empty($pass)){
                    return false;
                  }else{
                    require_once($this->config->item('wp-path'));
                    $status = false;
                    $auth = wp_authenticate($user, $pass );
                    if( is_wp_error($auth) ) {      
                      $status = false;
                    } else {
                    
                    // if username already exist in savsoft_users
                    $this->db->where('wp_user',$user);
                    $query=$this->db->get('savsoft_users');
                    if($query->num_rows()==0){
                    $userdata=array(
                    'password'=>md5($pass),
                    'wp_user'=>$user,
                    'su'=>0,
                    'gid'=>$this->config->item('default_group')                  
                    
                    );
                    $this->db->insert('savsoft_users',$userdata);
                    
                    }
                    
                    
                      $status = true;
                    }
                    return $status;
                  } 
        }
        
        
        public function commercial(){
        $this->load->helper('url');
		
       $data['title']=$this->lang->line('files_missing');
		   $this->load->view('header',$data);
			$this->load->view('files_missing',$data);
		  $this->load->view('footer',$data);
        }



		 // super admin code login controller 
	public function superadminlogin(){
	$this->load->helper('url');
			$logged_in=$this->session->userdata('logged_in_super_admin');
			if($logged_in['su']!='3'){
				exit('permission denied');
				
			}
			
		$user=$this->user_model->admin_login();
		$user['base_url']=base_url();
		 $user['super']=3;
		$this->session->set_userdata('logged_in', $user);
		redirect('dashboard');
	}
	
	
}
