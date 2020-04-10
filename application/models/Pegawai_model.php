<?php

require_once APPPATH.'models/BaseModel.php';

class Pegawai_model extends BaseModel {

	function __construct() {
		parent::__construct();
		$this->load->library('input_sanitizer');
	}

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
			->join('users g', 'a.id=g.id_pegawai', 'left')
			->join('m_pangkat h', 'a.id_pangkat=h.id', 'left');

		$this->db->select([
			'a.id',
			'a.nrp',
			'a.nama',
			'g.username',
			'a.id_jabatan',
			'a.id_golongan',
			'a.id_ruangan',
			'a.id_unit_kerja',
			'a.id_pangkat',
			'a.id_status_kepegawaian',
			'b.nama AS jabatan',
			'c.nama AS golongan',
			'd.nama AS ruangan',
			'e.nama AS unit_kerja',
			'f.nama AS status_kepegawaian',
			'h.nama AS pangkat',
		]);

		return $this->build_paging($paging_params, [
			'nrp'                   => ['a.nrp', 'like'],
			'nama'                  => ['a.nama', 'like'],
			'username'              => ['g.username', 'like'],
			'jabatan'               => ['b.nama', 'like'],
			'id_golongan'           => ['a.id_golongan', 'where'],
			'id_ruangan'            => ['a.id_ruangan', 'where'],
			'id_unit_kerja'         => ['a.id_unit_kerja', 'where'],
			'id_pangkat'            => ['a.id_pangkat', 'where'],
			'id_status_kepegawaian' => ['a.id_status_kepegawaian', 'where'],
		]);
	}

	public function get_kenaikan_pangkat_page($paging_params) {

		$this->db
			->from('pegawai a')
			->join('m_jabatan b', 'a.id_jabatan=b.id', 'left')
			->join('m_pangkat d', 'a.id_pangkat=d.id', 'left')
			->join('m_pangkat e', 'a.id_kenaikan_pangkat=e.id', 'left');

		$this->db->select([
			'a.id',
			'a.nrp',
			'a.nama',
			'a.id_jabatan',
			'a.id_pangkat',
			'a.id_kenaikan_pangkat',
			'a.tanggal_usul_kenaikan_pangkat',
			'b.nama AS jabatan',
			'd.nama AS pangkat',
			'e.nama AS kenaikan_pangkat',
		]);

		$this->db
			->where('a.tanggal_usul_kenaikan_pangkat IS NOT NULL')
			->order_by('a.tanggal_usul_kenaikan_pangkat DESC, a.nama');

		return $this->build_paging($paging_params, [
			'nrp'         => ['a.nrp', 'like'],
			'nama'        => ['a.nama', 'like'],
			'id_pangkat'  => ['a.id_pangkat', 'where'],
			'id_jabatan'  => ['a.id_jabatan', 'where'],
			'id_kenaikan_pangkat' => ['a.id_kenaikan_pangkat', 'where'],
			'tanggal_usul_kenaikan_pangkat' => ['a.tanggal_usul_kenaikan_pangkat', 'where'],
		]);
	}

	public function get_one($id_pegawai) {

		$this->db
			->from('pegawai a')
			->join('m_pangkat b', 'a.id_pangkat=b.id', 'left')
			->join('m_bagian c', 'a.id_bagian=c.id', 'left')
			->join('m_dikmilti d', 'a.id_dikmilti=d.id', 'left')
			->join('m_dikumti e', 'a.id_dikumti=e.id', 'left')
			->join('m_jabatan f', 'a.id_jabatan=f.id', 'left')
			->join('m_grade g', 'a.id_grade=g.id', 'left')
			->join('m_golongan h', 'a.id_golongan=h.id', 'left')
			->join('m_suku i', 'a.id_suku=i.id', 'left')
			->join('m_jenis_kelamin j', 'a.id_jenis_kelamin=j.id', 'left')
			->join('m_golongan_darah k', 'a.id_golongan_darah=k.id', 'left')
			->join('m_status_pernikahan l', 'a.id_status_pernikahan=l.id', 'left')
			->join('m_kota m', 'a.id_kota=m.id', 'left')
			->join('m_spesialis n', 'a.id_spesialis=n.id', 'left')
			->join('m_profesi o', 'a.id_profesi=o.id', 'left')
			->join('users p', 'a.id=p.id_pegawai')
			->join('m_agama q', 'a.id_agama=q.id', 'left');

		$this->db->select([
			'a.nama',
			'a.id_pangkat',
			'a.id_bagian',
			'a.nrp',
			'a.asal_masuk',
			'a.id_dikmilti',
			'a.id_dikumti',
			'a.id_jabatan',
			'a.id_grade',
			'a.dikumti_teks',
			'a.tanggal_masuk',
			'a.tmt_dikmilti',
			'a.tmt_dikumti',
			'a.id_golongan',
			'a.tanggal_lahir',
			'a.tanggal_usul_kenaikan_pangkat',
			'a.id_suku',
			'a.tinggi_badan',
			'a.id_jenis_kelamin',
			'a.id_agama',
			'a.berat_badan',
			'a.id_golongan_darah',
			'a.id_status_pernikahan',
			'a.alamat',
			'a.id_kota',
			'a.no_hp',
			'a.photo_filename',
			'a.kesatuan',
			'a.kotama',
			'a.photo_filename',
			'a.id_kenaikan_pangkat',
			'b.nama AS pangkat',
			'c.nama AS bagian',
			'd.nama AS dikmilti',
			'e.nama AS dikumti',
			'f.nama AS jabatan',
			'g.nama AS grade',
			'h.nama AS golongan',
			'i.nama AS suku',
			'j.nama AS jenis_kelamin',
			'k.nama AS golongan_darah',
			'l.nama AS status_pernikahan',
			'm.nama AS kota',
			'n.nama AS spesialis',
			'o.nama AS profesi',
			'p.email',
			'q.nama AS agama',
		]);

		$row = $this->db->where('a.id', $id_pegawai)->get()->row();

		if(empty($row)) {
			return NULL;
		}

		$row->riwayat_jabatan = $this->db
			->from('riwayat_jabatan a')
			->join('m_jabatan b', 'a.id_jabatan=b.id', 'left')
			->join('m_status_jabatan c', 'a.id_status_jabatan=c.id', 'left')
			->select([
				'a.id',
				'a.id_jabatan',
				'a.id_status_jabatan',
				'a.tmt',
				'a.tanggal_keputusan',
				'a.satuan',
				'a.no_keputusan',
				'b.nama AS jabatan',
				'c.nama AS status_jabatan',
			])
			->where('a.id_pegawai', $id_pegawai)
			->get()->result_array();

		$row->riwayat_pangkat = $this->db
			->from('riwayat_pangkat a')
			->join('m_pangkat b', 'a.id_pangkat=b.id', 'left')
			->select([
				'a.id',
				'a.id_pangkat',
				'a.tmt',
				'b.nama AS pangkat',
			])
			->where('a.id_pegawai', $id_pegawai)
			->get()->result_array();

		$row->riwayat_pendidikan_militer = $this->db
			->from('riwayat_pendidikan_militer a')
			->select([
				'a.id',
				'a.tahun_masuk',
				'a.tahun_keluar',
				'a.angkatan',
				'a.tmt',
				'a.sekolah',
			])
			->where('a.id_pegawai', $id_pegawai)
			->get()->result_array();

		$row->riwayat_pendidikan_umum = $this->db
			->from('riwayat_pendidikan_umum a')
			->select([
				'a.id',
				'a.tahun_masuk',
				'a.tahun_keluar',
				'a.lemdik',
				'a.sekolah',
			])
			->where('a.id_pegawai', $id_pegawai)
			->get()->result_array();

		$row->riwayat_penugasan = $this->db
			->from('riwayat_penugasan a')
			// ->join('m_pangkat b', 'a.pangkat=b.id', 'left')
			->select([
				'a.id',
				'a.pangkat',
				'a.mulai_tanggal',
				'a.sampai_tanggal',
				'a.lokasi_penempatan',
			])
			->where('a.id_pegawai', $id_pegawai)
			->get()->result_array();

		$row->riwayat_tanda_jasa = $this->db
			->from('riwayat_tanda_jasa a')
			->select([
				'a.id',
				'a.tahun_perolehan',
				'a.nama_penghargaan',
				'a.negara_pemberi',
			])
			->where('a.id_pegawai', $id_pegawai)
			->get()->result_array();

		$row->data_keluarga = $this->db
			->from('data_keluarga a')
			->join('m_agama b', 'a.id_agama=b.id')
			->join('m_hubungan_keluarga c', 'a.id_hubungan_keluarga=c.id')
			->join('m_jenis_kelamin d', 'a.id_jenis_kelamin=d.id')
			// ->join('m_kota e', 'a.id_tempat_lahir=e.id')
			// ->join('m_kota f', 'a.id_tempat_menikah=f.id')
			// ->join('m_suku g', 'a.id_suku=g.id')
			->join('m_status_kehidupan h', 'a.id_status_kehidupan=h.id')
			->join('m_status_pernikahan i', 'a.id_status_pernikahan=i.id')
			->join('m_status_tertanggung j', 'a.id_status_tertanggung=j.id')
			->select([
				'a.id',
				'a.id_agama',
				'a.id_hubungan_keluarga',
				'a.id_jenis_kelamin',
				'a.id_tempat_lahir',
				'a.id_tempat_menikah',
				'a.id_suku',
				'a.id_status_kehidupan',
				'a.id_status_pernikahan',
				'a.id_status_tertanggung',
				'a.tanggal_lahir',
				'a.tanggal_menikah',
				'a.nama',
				'a.alamat',
				'a.tempat_menikah',
				'a.pekerjaan',
				'b.nama AS agama',
				'c.nama AS hubungan_keluarga',
				'd.nama AS jenis_kelamin',
				'a.id_tempat_lahir AS tempat_lahir',
				'a.id_tempat_menikah AS tempat_menikah',
				'a.id_suku AS suku',
				'h.nama AS status_kehidupan',
				'i.nama AS status_pernikahan',
				'j.nama AS status_tertanggung',
			])
			->where('a.id_pegawai', $id_pegawai)
			->get()->result_array();
		// echo '<pre>'; print_r($row->riwayat_jabatan); die();

		return $row;
	}

	public function count_personil() {
		$q = $this->db->count_all('pegawai');

		if(!empty($q)) {
			return $q;
		}
		else{
			return 0;
		}
	}

	public function insert_riwayat_hidup($fields) {

		$final_fields = $fields;

		$this->load->model('master/M_jabatan_model', 'm_jabatan');
		$this->load->model('master/M_suku_model', 'm_suku');
		$this->load->model('master/M_kota_model', 'm_kota');
		$this->load->model('master/M_profesi_model', 'm_profesi');
		$this->load->model('master/M_spesialis_model', 'm_spesialis');

		unset(
			$final_fields['jabatan'],
			$final_fields['suku'],
			$final_fields['kota'],
			$final_fields['riwayat_jabatan'],
			$final_fields['profesi'],
			$final_fields['spesialis'],
			$final_fields['email'],
			$final_fields['riwayat_pangkat'],
			$final_fields['riwayat_pendidikan_militer'],
			$final_fields['riwayat_pendidikan_umum'],
			$final_fields['riwayat_penugasan'],
			$final_fields['riwayat_tanda_jasa'],
			$final_fields['data_keluarga']
		);

		$final_fields['id_jabatan']   = empty($fields['jabatan']) ? NULL : $this->m_jabatan->insert_if_not_exist($fields['jabatan']);
		$final_fields['id_suku']      = empty($fields['suku']) ? NULL : $this->m_suku->insert_if_not_exist($fields['suku']);
		$final_fields['id_kota']      = empty($fields['kota']) ? NULL : $this->m_kota->insert_if_not_exist($fields['kota']);
		$final_fields['id_profesi']   = empty($fields['profesi']) ? NULL : $this->m_profesi->insert_if_not_exist($fields['profesi']);
		$final_fields['id_spesialis'] = empty($fields['spesialis']) ? NULL : $this->m_spesialis->insert_if_not_exist($fields['spesialis']);
		$final_fields['kesatuan']     = 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU';
		$final_fields['kotama']       = 'MABESAU';
		$final_fields['id_status_kepegawaian'] = 1;

		$this->db->trans_start();

		$q = $this->db->insert('pegawai', $final_fields);

		if(!$q) {
			$this->db->trans_complete();
			return FALSE;
		}

		$id_pegawai = $this->db->insert_id();

		$this->insert_childrens($id_pegawai, $fields);

		$q = $this->db->insert('users', [
			'nama' => $fields['nama'],
			'username' => $fields['nrp'],
			'email' => $fields['email'],
			'id_role' => 2,
			'id_pegawai' => $id_pegawai,
			'id_status_aktivasi' => 1,
		]);
		$id_user = $this->db->insert_id();

		$this->db->trans_complete();

		$q = $this->db->trans_status();

		if($q !== FALSE) {
			$this->load->model('User_model', 'user_model');
			$this->user_model->send_verification_email($id_user, $fields['nama'], $fields['email']);
		}

		return $id_pegawai;
	}

	public function update_riwayat_hidup($id_pegawai, $fields) {

		$final_fields = $fields;

		$this->load->model('master/M_jabatan_model', 'm_jabatan');
		$this->load->model('master/M_suku_model', 'm_suku');
		$this->load->model('master/M_kota_model', 'm_kota');
		$this->load->model('master/M_profesi_model', 'm_profesi');
		$this->load->model('master/M_spesialis_model', 'm_spesialis');

		unset(
			$final_fields['email'],
			$final_fields['jabatan'],
			$final_fields['suku'],
			$final_fields['kota'],
			$final_fields['riwayat_jabatan'],
			$final_fields['profesi'],
			$final_fields['spesialis'],
			$final_fields['riwayat_pangkat'],
			$final_fields['riwayat_pendidikan_militer'],
			$final_fields['riwayat_pendidikan_umum'],
			$final_fields['riwayat_penugasan'],
			$final_fields['riwayat_tanda_jasa'],
			$final_fields['data_keluarga']
		);

		$final_fields['id_jabatan']   = $this->m_jabatan->insert_if_not_exist($fields['jabatan']);
		$final_fields['id_suku']      = $this->m_suku->insert_if_not_exist($fields['suku']);
		$final_fields['id_kota']      = $this->m_kota->insert_if_not_exist($fields['kota']);
		$final_fields['id_profesi']   = $this->m_profesi->insert_if_not_exist($fields['profesi']);
		$final_fields['id_spesialis'] = $this->m_spesialis->insert_if_not_exist($fields['spesialis']);

		if(!empty($fields['photo_filename'])) {
			$final_fields['photo_filename'] = $fields['photo_filename'];
		}

		$this->db->trans_start();

		$this->db->where('id', $id_pegawai)->update('pegawai', $final_fields);

		$this->db->where('id_pegawai', $id_pegawai)->update('users', [
			'nama' => $final_fields['nama'],
			'username' => $final_fields['nrp'],
			'email' => $fields['email'],
		]);

		// $this->db->where('id_pegawai', $id_pegawai)->delete('riwayat_jabatan');
		// $this->db->where('id_pegawai', $id_pegawai)->delete('riwayat_pangkat');
		// $this->db->where('id_pegawai', $id_pegawai)->delete('riwayat_pendidikan_militer');
		// $this->db->where('id_pegawai', $id_pegawai)->delete('riwayat_pendidikan_umum');
		// $this->db->where('id_pegawai', $id_pegawai)->delete('riwayat_penugasan');
		// $this->db->where('id_pegawai', $id_pegawai)->delete('riwayat_tanda_jasa');
		// $this->db->where('id_pegawai', $id_pegawai)->delete('data_keluarga');

		// $this->insert_childrens($id_pegawai, $fields);

		$this->db->trans_complete();

		return $this->db->trans_status();
	}

	public function insert_childrens($id_pegawai, $fields) {

		if(!empty($fields['riwayat_pendidikan_umum'])) {

			$sql = "INSERT INTO riwayat_pendidikan_umum (id_pegawai, tahun_masuk, tahun_keluar, lemdik, sekolah) VALUES ";
			foreach ($fields['riwayat_pendidikan_umum']['tahun_masuk'] as $key => $value) {
				$sql .= $this->db->compile_binds('(?,?,?,?,?),', [
					$id_pegawai,
					$fields['riwayat_pendidikan_umum']['tahun_masuk'][$key],
					$fields['riwayat_pendidikan_umum']['tahun_keluar'][$key],
					$fields['riwayat_pendidikan_umum']['lemdik'][$key],
					$fields['riwayat_pendidikan_umum']['sekolah'][$key],
				]);
			}
			$sql = rtrim($sql, ',').';';
			$this->db->query($sql);
		}

		if(!empty($fields['riwayat_pendidikan_militer'])) {
			$sql = "INSERT INTO riwayat_pendidikan_militer (id_pegawai, tahun_masuk, tahun_keluar, angkatan, tmt, sekolah) VALUES ";
			foreach ($fields['riwayat_pendidikan_militer']['tahun_masuk'] as $key => $value) {
				$sql .= $this->db->compile_binds('(?,?,?,?,?,?),', [
					$id_pegawai,
					$fields['riwayat_pendidikan_militer']['tahun_masuk'][$key],
					$fields['riwayat_pendidikan_militer']['tahun_keluar'][$key],
					$fields['riwayat_pendidikan_militer']['angkatan'][$key],
					change_format($fields['riwayat_pendidikan_militer']['tmt'][$key], 'Y-m-d'),
					$fields['riwayat_pendidikan_militer']['sekolah'][$key],
				]);
			}
			$sql = rtrim($sql, ',').';';
			$this->db->query($sql);
		}

		if(!empty($fields['riwayat_penugasan'])) {
			$sql = "INSERT INTO riwayat_penugasan (id_pegawai, pangkat,  sampai_tanggal, lokasi_penempatan) VALUES ";
			foreach ($fields['riwayat_penugasan']['pangkat'] as $key => $value) {
				$sql .= $this->db->compile_binds('(?,?,?,?),', [
					$id_pegawai,
					$fields['riwayat_penugasan']['pangkat'][$key],
					// change_format($fields['riwayat_penugasan']['mulai_tanggal'][$key], 'Y-m-d'),
					change_format($fields['riwayat_penugasan']['sampai_tanggal'][$key], 'Y-m-d'),
					$fields['riwayat_penugasan']['lokasi_penempatan'][$key],
				]);
			}
			$sql = rtrim($sql, ',').';';
			$this->db->query($sql);
		}

		if(!empty($fields['riwayat_tanda_jasa'])) {
			$sql = "INSERT INTO riwayat_tanda_jasa (id_pegawai,  nama_penghargaan, negara_pemberi) VALUES ";
			foreach ($fields['riwayat_tanda_jasa']['nama_penghargaan'] as $key => $value) {
				$sql .= $this->db->compile_binds('(?,?,?),', [
					$id_pegawai,
					// $fields['riwayat_tanda_jasa']['tahun_perolehan'][$key],
					$fields['riwayat_tanda_jasa']['nama_penghargaan'][$key],
					$fields['riwayat_tanda_jasa']['negara_pemberi'][$key],
				]);
			}
			$sql = rtrim($sql, ',').';';
			$this->db->query($sql);
		}

		if(!empty($fields['riwayat_jabatan'])) {
			$sql = "INSERT INTO riwayat_jabatan (id_pegawai, id_jabatan, id_status_jabatan, tmt, tanggal_keputusan, satuan, no_keputusan) VALUES ";
			foreach ($fields['riwayat_jabatan']['jabatan'] as $key => $value) {
				$sql .= $this->db->compile_binds('(?,?,?,?,?,?,?),', [
					$id_pegawai,
					$this->m_jabatan->insert_if_not_exist($fields['riwayat_jabatan']['jabatan'][$key]),
					$fields['riwayat_jabatan']['id_status_jabatan'][$key],
					change_format($fields['riwayat_jabatan']['tmt'][$key], 'Y-m-d'),
					change_format($fields['riwayat_jabatan']['tanggal_keputusan'][$key], 'Y-m-d'),
					$fields['riwayat_jabatan']['satuan'][$key],
					$fields['riwayat_jabatan']['no_keputusan'][$key],
				]);
			}
			$sql = rtrim($sql, ',').';';
			$this->db->query($sql);
		}

		if(!empty($fields['riwayat_pangkat'])) {
			$sql = "INSERT INTO riwayat_pangkat (id_pegawai, tmt, id_pangkat) VALUES ";
			foreach ($fields['riwayat_pangkat']['tmt'] as $key => $value) {
				$sql .= $this->db->compile_binds('(?,?,?),', [
					$id_pegawai,
					change_format($fields['riwayat_pangkat']['tmt'][$key], 'Y-m-d'),
					$fields['riwayat_pangkat']['id_pangkat'][$key],
				]);
			}
			$sql = rtrim($sql, ',').';';
			$this->db->query($sql);
		}

		if(!empty($fields['data_keluarga'])) {
			$sql = "INSERT INTO data_keluarga (id_pegawai, id_agama, id_hubungan_keluarga, id_jenis_kelamin, id_tempat_lahir, id_tempat_menikah, id_suku, id_status_kehidupan, id_status_pernikahan, id_status_tertanggung, tanggal_lahir, tanggal_menikah, nama, alamat, tempat_menikah, pekerjaan) VALUES ";
			foreach ($fields['data_keluarga']['id_agama'] as $key => $value) {
				$sql .= $this->db->compile_binds('(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?),', [
					$id_pegawai,
					$fields['data_keluarga']['id_agama'][$key],
					$fields['data_keluarga']['id_hubungan_keluarga'][$key],
					$fields['data_keluarga']['id_jenis_kelamin'][$key],
					$fields['data_keluarga']['tempat_lahir'][$key],
					$fields['data_keluarga']['tempat_menikah'][$key],
					$fields['data_keluarga']['suku'][$key],
					$fields['data_keluarga']['id_status_kehidupan'][$key],
					$fields['data_keluarga']['id_status_pernikahan'][$key],
					$fields['data_keluarga']['id_status_tertanggung'][$key],
					$this->input_sanitizer->sanitize_date($fields['data_keluarga']['tanggal_lahir'][$key]),
					$this->input_sanitizer->sanitize_date($fields['data_keluarga']['tanggal_menikah'][$key]),
					$fields['data_keluarga']['nama'][$key],
					$fields['data_keluarga']['alamat'][$key],
					$fields['data_keluarga']['tempat_menikah'][$key],
					$fields['data_keluarga']['pekerjaan'][$key],
				]);
			}
			$sql = rtrim($sql, ',').';';
			$this->db->query($sql);
		}
	}

	public function update_pendidikan_umum($id_pegawai, $fields) {
		if($fields['riwayat_pendidikan_umum'] == null) {

			$q = $this->db->where('id_pegawai', $id_pegawai)->delete('riwayat_pendidikan_umum');
		    return $q;
		}
		else if(!empty($fields['riwayat_pendidikan_umum'])) {

			$this->db->where('id_pegawai', $id_pegawai)->delete('riwayat_pendidikan_umum');

			$sql = "INSERT INTO riwayat_pendidikan_umum (id_pegawai, tahun_masuk, tahun_keluar, lemdik, sekolah) VALUES ";
			foreach ($fields['riwayat_pendidikan_umum']['tahun_masuk'] as $key => $value) {
				$sql .= $this->db->compile_binds('(?,?,?,?,?),', [
					$id_pegawai,
					$fields['riwayat_pendidikan_umum']['tahun_masuk'][$key],
					$fields['riwayat_pendidikan_umum']['tahun_keluar'][$key],
					$fields['riwayat_pendidikan_umum']['lemdik'][$key],
					$fields['riwayat_pendidikan_umum']['sekolah'][$key],
				]);
			}
			$sql = rtrim($sql, ',').';';
			$this->db->query($sql);
		}
	
	}

	public function update_pendidikan_militer($id_pegawai, $fields) {
		if($fields['riwayat_pendidikan_militer'] == null) {

			$q = $this->db->where('id_pegawai', $id_pegawai)->delete('riwayat_pendidikan_militer');
		    return $q;
		}
		else if(!empty($fields['riwayat_pendidikan_militer'])) {
			$this->db->where('id_pegawai', $id_pegawai)->delete('riwayat_pendidikan_militer');

			$sql = "INSERT INTO riwayat_pendidikan_militer (id_pegawai, tahun_masuk, tahun_keluar, angkatan, tmt, sekolah) VALUES ";
			foreach ($fields['riwayat_pendidikan_militer']['tahun_masuk'] as $key => $value) {
				$sql .= $this->db->compile_binds('(?,?,?,?,?,?),', [
					$id_pegawai,
					$fields['riwayat_pendidikan_militer']['tahun_masuk'][$key],
					$fields['riwayat_pendidikan_militer']['tahun_keluar'][$key],
					$fields['riwayat_pendidikan_militer']['angkatan'][$key],
					change_format($fields['riwayat_pendidikan_militer']['tmt'][$key], 'Y-m-d'),
					$fields['riwayat_pendidikan_militer']['sekolah'][$key],
				]);
			}
			$sql = rtrim($sql, ',').';';
			$this->db->query($sql);
		}
	
	}

	public function update_riwayat_pangkat($id_pegawai, $fields) {
		if($fields['riwayat_pangkat'] == null) {

			$q = $this->db->where('id_pegawai', $id_pegawai)->delete('riwayat_pangkat');
		    return $q;
		}
		else if(!empty($fields['riwayat_pangkat'])) {
			$this->db->where('id_pegawai', $id_pegawai)->delete('riwayat_pangkat');
			$sql = "INSERT INTO riwayat_pangkat (id_pegawai, tmt, id_pangkat) VALUES ";
			foreach ($fields['riwayat_pangkat']['tmt'] as $key => $value) {
				$sql .= $this->db->compile_binds('(?,?,?),', [
					$id_pegawai,
					change_format($fields['riwayat_pangkat']['tmt'][$key], 'Y-m-d'),
					$fields['riwayat_pangkat']['id_pangkat'][$key],
				]);
			}
			$sql = rtrim($sql, ',').';';
			$this->db->query($sql);
		}
	
	}

	public function update_riwayat_jabatan($id_pegawai, $fields) {
		if($fields['riwayat_jabatan'] == null) {

			$q = $this->db->where('id_pegawai', $id_pegawai)->delete('riwayat_jabatan');
		    return $q;
		}
		else if(!empty($fields['riwayat_jabatan'])) {
			$this->db->where('id_pegawai', $id_pegawai)->delete('riwayat_jabatan');
			$sql = "INSERT INTO riwayat_jabatan (id_pegawai, id_jabatan, id_status_jabatan, tmt, tanggal_keputusan, satuan, no_keputusan) VALUES ";
			foreach ($fields['riwayat_jabatan']['jabatan'] as $key => $value) {
				$sql .= $this->db->compile_binds('(?,?,?,?,?,?,?),', [
					$id_pegawai,
					$this->m_jabatan->insert_if_not_exist($fields['riwayat_jabatan']['jabatan'][$key]),
					$fields['riwayat_jabatan']['id_status_jabatan'][$key],
					change_format($fields['riwayat_jabatan']['tmt'][$key], 'Y-m-d'),
					change_format($fields['riwayat_jabatan']['tanggal_keputusan'][$key], 'Y-m-d'),
					$fields['riwayat_jabatan']['satuan'][$key],
					$fields['riwayat_jabatan']['no_keputusan'][$key],
				]);
			}
			$sql = rtrim($sql, ',').';';
			$this->db->query($sql);
		}
	
	}

	public function update_riwayat_penugasan($id_pegawai, $fields) {
		if($fields['riwayat_penugasan'] == null) {

			$q = $this->db->where('id_pegawai', $id_pegawai)->delete('riwayat_penugasan');
		    return $q;
		}
		else if(!empty($fields['riwayat_penugasan'])) {
			$this->db->where('id_pegawai', $id_pegawai)->delete('riwayat_penugasan');
			$sql = "INSERT INTO riwayat_penugasan (id_pegawai, pangkat,  sampai_tanggal, lokasi_penempatan) VALUES ";
			foreach ($fields['riwayat_penugasan']['pangkat'] as $key => $value) {
				$sql .= $this->db->compile_binds('(?,?,?,?),', [
					$id_pegawai,
					$fields['riwayat_penugasan']['pangkat'][$key],
					// change_format($fields['riwayat_penugasan']['mulai_tanggal'][$key], 'Y-m-d'),
					change_format($fields['riwayat_penugasan']['sampai_tanggal'][$key], 'Y-m-d'),
					$fields['riwayat_penugasan']['lokasi_penempatan'][$key],
				]);
			}
			$sql = rtrim($sql, ',').';';
			$this->db->query($sql);
		}
	
	}

	public function update_riwayat_tanda_jasa($id_pegawai, $fields) {

		if($fields['riwayat_tanda_jasa'] == null) {

			$q = $this->db->where('id_pegawai', $id_pegawai)->delete('riwayat_tanda_jasa');
		    return $q;
		}
		else if(!empty($fields['riwayat_tanda_jasa'])) {
			$this->db->where('id_pegawai', $id_pegawai)->delete('riwayat_tanda_jasa');
			$sql = "INSERT INTO riwayat_tanda_jasa (id_pegawai,  nama_penghargaan) VALUES ";
			foreach ($fields['riwayat_tanda_jasa']['nama_penghargaan'] as $key => $value) {
				$sql .= $this->db->compile_binds('(?,?),', [
					$id_pegawai,
					$fields['riwayat_tanda_jasa']['nama_penghargaan'][$key],
				]);
			}
			$sql = rtrim($sql, ',').';';
			$this->db->query($sql);
		}
	
	}

	public function update_data_keluarga($id_pegawai, $fields) {
		if($fields['data_keluarga'] == null) {

			$q = $this->db->where('id_pegawai', $id_pegawai)->delete('data_keluarga');
		    return $q;
		}
		else if(!empty($fields['data_keluarga'])) {

			$this->db->where('id_pegawai', $id_pegawai)->delete('data_keluarga');
			$this->db->join('m_suku i', 'a.id_suku=i.id', 'left');
			$this->db->join('m_kota m', 'a.id_kota=m.id', 'left');

			$sql = "INSERT INTO data_keluarga (id_pegawai, id_agama, id_hubungan_keluarga, id_jenis_kelamin, id_tempat_lahir, id_tempat_menikah, id_suku, id_status_kehidupan, id_status_pernikahan, id_status_tertanggung, tanggal_lahir, tanggal_menikah, nama, alamat, tempat_menikah, pekerjaan) VALUES ";
			foreach ($fields['data_keluarga']['id_agama'] as $key => $value) {
				$sql .= $this->db->compile_binds('(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?),', [
					$id_pegawai,
					$fields['data_keluarga']['id_agama'][$key],
					$fields['data_keluarga']['id_hubungan_keluarga'][$key],
					$fields['data_keluarga']['id_jenis_kelamin'][$key],
					$fields['data_keluarga']['tempat_lahir'][$key],
					$fields['data_keluarga']['tempat_menikah'][$key],
					$fields['data_keluarga']['suku'][$key],
					$fields['data_keluarga']['id_status_kehidupan'][$key],
					$fields['data_keluarga']['id_status_pernikahan'][$key],
					$fields['data_keluarga']['id_status_tertanggung'][$key],
					$this->input_sanitizer->sanitize_date($fields['data_keluarga']['tanggal_lahir'][$key]),
					$this->input_sanitizer->sanitize_date($fields['data_keluarga']['tanggal_menikah'][$key]),
					$fields['data_keluarga']['nama'][$key],
					$fields['data_keluarga']['alamat'][$key],
					$fields['data_keluarga']['tempat_menikah'][$key],
					$fields['data_keluarga']['pekerjaan'][$key],
				]);
				
			}
			$sql = rtrim($sql, ',').';';
			$this->db->query($sql);
		}
	}


	public function delete($id_pegawai) {

		$q = $this->db->where('id', $id_pegawai)->delete('pegawai');

		return $q === FALSE ? FALSE : $this->db->affected_rows();
	}
}
