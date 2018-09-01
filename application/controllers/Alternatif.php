<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Alternatif extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model(array('AlternatifModel','KriteriaModel','NilaiModel','AnalisaAlternatifModel'));
		$this->load->helper('string');
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
    $model->delete($id);
    redirect('alternatif/index');
	}

	// kasus
	public function generateid(){
		$string = 'CA{$id}';
    $id = random_string('numeric',4);
    $kasus_id = str_replace('{$id}', $id, $string);
		redirect('alternatif/kasus/'.$kasus_id);
	}

	public function kasus($id){
		$data['title'] = 'Tambah Kasus Untuk Analisa Alternatif';
		$data['sub_title'] = 'Prioritas Kriteria';
		$model = $this->KriteriaModel;
		$this->db->order_by("bobot_kriteria", "desc");
		$data['table'] = $model->get();
		$data['kasus_id'] = $id;
		$this->load->view('layout/header');
		$this->load->view('alternatif/kasus/index',$data);
		$this->load->view('layout/footer');
	}

	public function analisa($kasus_id,$kriteria_id){
		$data['title'] = 'Analisis Antar Alternatif';
		$data['sub_title'] = 'Form Analisis Alternatif';
		$data['kasus_id'] = $kasus_id;
		$data['kriteria_id'] = $kriteria_id;
		$model = $this->AlternatifModel;
		$data['table'] = $model->get();

		$model1 = $this->NilaiModel;
		$data['table1'] = $model1->get();

		$model2 = $this->KriteriaModel;
		$model2->where('id_kriteria',$kriteria_id);
		$data['kriteria'] = $model2->get1()->row_array();
		$this->load->view('layout/header');
		$this->load->view('alternatif/analisa/index',$data);
		$this->load->view('layout/footer');
	}

	public function analisa_alternatif($kasus_id,$kriteria_id){
		$analisa = $this->AnalisaAlternatifModel;
		$alternatif = $this->AlternatifModel;
		$data_alternatif = $alternatif->get();
		$jumlah_alternatif1 = count($alternatif->get()) - 1;

		// matrik segitiga atas
		foreach ($data_alternatif as $row1) {
			foreach ($data_alternatif as $row2) {
				if ($row1->nama_alternatif !== $row2->nama_alternatif) {
					if (substr($row1->id_alternatif,1,1) < substr($row2->id_alternatif,1,1)) {
						$alternatif1 = 'A'.substr($row1->id_alternatif,1,1) . substr($row2->id_alternatif,1,1);
						$nilai = 'B'.substr($row1->id_alternatif,1,1) . substr($row2->id_alternatif,1,1);
						$alternatif2 = 'C'.substr($row1->id_alternatif,1,1) . substr($row2->id_alternatif,1,1);
						$analisa->alternatif_id_pertama = $this->input->post($alternatif1);
						$analisa->alternatif_id_kedua = $this->input->post($alternatif2);
						$analisa->nilai_analisa_alternatif = $this->input->post($nilai);
						$analisa->kasus_id = $kasus_id;
						$analisa->kriteria_id = $kriteria_id;
						$analisa->insert();
					} else {
					}
				} else {
				}
			}
		}

		// matrik segitiga bawah
		foreach ($data_alternatif as $row1) {
			foreach ($data_alternatif as $row2) {
				if ($row1->nama_alternatif !== $row2->nama_alternatif) {
					if (substr($row1->id_alternatif,1,1) < substr($row2->id_alternatif,1,1)) {
						$alternatif2 = 'A'.substr($row1->id_alternatif,1,1) . substr($row2->id_alternatif,1,1);
						$nilai = 'B'.substr($row1->id_alternatif,1,1) . substr($row2->id_alternatif,1,1);
						$alternatif1 = 'C'.substr($row1->id_alternatif,1,1) . substr($row2->id_alternatif,1,1);
						$nilai_bawah = $this->input->post($nilai);
						$jumlah_nilai_bawah = 1 / $nilai_bawah;
						$analisa->alternatif_id_pertama = $this->input->post($alternatif1);
						$analisa->alternatif_id_kedua = $this->input->post($alternatif2);
						$analisa->nilai_analisa_alternatif = $jumlah_nilai_bawah;
						$analisa->kriteria_id = $kriteria_id;
						$analisa->insert();
					} else {
					}
				} else {
				}
			}
		}

		// nilai perbanding sama
		foreach ($data_alternatif as $row3) {
			$alternatif = $row3->id_alternatif;
			$analisa->alternatif_id_pertama = $alternatif;
			$analisa->alternatif_id_kedua = $alternatif;
			$analisa->nilai_analisa_alternatif = '1';
			$analisa->kriteria_id = $kriteria_id;
			$analisa->insert();
		}
		redirect('alternatif/table_analisa_alternatif/'.$kasus_id.'/'.$kriteria_id);
	}

	public function table_analisa_alternatif($kasus_id,$kriteria_id){
		$data['title'] = 'Data Alternatif';
		$data['sub_title1'] = 'Tabel Perbandingan Antar Alternatif';
		$data['sub_title2'] = 'Tabel Normalisasi Antar Alternatif';
		$data['sub_title3'] = 'Prioritas Alternatif';
		$data['kasus_id'] = $kasus_id;
		$data['kriteria_id'] = $kriteria_id;
		$alternatif = $this->AlternatifModel;
		$analisa = $this->AnalisaAlternatifModel;
		$data['alternatif'] = $alternatif->get();
		$data['analisa'] = $analisa->get();
		$this->load->view('layout/header');
		$this->load->view('alternatif/analisa/table',$data);
		$this->load->view('layout/footer');
	}
}
