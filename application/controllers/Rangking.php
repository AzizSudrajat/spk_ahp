<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Rangking extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model(array('AlternatifModel','KriteriaModel','NilaiModel','AnalisaAlternatifModel'));
		$this->load->helper('string');
	}
	public function kasus($id){
		// $model = $this->AlternatifModel;
		// $model->where('default', '1');
		// $data['table'] = $model->get();
		$data['title'] = 'Data Rangking';
		$data['sub_title'] = 'Table Rangking';
    $data['kasus_id'] = $id;

    $model = $this->KriteriaModel;
    $data['kriteria'] = $model->get();
    $model1 = $this->AlternatifModel;
    $data['alternatif'] = $model1->get();

		$this->load->view('layout/header');
		$this->load->view('rangking/index',$data);
		$this->load->view('layout/footer');
	}

}
