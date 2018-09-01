<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class AnalisaAlternatifModel extends CI_Model {
	protected $table = 'analisa_alternatif';

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
	public function get1($select = '*',$join = NULL,$limit = NULL)
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
			return $query;
	}
	public function insert(){
			$this->db->insert($this->table, $this);
	}
	public function update($id){
			$this->db->update($this->table, $this, array('id_alternatif' => $id));
	}
	public function delete($id){
					$this->db->delete($this->table,['kasus_id'=>$id]);
	}

	public function where($field,$value){
			return $this->db->where($field,$value);
	}
	public function like($field,$value){
			return $this->db->like($field,$value);
	}
	public function find($id){
					$this->db->where('id_alternatif',$id);
					$table = $this->db->get($this->table,1);
					return $table->row_array();
	}
	public function selectsum($field){
		$this->db->select_sum($field);
		$query = $this->db->get($this->table);
		return $query->row_array();
	}
	public function selectavg($field){
		$this->db->select_avg($field);
		$query = $this->db->get($this->table);
		return $query->row_array();
	}
	public function update_hasil($alternatif1, $alternatif2, $kriteria,$kasus){
			$this->db->update($this->table, $this, array('alternatif_id_pertama' => $alternatif1, 'alternatif_id_kedua' => $alternatif2, 'kriteria_id' => $kriteria, 'kasus_id' => $kasus));
	}
}
?>
