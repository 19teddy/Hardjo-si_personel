<?php

class BaseModel extends CI_Model {

	function __construct() {
		parent::__construct();

		$this->load->database();

		// dibutuhkan untuk append alert
		// otomatis library session sudah diload
		$this->load->library('renderer');
	}

	// PAGING PARAMS:
	// Object consist of limit, offset, and q(Map)
	protected function build_paging($paging_params, $search_definition = [], $using_and = TRUE) {

		if(!empty($search_definition) && !empty($paging_params->search)) {

			if(!$using_and) {
				$this->db->or_group_start();
			}
			else {
				$this->db->group_start();
			}

			foreach ($search_definition as $key => $value) {
				if(isset($paging_params->search[$key])) {
					if($value[1] == 'like') {
						$this->db->like($value[0], $paging_params->search[$key]);
					}
					elseif($value[1] == 'where') {
						$this->db->where($value[0], $paging_params->search[$key]);
					}
				}
			}

			$this->db->group_end();
		}

		$this->db
			->limit($paging_params->limit + 1)
			->offset($paging_params->offset);

		$data = $this->db->get()->result();

		$has_next = count($data) == (1 + $paging_params->limit);
		if($has_next) {
			array_pop($data);
		}

		return (Object) [
			'data'            => $data,
			'has_next'        => $has_next,
			'has_previous'    => $paging_params->offset > 0,
			'next_offset'     => $paging_params->offset + $paging_params->limit,
			'previous_offset' => $paging_params->offset - $paging_params->limit,
		];
	}

	/*
	* IMPLEMENTASI PAGINATION BERDASARKAN REKOMENDASI DARI BERBAGAI SUMBER
	* DAN TUTORIAL. MENGGUNAKAN SUB QUERY.
	* Ref: https://stackoverflow.com/questions/2135418/equivalent-of-limit-and-offset-for-sql-server
	*/
	protected function generic_pagination($order_by, $limit, $offset) {

		$this->db->select("ROW_NUMBER() OVER (ORDER BY $order_by) AS '__row_num__'");
		$sql  = "; WITH __result_cte__ AS (".$this->db->get_compiled_select().")";
		$sql .= " SELECT * FROM __result_cte__ WHERE __row_num__ BETWEEN ? AND ?;";
		// echo "<pre>".$this->db->compile_binds($sql, [$offset + 1, $offset + $limit + 1]);exit();

		$data = $this->db->query($sql, [$offset + 1, $offset + $limit + 1])->result();

		$has_next = count($data) == (1 + $limit);
		if($has_next) {
			array_pop($data);
		}

		return (Object) [
			'data'            => $data,
			'has_next'        => $has_next,
			'has_previous'    => $offset > 0,
			'next_offset'     => $offset + $limit,
			'previous_offset' => $offset - $limit,
		];
	}

	/*
	* Possibly @deprecated
	*/
	protected function wrap_pagination($data, $limit, $offset) {

		$has_next = count($data) == (1 + $limit);
		if($has_next) {
			array_pop($data);
		}

		$this->result = (Object) [
			'data'            => $data,
			'has_next'        => $has_next,
			'has_previous'    => $offset > 0,
			'next_offset'     => $offset + $limit,
			'previous_offset' => $offset - $limit,
		];

		return $this;
	}

	protected function check_db_error($throw = FALSE, $append_alert = TRUE) {

		$error = $this->db->error();

		if(((Int)$error['code']) !== 0) {
			$this->result = FALSE;
			if($throw) {
				throw new Exception($error['message'], $error['code']);
			}

			if($append_alert === TRUE) {
				$this->renderer->append_danger('Error: '.$error['code'], $error['message']);
			}
		}
		else {
			$this->result = TRUE;
		}

		return (Object) $error;
	}

	// HELPERS

	protected function current_timestamp() {
		return date('Y-m-d H:i:s');
	}

	protected function current_date() {
		return date('Y-m-d');
	}

	protected function current_time() {
		return date('H:i:s');
	}

	protected function search_query($search, $by) {
		if($search !== NULL) {
			$this->db->group_start();
			foreach ($by as $key) {
				$this->db->or_like($key, $search);
			}
			$this->db->group_end();
		}
		return $this->db;
	}

	protected function limit_query($limit, $offset = 0) {
		return $this->db->limit($limit + 1)->offset($offset);
	}
}