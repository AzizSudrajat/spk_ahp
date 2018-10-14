<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Beranda extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model(array('KasusModel','HasilAnalisaModel','KriteriaModel','AlternatifModel','RankingModel','AnalisaAlternatifModel'));
		if(!$this->session->has_userdata('login')){
      redirect('login');
    }
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
		$chart->where('kasus_id',$kasus_id);
		$json['chart'] = $chart->get();
		$this->load->view('layout/header');
		$this->load->view('beranda/kasus',$data);
		$this->load->view('layout/footer_home',$json);
	}
	public function laporan($kasus){
		$model = $this->RankingModel;
		$this->db->order_by("bobot", "desc");
		$model->where('kasus_id',$kasus);
    $dr = $model->get();

		$model1 = $this->KasusModel;
		$tgl = $model1->find($kasus);
		// var_dump($tgl['tanggal_kasus']);
		$this->load->library('pdf');
    $pdf = new FPDF();
    $pdf->AddPage();

		// Logo
    $pdf->Image(base_url().'public/img/logo.png',10,10,-250);
    $pdf->Cell(100, 7, '', 0, 0);
    $pdf->Cell(85, 7, '', 0, 0);
    $pdf->Ln();
    $pdf->Cell(100, 7, '', 0, 0);
    $pdf->Cell(85, 7, '', 0, 0);
    $pdf->Ln();

    $pdf->Cell(100, 7, '', 0, 0);
    $pdf->Cell(85, 7, '', 0, 0);
    $pdf->Ln();

    $pdf->Cell(100, 4, '', 0, 0);
    $pdf->Cell(85, 4, '', 0, 0);
		$pdf->Ln();
		$pdf->Ln();

		// header
		$pdf->SetFont('Arial','B',10);
    $pdf->Cell(140, 4, 'Laporan Hasil Karyawan Terbaik', 0, 0);
    $pdf->Cell(50, 4, 'Bulan : '.$tgl['tanggal_kasus'], 0, 0);
    $pdf->Ln();
    $pdf->SetFont('');
    $pdf->Ln();

		// Data
		$pdf->Ln();
    $pdf->SetFont('Arial','B',12);
    $pdf->SetFillColor(210,221,242);
    $pdf->Cell(40, 7, 'Peringkat', 1, 0, 'L',true);
		$pdf->Cell(60, 7, 'Nama Karyawan', 1, 0, 'L',true);
    $pdf->Cell(80, 7, 'Bobot', 1, 0, 'L',true);
    $pdf->Ln();

    $pdf->SetFont('Arial','',12);
    $pdf->SetFillColor(210,221,242);
		$no = 1;
		foreach ($dr as $row) {
			$pdf->Cell(40, 7, 'Ranking Ke-'.$no, 1, 0, 'L');
			$pdf->Cell(60, 7, $row->deskripsi, 1, 0, 'L');
			$pdf->Cell(80, 7, $row->bobot, 1, 0, 'L');
			$pdf->Ln();
			$pdf->SetFont('');
      $no++;
		}

		$pdf->Output('Laporan Hasil Karyawan Terbaik.pdf','D');
	}
	public function delete($id){
		$kasus = $this->KasusModel;
		$kasus->delete($id);
		$analisaalt = $this->AnalisaAlternatifModel;
		$analisaalt->delete($id);
		$hasilanalisa = $this->AlternatifModel;
		$hasilanalisa->deletehasil($id);
		$ranking = $this->RankingModel;
		$ranking->delete($id);
		redirect('beranda');
	}
}
