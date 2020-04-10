<?php

require_once APPPATH.'models/BaseModel.php';

class Pegawai_model extends BaseModel {

	// PAGING PARAMS:
	// Object consist of limit, offset, q
	public function get_page($paging_params) {

		$this->db
			->from('pegawai a')
			->join('m_jabatan b', 'a.id_jabatan=b.id', 'left')
			->join('m_golongan c', 'a.id_golongan=c.id', 'left')
			->join('m_ruangan d', 'a.id_ruangan=d.id', 'left')
			->join('m_unit_kerja e', 'a.id_unit_kerja=e.id', 'left')
			->join('m_status_kepegawaian f', 'a.id_status_kepegawaian=e.id', 'left')
			->join('users g', 'a.id=g.id_pegawai', 'left');

		$this->db->select([
			'a.id',
			'a.nrp',
			'a.nama',
			'g.username',
			'a.id_jabatan',
			'a.id_golongan',
			'a.id_ruangan',
			'a.id_unit_kerja',
			'a.id_status_kepegawaian',
			'b.nama AS jabatan',
			'c.nama AS golongan',
			'd.nama AS ruangan',
			'e.nama AS unit_kerja',
			'f.nama AS status_kepegawaian',
		]);

		return $this->build_paging($paging_params, [
			'nrp'                   => ['a.nrp', 'like'],
			'nama'                  => ['a.nama', 'like'],
			'username'              => ['g.username', 'like'],
			'jabatan'               => ['b.nama', 'like'],
			'id_golongan'           => ['a.id_golongan', 'where'],
			'id_ruangan'            => ['a.id_ruangan', 'where'],
			'id_unit_kerja'         => ['a.id_unit_kerja', 'where'],
			'id_status_kepegawaian' => ['a.id_status_kepegawaian', 'where'],
		]);
	}

	public function insert_riwayat_hidup($fields) {

		$this->load->model('master/M_jabatan_model', 'm_jabatan');
		$this->load->model('master/M_suku_model', 'm_suku');
		$this->load->model('master/M_kota_model', 'm_kota');

		$final_fields = [
			'nama'                 => $fields['nama'],
			'id_pangkat'           => $fields['id_pangkat'],
			'id_bagian'            => $fields['id_bagian'],
			'nrp'                  => $fields['nrp'],
			'asal_masuk'           => $fields['asal_masuk'],
			'id_dikmilti'          => $fields['id_dikmilti'],
			'id_dikumti'           => $fields['id_dikumti'],
			'id_jabatan'           => $this->m_jabatan->insert_if_not_exist($fields['jabatan']),
			'id_grade'             => $fields['id_grade'],
			'tanggal_masuk'        => $fields['tanggal_masuk'],
			'tmt_dikmilti'         => $fields['tmt_dikmilti'],
			'tmt_dikumti'          => $fields['tmt_dikumti'],
			'id_golongan'          => $fields['id_golongan'],
			'tanggal_lahir'        => $fields['tanggal_lahir'],
			'id_suku'              => $this->m_suku->insert_if_not_exist($fields['suku']),
			'tinggi_badan'         => $fields['tinggi_badan'],
			'id_jenis_kelamin'     => $fields['id_jenis_kelamin'],
			'id_agama'             => $fields['id_agama'],
			'berat_badan'          => $fields['berat_badan'],
			'id_golongan_darah'    => $fields['id_golongan_darah'],
			'id_status_pernikahan' => $fields['id_status_pernikahan'],
			'alamat'               => $fields['alamat'],
			'id_kota'              => $this->m_kota->insert_if_not_exist($fields['kota']),
			'no_hp'                => $fields['no_hp'],
			'photo_filename'       => $fields['photo_filename'],
			'kesatuan'             => 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU',
			'kotama'               => 'MABESAU',
		];

		$this->db->insert('pegawai', $final_fields);

		echo "<pre>";
		var_dump($final_fields);exit();
	}
}