<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class AlternatifModel extends CI_Model {
	protected $table = 'alternatif';

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
			$this->db->update($this->table, $this, array('id_alternatif' => $id));
	}
	public function delete($id){
					$this->db->delete($this->table,['id_alternatif'=>$id]);
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

	// bobot hasil_alternatif_kriteria
	public function getbobot($select = '*',$join = NULL,$limit = NULL)
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
			$query = $this->db->get('hasil_alternatif_kriteria');
			return $query;
	}
	public function find_hasil($kriteria,$alternatif,$kasus){
		$this->db->where('kriteria_id',$kriteria);
		$this->db->where('alternatif_id',$alternatif);
		$this->db->where('kasus_id',$kasus);
		$table = $this->db->get('hasil_alternatif_kriteria',1);
		return $table->row_array();
	}
	public function insertbobot(){
			$this->db->insert('hasil_alternatif_kriteria', $this);
	}
	public function updatebobot($id1,$id2,$id3){
			$this->db->update('hasil_alternatif_kriteria', array('kriteria_id' => $id1,'alternatif_id' => $id2,'kasus_id' => $id3));
	}
	public function update_hasil($kriteria,$alternatif,$kasus){
			$this->db->update('hasil_alternatif_kriteria', $this, array('kriteria_id' => $kriteria, 'alternatif_id' => $alternatif, 'kasus_id' => $kasus));
	}
	public function selectsum($field,$kriteria){
		$this->db->select_sum($field);
		$this->db->where('kriteria_id',$kriteria);
		$query = $this->db->get('hasil_alternatif_kriteria');
		return $query->row_array();
	}
	public function selectavg($field){
		$this->db->select_avg($field);
		$query = $this->db->get('hasil_alternatif_kriteria');
		return $query->row_array();
	}
}
?>
