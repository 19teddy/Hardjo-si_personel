<?php

require_once APPPATH.'models/BaseModel.php';

class User_model extends BaseModel {

	// PAGING PARAMS:
	// Object consist of limit, offset, q
	public function get_page($paging_params) {

		$this->db
			->from('users a')
			->join('pegawai b', 'a.id_pegawai=b.id', 'left')
			->join('m_role c', 'a.id_role=c.id');

		$this->db
			->select([
				'a.id',
				'a.username',
				'a.id_role',
				'a.nama',
				'a.email',
				'a.id_pegawai',
				'b.nrp',
				'c.nama AS role',
			]);

		return $this->build_paging($paging_params, [
			'nama'     => ['a.nama', 'like'],
			'username' => ['a.username', 'like'],
			'email'    => ['a.email', 'like'],
			'id_role'  => ['a.id_role', 'where'],
		]);

		// return $this->generic_pagination('a.username', $limit, $offset);
	}

	public function get_one($id_user, $key = 'id') {

		$this->db
			->from('users a')
			->join('pegawai b', 'a.id_pegawai=b.id', 'left')
			->join('m_role c', 'a.id_role=c.id');

		$this->db
			->select([
				'a.id',
				'a.username',
				'a.id_role',
				'a.nama',
				'a.email',
				'a.id_pegawai',
				'b.nrp',
				'c.nama AS role',
			]);

		$this->db->where('a.'.$key, $id_user);

		return $this->db->get()->row();
	}

	public function insert($username, $nama, $email, $id_role, $password, $id_pegawai = NULL) {

		$password_hash = password_hash($password, PASSWORD_BCRYPT, [
			'cost' => $id_role == 1 ? 13 : 10
		]);

		$q = $this->db->insert('users', [
			'nama' => $nama,
			'username' => $username,
			'id_role' => $id_role,
			'email' => $email,
			'password_hash' => $password_hash,
			'id_pegawai' => $id_pegawai,
		]);

		return $q === FALSE ? FALSE : $this->db->insert_id();
	}

	public function update($id_user, $username, $nama, $email, $id_role) {

		$this->db->where('id', $id_user)->update('users', [
			'nama' => $nama,
			'username' => $username,
			'id_role' => $id_role,
			'email' => $email,
		]);

		return $q === FALSE ? FALSE : $this->db->affected_rows();
	}

	public function delete($id) {

		if(is_array($id)) {
			$this->db->where_in('id', $id);
		}
		else {
			$this->db->where('id', $id);
		}

		$this->db->delete('users');

		return $q === FALSE ? FALSE : $this->db->affected_rows();
	}

	public function login($username, $password) {

		$this->db
			->from('users AS a')
			->join('m_role AS e', 'a.id_role=e.id')
			->join('pegawai AS b', 'a.id_pegawai=b.id', 'left')
			->join('m_pangkat AS c', 'b.id_pangkat=c.id', 'left');

		$this->db
			->select([
				'a.id',
				'a.username',
				'a.password_hash',
				'a.id_role',
				'a.nama AS nama_user',
				'a.email',
				'a.id_pegawai',
				'b.nrp',
				'b.no_hp',
				'b.kesatuan',
				'b.nama AS nama_pegawai',
				'c.nama AS pangkat',
				'e.nama AS role',
			]);

		$user = $this->db->where('a.username', $username)->get()->row_array();
		$user['nama'] = $user['nama_pegawai'] ?? $user['nama_user'];

		if(empty($user)) {
			return NULL;
		}

		if(! password_verify($password, $user['password_hash'])) {
			return FALSE;
		}

		$user['is_logged'] = TRUE;
		$user['id_user'] = $user['id'];

		unset($user['password_hash']);

		$this->session->set_userdata($user);

		return TRUE;
	}

	public function ganti_password($old_password, $new_password) {

		$password_hash = $this->db
			->select('password_hash')
			->from('users')
			->where('id', $this->session->id_user)
			->limit(1)
			->get()->row('password_hash');

		if(empty($password_hash)) {
			return NULL;
		}

		if(!password_verify($old_password, $password_hash)) {
			return FALSE;
		}

		$q = $this->db
			->where('id', $this->session->id_user)
			->update('users', [
				'password_hash' => password_hash($new_password, PASSWORD_BCRYPT, [
					'cost' => $this->session->id_role == 1 ? 13 : 10
				]),
			]);

		$this->check_db_error();

		return $q === FALSE ? FALSE : $this->db->affected_rows();
	}

	public function verification_account($token_enc) {

		$this->load->library('encryption');

		$token = $this->encryption->decrypt($token_enc);

		$vt = $this->db->where([
			'token' => $token,
			'action' => 1
		])
		->get('validation_tokens')->row();

		if(empty($vt) || (!empty($vt->expiration_date) && date('Y-m-d') > $vt->expiration_date)) {
			return FALSE;
		}

		echo "<pre>";
		var_dump($vt);exit();
	}

	public function send_verification_email($id_user, $nama, $email) {

		$this->load->library('encryption');

		$token = bin2hex($this->security->get_random_bytes(16));

		$this->db->insert('validation_tokens', [
			'token' => $token,
			'id_user' => $id_user,
			'action' => 1,
		]);

		$data = [
			'token' => $this->encryption->encrypt($token),
			'nama' => $nama,
		];

		$view = $this->load->view('email/aktivasi', $data, TRUE);

		$config = Array(
			'protocol' => 'smtp',
			'smtp_host' => 'ssl://smtp.googlemail.com',
			'smtp_port' => 465,
			'smtp_user' => 'info@mediantarakreasindo.com', 
			'smtp_pass' => '10sembilandelapan',
			'mailtype'  => 'html', 
			'charset'   => 'utf-8'
		);
		$this->load->library('email', $config);

		$result = $this->email
			->set_newline("\r\n")
			->set_mailtype('html')
			->from('info@mediantarakreasindo.com', 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU')
			->to($email)
			->subject('Aktivasi Akun')
			->message($view)
			->send();
	}
}