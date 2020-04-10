<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kenaikan_pangkat extends MY_Controller {

	function __construct() {
		parent::__construct();
		$this->load->model('Pegawai_model', 'pegawai_model');
		$this->load_master([
			'pangkat',
			'jabatan',
			'golongan',
		]);
	}

	public function index() {
		
		if(! $this->is_logged(TRUE)) {
			return;
		}

		if($this->session->role !== 'Admin') {
			return $this->forbidden();
		}
		
		$paging_params = $this->paging_params([
			'nrp',
			'nama',
			'tanggal_usul_kenaikan_pangkat',
			'id_pangkat',
			'id_jabatan',
			'id_golongan',
		]);

		$page_data = $this->pegawai_model->get_kenaikan_pangkat_page($paging_params);
		

		$this->renderer
			->title('Kenaikan Pangkat')
			->nav_index('kenaikan-pangkat')
			->data([
				'page_data' => $page_data,
				'pangkat_list' => $this->m_pangkat->get_all(),
				'jabatan_list' => $this->m_jabatan->get_all(),
				'golongan_list' => $this->m_golongan->get_all(),
			])
			->content('kenaikan-pangkat')
			->render();
	}
}