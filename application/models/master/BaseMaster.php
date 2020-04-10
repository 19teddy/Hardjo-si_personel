<?php

require_once APPPATH.'models/BaseModel.php';

class BaseMaster extends BaseModel {

	protected $table_name;
	protected $columns;
	protected $order_by;

	public function get_page($paging_params) {

		$this->db->from($this->table_name);

		$this->db->select(['id', 'nama']);

		return $this->build_paging($paging_params, [
			'nama' => ['	nama', 'like'],
		]);
	}

	public function get_all() {

		$this->db->from($this->table_name);
		$this->db->select($this->columns);
		
		if(!empty($this->order_by)) {
			$this->db->order_by($this->order_by);
		}

		return $this->db->get()->result();
	}

	public function insert_if_not_exist($nama) {

		$row = $this->db
			->select('id', 'nama')
			->from($this->table_name)
			->where('nama', $nama)
			->limit(1)->get()->row();

		if(empty($row)) {

			$q = $this->db->insert($this->table_name, [
				'nama' => $nama
			]);

			return $q === FALSE ? NULL : $this->db->insert_id();
		}

		return $row->id;
	}

	public function update($id, $nama) {

		$q = $this->db->where('id', $id)->update($this->table_name, [
			'nama' => $nama,
		]);

		return $q === FALSE ? FALSE : $this->db->affected_rows();
	}

	public function delete($id) {

		$q = $this->db->where('id', $id)->delete($this->table_name);

		return $q === FALSE ? FALSE : $this->db->affected_rows();
	}
}