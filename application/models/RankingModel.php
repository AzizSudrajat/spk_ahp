<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class RankingModel extends CI_Model {
	protected $table = 'ranking';

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
					$this->db->delete($this->table,['kasus_id'=>$id]);
	}
	public function where($field,$value){
			return $this->db->where($field,$value);
	}
}
?>
