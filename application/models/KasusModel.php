<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class KasusModel extends CI_Model {
	protected $table = 'kasus';

	public function get($select = '*',$join = NULL,$limit = NULL)
	{
			if($join != NULL){
					$this->db->select($select);
					foreach ($join as $row) {
							$this->db->join($row['table'],$row['condition']);
					}
			}
			if($limit != NULL){
					$this->db->limit($limit);
			}
			$query = $this->db->get($this->table);
			return $query->result();
	}
	public function insert(){
			$this->db->insert($this->table, $this);
	}
	public function update($id){
			$this->db->update($this->table, $this, array('id' => $id));
	}
	public function delete($id){
					$this->db->delete($this->table,['id_kasus'=>$id]);
	}
	public function where($field,$value){
			return $this->db->where($field,$value);
	}
	public function like($field,$value){
			return $this->db->like($field,$value);
	}
	public function find($id){
					$this->db->where('id_kasus',$id);
					$table = $this->db->get($this->table,1);
					return $table->row_array();
	}
}
?>
