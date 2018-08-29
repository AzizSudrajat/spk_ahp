<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kriteria extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model('KriteriaModel');
		$this->load->model('NilaiModel');
		$this->load->model('AnalisaKriteriaModel');
	}
	public function index(){
		$model = $this->KriteriaModel;
		$data['title'] = 'Data Kriteria';
		$data['sub_title'] = 'Tabel Kriteria';
		$data['table'] = $model->get();
		$this->load->view('layout/header');
		$this->load->view('kriteria/index',$data);
		$this->load->view('layout/footer');
	}
	public function create(){
		$data['title'] = 'Tambah Data Kriteria';
		$data['sub_title'] = 'Form Tambah Kriteria';
		$this->load->view('layout/header');
		$this->load->view('kriteria/create',$data);
		$this->load->view('layout/footer');
	}
	public function store(){
		$model = $this->KriteriaModel;
		$model->id_kriteria = $this->input->post('id_kriteria');
		$model->nama_kriteria = $this->input->post('nama_kriteria');
		$model->deskripsi = $this->input->post('deskripsi');
		$model->insert();
		redirect('kriteria/index');
	}
	public function edit($id){
		$data['title'] = 'Ubah Data Kriteria';
		$data['sub_title'] = 'Form Ubah Kriteria';
		$model = $this->KriteriaModel;
    $data['form'] = $model->find($id);
		$this->load->view('layout/header');
		$this->load->view('kriteria/edit',$data);
		$this->load->view('layout/footer');
	}
	public function update($id){
		$model = $this->KriteriaModel;
		$model->id_kriteria = $this->input->post('id_kriteria');
		$model->nama_kriteria = $this->input->post('nama_kriteria');
		$model->deskripsi = $this->input->post('deskripsi');
		$model->update($id);
		redirect('kriteria/index');
	}
	public function delete($id){
		$model = $this->KriteriaModel;
    $model->delete($id);
    redirect('kriteria/index');
	}

	// analisa
	public function analisa(){
		$model = $this->KriteriaModel;
		$data['table'] = $model->get();

		$model1 = $this->NilaiModel;
		$data['table1'] = $model1->get();

		$data['title'] = 'Analisis Kriteria';
		$data['sub_title'] = 'Form Analisis Kriteria';
		$this->load->view('layout/header');
		$this->load->view('kriteria/analisa/index',$data);
		$this->load->view('layout/footer');
	}
	public function analisa_kriteria(){
		$analisa = $this->AnalisaKriteriaModel;
		$kriteria = $this->KriteriaModel;
		$data_kriteria = $kriteria->get();
		$jumlah_kriteria1 = count($kriteria->get()) - 1;

		// matrik segitiga atas
		foreach ($data_kriteria as $row1) {
			foreach ($data_kriteria as $row2) {
				if ($row1->nama_kriteria !== $row2->nama_kriteria) {
					if (substr($row1->id_kriteria,1,1) < substr($row2->id_kriteria,1,1)) {
						$kriteria1 = 'A'.substr($row1->id_kriteria,1,1) . substr($row2->id_kriteria,1,1);
						$nilai = 'B'.substr($row1->id_kriteria,1,1) . substr($row2->id_kriteria,1,1);
						$kriteria2 = 'C'.substr($row1->id_kriteria,1,1) . substr($row2->id_kriteria,1,1);
						$analisa->kriteria_id_pertama = $this->input->post($kriteria1);
						$analisa->kriteria_id_kedua = $this->input->post($kriteria2);
						$analisa->nilai_analisa_kriteria = $this->input->post($nilai);
						$analisa->insert();
					} else {
					}
				} else {
				}
			}
		}

		// matrik segitiga bawah
		foreach ($data_kriteria as $row1) {
			foreach ($data_kriteria as $row2) {
				if ($row1->nama_kriteria !== $row2->nama_kriteria) {
					if (substr($row1->id_kriteria,1,1) < substr($row2->id_kriteria,1,1)) {
						$kriteria2 = 'A'.substr($row1->id_kriteria,1,1) . substr($row2->id_kriteria,1,1);
						$nilai = 'B'.substr($row1->id_kriteria,1,1) . substr($row2->id_kriteria,1,1);
						$kriteria1 = 'C'.substr($row1->id_kriteria,1,1) . substr($row2->id_kriteria,1,1);
						$nilai_bawah = $this->input->post($nilai);
						$jumlah_nilai_bawah = 1 / $nilai_bawah;
						$analisa->kriteria_id_pertama = $this->input->post($kriteria1);
						$analisa->kriteria_id_kedua = $this->input->post($kriteria2);
						$analisa->nilai_analisa_kriteria = $jumlah_nilai_bawah;
						$analisa->insert();
					} else {
					}
				} else {
				}
			}
		}

		// nilai perbanding sama
		foreach ($data_kriteria as $row3) {
			$kriteria = $row3->id_kriteria;
			$analisa->kriteria_id_pertama = $kriteria;
			$analisa->kriteria_id_kedua = $kriteria;
			$analisa->nilai_analisa_kriteria = '1';
			$analisa->insert();
		}
		// redirect('kriteria/index');
	}
}
