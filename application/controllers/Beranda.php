<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Beranda extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model(array('KasusModel','HasilAnalisaModel','KriteriaModel','AlternatifModel','RankingModel'));
	}
	public function index(){
		$model = $this->KasusModel;
		$data['table'] = $model->get();
		$this->load->view('layout/header');
		$this->load->view('beranda/index',$data);
		$this->load->view('layout/footer_home');
	}
	public function kasus($kasus_id){
		$data['title'] = 'Data Rangking pada Kasus ID '.$kasus_id;
		$data['sub_title'] = 'Tabel Rangking';
		$data['kasus_id'] = $kasus_id;
		$kritera = $this->KriteriaModel;
		$data['kriteria'] = $kritera->get();

		$alternatif = $this->AlternatifModel;
		$data['alternatif'] = $alternatif->get();

		$chart = $this->RankingModel;
		$chart->where('ranking.kasus_id',$kasus_id);
		$json['chart'] = $chart->get('ranking.*, alternatif.*',
			[
				['table'=>'alternatif','condition'=>'alternatif.id_alternatif = ranking.alternatif_id']
			]);
		$this->load->view('layout/header');
		$this->load->view('beranda/kasus',$data);
		$this->load->view('layout/footer_home',$json);
	}
	public function delete($id){

	}
}
