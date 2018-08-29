<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Nilai extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model('NilaiModel');
	}
	public function index(){
		$model = $this->NilaiModel;
		$data['title'] = 'Data Nilai';
		$data['sub_title'] = 'Tabel Nilai';
		$data['table'] = $model->get();
		$this->load->view('layout/header');
		$this->load->view('nilai/index',$data);
		$this->load->view('layout/footer');
	}
	public function create(){
		$data['title'] = 'Tambah Data Nilai';
		$data['sub_title'] = 'Form Tambah Nilai';
		$this->load->view('layout/header');
		$this->load->view('nilai/create',$data);
		$this->load->view('layout/footer');
	}
	public function store(){
		$model = $this->NilaiModel;
		$model->id_nilai = $this->input->post('id_nilai');
		$model->jumlah_nilai = $this->input->post('jumlah_nilai');
		$model->deskripsi = $this->input->post('deskripsi');
		$model->insert();
		redirect('nilai/index');
	}
	public function edit($id){
		$data['title'] = 'Ubah Data Kriteria';
		$data['sub_title'] = 'Form Ubah Kriteria';
		$model = $this->NilaiModel;
    $data['form'] = $model->find($id);
		$this->load->view('layout/header');
		$this->load->view('nilai/edit',$data);
		$this->load->view('layout/footer');
	}
	public function update($id){
		$model = $this->NilaiModel;
		$model->id_nilai = $this->input->post('id_nilai');
		$model->jumlah_nilai = $this->input->post('jumlah_nilai');
		$model->deskripsi = $this->input->post('deskripsi');
		$model->update($id);
		redirect('nilai/index');
	}
	public function delete($id){
		$model = $this->NilaiModel;
    $model->delete($id);
    redirect('nilai/index');
	}
}
