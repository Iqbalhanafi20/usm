<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Setting extends CI_Controller {

/*
| Savsoft Quiz - https://savsoftquiz.com 
|  Setting page
*/


	 function __construct()
	 {
	   parent::__construct();
		 $this->load->database();
	   $this->load->helper('url');
		$this->lang->load('basic', $this->config->item('language'));
		 $this->load->model('Setting_model');
		 $this->load->model('Quiz_model');
		 $this->load->model('user_model');

	 // redirect if not loggedin
		if(!$this->session->userdata('logged_in')){
			redirect('login');
			
		}
		$logged_in=$this->session->userdata('logged_in');
		if(!in_array('All',explode(',',$logged_in['setting']))){
			redirect('login');
		}
	 }
	 
	 
	public function index()
	{
	$data['title']="Setting";
	$data['tabs']=$this->Setting_model->settingTabs();
	$data['settings']=$this->Setting_model->basicSetting();
	 
	$this->load->view('header',$data);
	 $this->load->view('setting',$data);
	$this->load->view('footer',$data);
		 
	}

	public function event(){
		$logged_in=$this->session->userdata('logged_in');
                        $setting_p=explode(',',$logged_in['setting']);
			if(!in_array('All',$setting_p)){
			exit($this->lang->line('permission_denied'));
		}
		$data['title']="Event";
		// fetching group list
		$data['eve'] = $this->Quiz_model->list_event();
		$this->load->view('header',$data);
		$this->load->view('event_list',$data);
		$this->load->view('footer',$data);
	}

	public function add_new_event(){
		$logged_in=$this->session->userdata('logged_in');
					$setting_p=explode(',',$logged_in['setting']);
		if(!in_array('All',$setting_p)){
		exit($this->lang->line('permission_denied'));
		}
		
		
		
	if($this->input->post('event_name')){
	if($this->user_model->insert_event()){
					$this->session->set_flashdata('message', "<div class='alert alert-success'>".$this->lang->line('data_added_successfully')." </div>");
				}else{
					$this->session->set_flashdata('message', "<div class='alert alert-danger'>".$this->lang->line('error_to_update_data')." </div>");
					
				}
				redirect('setting/event');
	}
	// fetching group list
	$data['title']="Add Event";
	$this->load->view('header',$data);
	$this->load->view('add_event',$data);
	$this->load->view('footer',$data);

}

public function pre_remove_event($id){
	$data['id']=$id;
	// fetching group list
	$data['eve'] = $this->Quiz_model->list_event();
	$data['title']="Remove Event";
	$this->load->view('header',$data);
	$this->load->view('pre_remove_event',$data);
	$this->load->view('footer',$data);

}

public function remove_event($gid){
	$logged_in=$this->session->userdata('logged_in');
                        $acp=explode(',',$logged_in['setting']);
			if(!in_array('All',$acp)){
			exit($this->lang->line('permission_denied'));
			}
			
                        // $mgid=$this->input->post('mgid');
                        // $this->db->query(" update savsoft_users set gid='$mgid' where gid='$gid' ");
                        
			echo $gid;
			
			if($this->user_model->remove_event($gid)){
                        $this->session->set_flashdata('message', "<div class='alert alert-success'>".$this->lang->line('removed_successfully')." </div>");
					}else{
						    $this->session->set_flashdata('message', "<div class='alert alert-danger'>".$this->lang->line('error_to_remove')." </div>");
						
					}
					redirect('setting/event');
}

public function edit_event($id){
	$logged_in=$this->session->userdata('logged_in');
				$setting_p=explode(',',$logged_in['setting']);
	if(!in_array('All',$setting_p)){
	exit($this->lang->line('permission_denied'));
	}

if($this->input->post('event_name')){
if($this->user_model->update_event($id)){
				$this->session->set_flashdata('message', "<div class='alert alert-success'>".$this->lang->line('data_updated_successfully')." </div>");
			}else{
					$this->session->set_flashdata('message', "<div class='alert alert-danger'>".$this->lang->line('error_to_update_data')." </div>");
				
			}
			redirect('setting/event');
}

// fetching group list
$data['eve']=$this->Quiz_model->get_event($id);
$data['id']=$id;
$data['title']="Edit Event";
$this->load->view('header',$data);
$this->load->view('edit_event',$data);
$this->load->view('footer',$data);




}


	
	public function update(){
		
		if($this->Setting_model->updateSetting()){
			 	$this->session->set_flashdata('message', "<div class='alert alert-success sqFadeout'>Setting updated successfully!</div>");
		}else{
			 	$this->session->set_flashdata('message', "<div class='alert alert-danger sqFadeout'>Unable to update setting!</div>");
		}
		 
			  redirect('setting/index');
		
		
		
	}
	 
		 
}
