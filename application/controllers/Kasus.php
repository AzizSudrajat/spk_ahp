<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Alternatif extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model(array('AlternatifModel','KriteriaModel','NilaiModel','AnalisaAlternatifModel','KasusModel'));
		$this->load->helper('string');
		if(!$this->session->has_userdata('login')){
      redirect('login');
    }
	}
	public function index(){
		$model = $this->AlternatifModel;
		$model->where('default', '1');
		$data['table'] = $model->get();
		$data['title'] = 'Data Alternatif Default (Tetap)';
		$data['sub_title'] = 'Table Data Alternatif Tetap';
		$this->load->view('layout/header');
		$this->load->view('alternatif/index',$data);
		$this->load->view('layout/footer');
	}
}
