<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Login extends CI_Controller {
	public function __construct(){
    parent::__construct();
      $this->load->model('UserModel');
  }
	public function index(){
    $this->load->view('layout/header');
		$this->load->view('login/index');
		$this->load->view('layout/footer');
	}
	public function auth(){
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$auth = $this->UserModel->authenticate($username,$password);
		if($auth === 0){
			redirect('login');
		}
		else{
			$this->session->set_userdata(['login'=>1,'user'=>$auth]);
			redirect('beranda');
		}
	}
	public function logout(){
		$this->session->unset_userdata(['login']);
		redirect('login');
	}
}
