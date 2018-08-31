<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Alternatif extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model('AlternatifModel');
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
	public function default_create(){
		$data['title'] = 'Tambah Data Alternatif Tetap';
		$data['sub_title'] = 'Form Tambah Kriteria';
		$this->load->view('layout/header');
		$this->load->view('alternatif/create',$data);
		$this->load->view('layout/footer');
	}
	public function default_store(){
		$model = $this->AlternatifModel;
		$model->id_alternatif = $this->input->post('id_alternatif');
		$model->nama_alternatif = $this->input->post('nama_alternatif');
		$model->deskripsi = $this->input->post('deskripsi');
		$model->default = $this->input->post('default');
		$model->insert();
		redirect('alternatif/index');
	}
	public function default_edit($id){
		$data['title'] = 'Ubah Data Kriteria';
		$data['sub_title'] = 'Form Ubah Kriteria';
		$model = $this->AlternatifModel;
		$model->where('default', '1');
    $data['form'] = $model->find($id);
		$this->load->view('layout/header');
		$this->load->view('alternatif/edit',$data);
		$this->load->view('layout/footer');
	}
	public function default_update($id){
		$model = $this->AlternatifModel;
		$model->id_alternatif = $this->input->post('id_alternatif');
		$model->nama_alternatif = $this->input->post('nama_alternatif');
		$model->deskripsi = $this->input->post('deskripsi');
		$model->default = $this->input->post('default');
		$model->update($id);
		redirect('alternatif/index');
	}
	public function default_delete($id){
		$model = $this->AlternatifModel;
		$model->where('default', '1');
    $model->delete($id);
    redirect('alternatif/index');
	}
}
