<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class UserModel extends CI_Model {
	protected $table = 'user';
	public function authenticate($username,$password){
		$this->db->where('username',$username);
		$this->db->where('password',$password);
		$data = $this->db->get($this->table);
		if($data->row_array() != ''){
			return $data->row_array();
		}
		return 0;
	}
}
?>
