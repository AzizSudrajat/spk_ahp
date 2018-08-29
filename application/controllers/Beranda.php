<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Beranda extends CI_Controller {
	public function __construct(){
		parent::__construct();

	}
	public function index(){
		$this->load->view('layout/header');
		$this->load->view('beranda/index');
		$this->load->view('layout/footer_home');
	}
	public function create(){

	}

	public function store(){

	}
	public function edit($id){

	}
	public function update($id){

	}
	public function delete($id){

	}
}
