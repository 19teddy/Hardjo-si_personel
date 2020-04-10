<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends MY_Controller {

	function __construct() {
		parent::__construct();
		$this->load->model('User_model', 'user_model');
	}

	public function index() {

		$this->login();
	}

	public function aktivasi() {

		$token = $this->input->get('token');

		if(empty($token)) {
			return $this->forbidden();
		}

		$this->user_model->verification_account($token);
	}

	public function login() {
		
		if($this->is_logged())
		{
			return redirect('dashboard');
		}

		if($this->input->method() == 'get')
		{
			return $this->renderer
				->title('Login')
				->template('template-login')
				->render()
			;
		}

		$post_data = $this->input->post(['username', 'password']);
		$username = trim(strtolower($post_data['username']));
		$password = trim($post_data['password']);

		$errors = [];

		if(empty($username)) {
			$errors['username'] = 'Username tidak boleh kosong';
		}

		if(empty($password)) {
			$errors['pasword'] = 'Password tidak boleh kosong';
		}

		if(empty($errors)) {
			$result = $this->user_model->login($username, $password);

			if($result === TRUE) {
				$r = $this->input->get('r');
				$redirect_to = empty($r) ? 'dashboard' : urldecode($r);
				redirect($redirect_to);
			}
			elseif($result === FALSE) {
				$this->set_alert('danger', 'Password salah', ['password' => 'Password salah']);
			}
			elseif($result === NULL) {
				$this->set_alert('danger', 'User tidak ditemukan', ['username' => 'User tidak ditemukan']);
			}
		}
		else {
			$this->set_alert('danger', 'Form tidak lengkap', $errors);
		}

		redirect('user/login');
	}

	public function logout() {

		$this->session->sess_destroy();
		redirect('user/login');
	}

	public function ganti_password() {

		if(! $this->is_logged(TRUE)) {
			return;
		}

		if($this->input->method() == 'post') {
			return $this->ganti_password_post();
		}

		$this->renderer
			->title('Ganti Password')
			->content('ganti-password')
			->render();
	}

	private function ganti_password_post() {

		$post_data = $this->input->post([
			'old_password',
			'new_password',
			'confirm_password',
		]);

		$old_password = trim($post_data['old_password']);
		$new_password = trim($post_data['new_password']);
		$confirm_password = trim($post_data['confirm_password']);

		$errors = [];

		if(empty($old_password)) {
			$errors['old_password'] = 'Password lama harus diisi';
		}

		if(empty($new_password)) {
			$errors['new_password'] = 'Password baru harus diisi';
		}

		if(empty($confirm_password)) {
			$errors['confirm_password'] = 'Konfirmasi password harus diisi';
		}

		if(!empty($errors)) {

			$this->set_alert('danger', 'Formulir tidak lengkap', $errors);
		}
		else {

			if($confirm_password !== $new_password) {

				$this->set_alert(
					'danger',
					'Password baru dan konfirmasi tidak sama', [
						'new_password' => 'Password baru tidak sama',
						'confirm_password' => 'Password konfirmasi tidak sama',
					]
				);
			}

			$result = $this->user_model->ganti_password($old_password, $new_password);

			if($result === NULL) {
				$this->set_alert('danger', 'Gagal mengubah password');
			}
			elseif($result === FALSE) {
				$this->set_alert('danger', 'Password lama salah', ['old_password' => 'Passsword lama salah']);
			}
			else {
				$this->set_alert('success', 'Berhasil mengubah password');
			}
		}

		redirect('user/ganti-password');
	}
}