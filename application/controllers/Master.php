<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Master extends MY_Controller {

	public function dikmilti($method = NULL) {

		$this->generic_handle('dikmilti', 'Data DIKMILTI', $method);
	}

	public function dikumti($method = NULL) {

		$this->generic_handle('dikumti', 'Data DIKUMTI', $method);
	}

	public function golongan($method = NULL) {

		$this->generic_handle('golongan', 'Data Golongan', $method);
	}

	public function grade($method = NULL) {

		$this->generic_handle('grade', 'Data Grade', $method);
	}

	public function hubungan_keluarga($method = NULL) {

		$this->generic_handle('hubungan_keluarga', 'Data Hubungan Keluarga', $method);
	}

	public function jabatan($method = NULL) {

		$this->generic_handle('jabatan', 'Data Jabatan', $method);
	}

	public function pangkat($method = NULL) {

		$this->generic_handle('pangkat', 'Data Pangkat', $method);
	}

	public function status_pernikahan($method = NULL) {

		$this->generic_handle('status_pernikahan', 'Data Status Pernikahan', $method);
	}

	private function generic_handle($master, $title, $method) {
		
		if(! $this->is_logged(TRUE)) {
			return;
		}

		if($this->session->role !== 'Admin') {
			return $this->forbidden();
		}

		if($this->input->method() == 'post') {

			return $this->generic_post($master, $method);
		}
		
		$paging_params = $this->paging_params(['nama']);

		$this->load_master($master);
		$page_data = $this->{'m_'.$master}->get_page($paging_params);

		$this->renderer
			->title($title)
			->nav_index(['master', $master])
			->data([
				'key' => $master,
				'title' => $title,
				'page_data' => $page_data,
			])
			->content('master')
			->render();
	}

	private function generic_post($master, $method) {

		$form_data = $this->input_sanitizer->method('post')
			->integer('id')
			->string('nama')
			->value();

		$this->load_master($master);
		if(empty($form_data['id'])) {
			$this->{'m_'.$master}->insert_if_not_exist($form_data['nama']);
		}
		else {
			if($method == 'hapus') {
				$this->{'m_'.$master}->delete($form_data['id']);
			}
			else {
				$this->{'m_'.$master}->update($form_data['id'], $form_data['nama']);
			}
		}

		redirect('master/'.$master);
	}
}
