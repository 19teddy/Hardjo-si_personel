<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengguna extends MY_Controller {

	function __construct() {
		parent::__construct();
		$this->load->model('User_model', 'user_model');
		$this->load_master('role');
	}

	public function index() {
		
		if(! $this->is_logged(TRUE)) {
			return;
		}

		if($this->session->role !== 'Admin') {
			return $this->forbidden();
		}
		
		$paging_params = $this->paging_params(['nama', 'username', 'email', 'id_role']);

		$page_data = $this->user_model->get_page($paging_params);

		$this->renderer
			->title('Kelola User')
			->nav_index('pengguna')
			->data([
				'page_data' => $page_data,
				'roles' => $this->m_role->get_all(),
			])
			->content('pengguna')
			->render();
	}

	public function tambah() {
		
		if(! $this->is_logged(TRUE)) {
			return;
		}

		if($this->session->role !== 'Admin') {
			return $this->forbidden();
		}

		if($this->input->method() == 'post') {
			return $this->tambah_post();
		}

		$this->renderer
			->title('Tambah User')
			->nav_index('pengguna')
			->data([
				'is_edit' => FALSE,
				'roles' => $this->m_role->get_all(),
			])
			->content('pengguna-form')
			->render();
	}

	private function tambah_post() {

		$post_data = $this->input_sanitizer
			->method('post')
				->string('nama')
				->string('email')
				->integer('id_role')
				->string('username')
				->string('password')
				->value();

		$errors = [];
		$this->save_input($post_data);

		list($nama, $email, $id_role, $username, $password) = array_values($post_data);

		if(empty($nama)) {
			$errors['nama'] = 'Nama tidak boleh kosong';
		}

		if(empty($email)) {
			$errors['email'] = 'E-mail tidak boleh kosong';
		}

		if(empty($id_role)) {
			$errors['id_role'] = 'Role tidak boleh kosong';
		}

		if(empty($username)) {
			$errors['username'] = 'Username tidak boleh kosong';
		}

		if(empty($password)) {
			$errors['password'] = 'Password tidak boleh kosong';
		}

		if(! empty($errors)) {
			$this->set_alert(
				'danger',
				'Isian form tidak valid',
				$errors
			);
			redirect('pengguna/tambah');
		}

		if(preg_match('/^[a-z0-9_\-\.]+$/', $username) === 0) {
			$errors['username'] = 'Username tidak valid';
		}

		if(! empty($errors)) {
			$this->set_alert(
				'danger',
				'Isian form tidak valid',
				$errors
			);
			redirect('pengguna/tambah');
		}

		$nama = array_reduce(explode(' ', $nama), function($acc, $item) {
			
			return $acc . ($acc && $item ? ' ' : '') . $item;
		}, FALSE);

		$query_result = $this->user_model->insert($username, $nama, $email, $id_role, NULL, $password);

		if($query_result !== FALSE) {
			$this->set_alert(
				'success',
				'Berhasil ditambahkan'
			);
			redirect('pengguna');
		}
		else {
			$this->set_alert(
				'danger',
				'Tidak dapat memproses'
			);
			redirect('pengguna/tambah');
		}
	}

	public function edit($id_user = NULL) {
		
		if(! $this->is_logged(TRUE)) {
			return;
		}

		if($this->session->role !== 'Admin') {
			return $this->forbidden();
		}

		if(empty($id_user)) {
			return $this->not_found();
		}

		if($this->input->method() == 'post') {
			return $this->edit_post($id_user);
		}

		$user = $this->user_model->get_one($id_user);

		if(empty($user)) {
			return $this->not_found();
		}

		$this->renderer
			->title('Edit User')
			->nav_index('pengguna')
			->data([
				'is_edit' => TRUE,
				'form_data' => $user,
				'roles' => $this->m_role->get_all(),
			])
			->content('pengguna-form')
			->render();
	}

	private function edit_post($id_user) {

		$post_data = $this->input_sanitizer
			->method('post')
				->string('nama')
				->string('email')
				->integer('id_role')
				->string('username')
				->value();

		$errors = [];
		$this->save_input($post_data);

		list($nama, $email, $id_role, $username) = array_values($post_data);

		if(empty($nama)) {
			$errors['nama'] = 'Nama tidak boleh kosong';
		}

		if(empty($email)) {
			$errors['email'] = 'E-mail tidak boleh kosong';
		}

		if(empty($id_role)) {
			$errors['id_role'] = 'Role tidak boleh kosong';
		}

		if(empty($username)) {
			$errors['username'] = 'Username tidak boleh kosong';
		}

		if(! empty($errors)) {
			$this->set_alert(
				'danger',
				'Isian form tidak valid',
				$errors
			);
			redirect('pengguna/edit/'.$id_user);
		}

		if(preg_match('/^[a-z0-9_\-\.]+$/', $username) === 0) {
			$errors['username'] = 'Username tidak valid';
		}

		if(! empty($errors)) {
			$this->set_alert(
				'danger',
				'Isian form tidak valid',
				$errors
			);
			redirect('pengguna/edit/'.$id_user);
		}

		$nama = array_reduce(explode(' ', $nama), function($acc, $item) {
			
			return $acc . ($acc && $item ? ' ' : '') . $item;
		}, FALSE);

		$query_result = $this->user_model->update($id_user, $username, $nama, $email, $id_role);

		if($query_result !== FALSE) {
			$this->set_alert(
				'success',
				'Berhasil ditambahkan'
			);
			redirect('pengguna');
		}
		else {
			$this->set_alert(
				'danger',
				'Tidak dapat memproses'
			);
			redirect('pengguna/edit/'.$id_user);
		}
	}

	public function hapus() {
		
		if(! $this->is_logged(TRUE) || ! $this->post_only()) {
			return;
		}

		if($this->session->role !== 'Admin') {
			return $this->forbidden();
		}

		list($id_user) = $this->input_sanitizer->method('post')->integer('id')->value('list');

		$result = $this->user_model->delete($id_user);

		if($result === FALSE) {
			$this->renderer->append_warning('Gagal menghapus user');
		}

		redirect('pengguna');
	}
}