<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Personil extends MY_Controller {

	function __construct() {
		parent::__construct();
		$this->load->model('Pegawai_model', 'pegawai_model');
		$this->load->model('Upload_model', 'upload_model');
		$this->load_master([
			'agama',
			'bagian',
			'dikmilti',
			'dikumti',
			'golongan',
			'golongan_darah',
			'grade',
			'hubungan_keluarga',
			'korp',
			'jabatan',
			'jenis_kelamin',
			'pangkat',
			'profesi',
			'ruang',
			'spesialis',
			'status_pernikahan',
			'status_jabatan',
			'status_kehidupan',
			'status_kepegawaian',
			'status_tertanggung',
			'unit_kerja',
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
			'jabatan',
			'id_golongan',
			'id_ruang',
			'id_unit_kerja',
			'username',
			'id_pangkat',
			'id_status_kepegawaian',
		]);
		$page_data = $this->pegawai_model->get_page($paging_params);

		$this->renderer
			->title('Personil')
			->content('personil')
			->data([
				'page_data' => $page_data,
				'golongan_list' => $this->m_golongan->get_all(),
				'ruang_list' => $this->m_ruang->get_all(),
				'unit_kerja_list' => $this->m_unit_kerja->get_all(),
				'pangkat_list' => $this->m_pangkat->get_all(),
				'status_kepegawaian_list' => $this->m_status_kepegawaian->get_all(),
			])
			->nav_index('personil')
			->render();
	}

	public function tambah($content = 'data-pokok') {

		$content = str_replace('-', '_', strtolower($content));

		$valid_contents = [
			'data_pokok' => 'Data Pokok',
			'pendidikan_umum' => 'Pendidikan Umum',
			'pendidikan_militer' => 'Pendidikan Militer',
			'riwayat_pangkat' => 'Riwayat Pangkat',
			'riwayat_jabatan' => 'Riwayat Jabatan',
			'riwayat_penugasan' => 'Riwayat Penugasan',
			'tanda_jasa' => 'Tanda Jasa',
			'data_keluarga' => 'Data Keluarga',
		];

		if(empty($content) || !in_array($content, array_keys($valid_contents))) {
			return $this->not_found();
		}

		if(! $this->is_logged(TRUE)) {
			return;
		}

		if($this->session->role !== 'Admin') {
			return $this->forbidden();
		}

		if($this->input->method() == 'post') {
			return $this->{'tambah_'.$content.'_post'}();
		}


		$this->renderer
			->title('Tambah Data Personil')
			->content('personil-form')
			->nav_index('personil')
			->data([
				'is_edit' => FALSE,
				'sub_content' => $content,
				'contents' => $valid_contents,
				'form_title' => $valid_contents[$content],


			]);
			//->render();

		$this->{'tambah_'.$content}();
	}

	private function tambah_data_pokok() {
		$agama_list              = $this->m_agama->get_all();
		$bagian_list             = $this->m_bagian->get_all();
		$dikumti_list            = $this->m_dikumti->get_all();
		$dikmilti_list           = $this->m_dikmilti->get_all();
		$golongan_list           = $this->m_golongan->get_all();
		$golongan_darah_list     = $this->m_golongan_darah->get_all();
		$grade_list              = $this->m_grade->get_all();
		$jenis_kelamin_list      = $this->m_jenis_kelamin->get_all();
		$pangkat_list            = $this->m_pangkat->get_all();
		$status_pernikahan_list  = $this->m_status_pernikahan->get_all();

		$this->renderer
			->data([
				'agama_list' => $agama_list,
				'bagian_list' => $bagian_list,
				'dikmilti_list' => $dikmilti_list,
				'dikumti_list' => $dikumti_list,
				'golongan_list' => $golongan_list,
				'golongan_darah_list' => $golongan_darah_list,
				'grade_list' => $grade_list,
				'jenis_kelamin_list' => $jenis_kelamin_list,
				'pangkat_list' => $pangkat_list,
				'status_pernikahan_list' => $status_pernikahan_list,

			])
			->render();
	}

	private function tambah_data_pokok_post() {
			$form_data = $this->input_sanitizer->method('post')
				->string('nama')
				->integer('id_pangkat')
				->integer('id_bagian')
				->string('profesi')
				->string('spesialis')
				->string('nrp')
				->string('asal_masuk')
				->integer('id_dikmilti')
				->integer('id_dikumti')
				->string('dikumti_teks')
				->string('jabatan')
				->integer('id_grade')
				->date('tanggal_masuk')
				->date('tmt_dikmilti')
				->date('tmt_dikumti')
				->integer('id_golongan')
				->date('tanggal_lahir')
				->string('suku')
				->float('tinggi_badan')
				->integer('id_jenis_kelamin')
				->integer('id_agama')
				->float('berat_badan')
				->integer('id_golongan_darah')
				->integer('id_status_pernikahan')
				->string('alamat')
				->string('kota')
				->string('no_hp')
				->string('email')
				->value();

			$this->save_input($form_data);
			$errors = $this->test_empty($form_data, [
				'nama'                 => 'Nama',
				'nrp'                  => 'NRP',
				'id_pangkat'					 => 'id_pangkat',
				'no_hp'                => 'Telepon',
				'email'                => 'Alamat e-mail',
			]);

			if(! empty($errors)) {
				$this->renderer->append_danger('Isian form tidak valid!');
				$this->session->set_flashdata('errors', $errors);
				redirect('personil/tambah');
			}
			// VALIDASI NIP/NRP
			if(!preg_match('/^[0-9]+$/', $form_data['no_hp'])) {
				$errors['nrp'] = 'NIP/NRP tidak valid';
			}
			// VALIDASI NOMOR TELEPON
			if(!preg_match('/^0[0-9]{9,15}$/', $form_data['no_hp'])) {
				$errors['no_hp'] = 'Nomor telepon atau WA tidak valid';
			}
			// VALIDASI ALAMAT EMAIL
			if (!filter_var($form_data['email'], FILTER_VALIDATE_EMAIL)) {
			  $errors['email'] = "Format email tidak valid";
			}
			if(! empty($errors)) {
				$this->set_alert(
					'danger',
					'Isian form tidak valid',
					$errors
				);
				redirect('personil/tambah');
			}


			$form_data['photo_filename'] = $this->upload_model->upload_foto('foto');
			$query_result = $this->pegawai_model->insert_riwayat_hidup($form_data);


			if($query_result !== FALSE) {
				$this->set_alert(
					'success',
					'Berhasil ditambahkan'
				);
				redirect('personil/edit/pendidikan-umum/'.$query_result);
			}
			else {
				$this->set_alert(
					'danger',
					'Tidak dapat memproses'
				);
				redirect('personil/tambah');
			}

	}

	private function tambah_pendidikan_umum() {
				$this->renderer
				->data([

				])
				->render();
	}

	private function tambah_pendidikan_umum_post($id_pegawai) {
			$form_data = $this->input_sanitizer->method('post')
			->array('riwayat_pendidikan_umum')
			->value();
			$this->save_input($form_data);
			$query_result = $this->pegawai_model->insert_childrens($id_pegawai, $form_data);
			if($query_result !== FALSE) {
				$this->set_alert(
					'success',
					'Berhasil ditambahkan'
				);
				redirect('personil/edit/pendidikan-militer/'.$id_pegawai);
			}
			else {
				$this->set_alert(
					'danger',
					'Tidak dapat memproses'
				);
				redirect('personil/edit/pendidikan-umum/'.$id_pegawai);
			}
	}

	private function tambah_pendidikan_militer() {
				$this->renderer
				->data([

				])
				->render();
	}

	private function tambah_pendidikan_militer_post($id_pegawai) {
		$form_data = $this->input_sanitizer->method('post')
		->array('riwayat_pendidikan_militer')
		->value();
		$this->save_input($form_data);
		$query_result = $this->pegawai_model->insert_childrens($id_pegawai, $form_data);
		if($query_result !== FALSE) {
			$this->set_alert(
				'success',
				'Berhasil ditambahkan'
			);
			redirect('personil/edit/riwayat-pangkat/'.$id_pegawai);
		}
		else {
			$this->set_alert(
				'danger',
				'Tidak dapat memproses'
			);
			redirect('personil/edit/pendidikan-militer/'.$id_pegawai);
		}
	}

	private function tambah_riwayat_pangkat() {
				$pangkat_list            = $this->m_pangkat->get_all();

				$this->renderer
				->inject_json('dataPangkat', $pangkat_list)
				->data([
					'pangkat_list'	=> $pangkat_list
				])
				->render();
	}

	private function tambah_riwayat_pangkat_post($id_pegawai) {
		$form_data = $this->input_sanitizer->method('post')
		->integer('id_pangkat')
		->array('riwayat_pangkat')
		->value();
		$this->save_input($form_data);
		$query_result = $this->pegawai_model->insert_childrens($id_pegawai, $form_data);
		if($query_result !== FALSE) {
			$this->set_alert(
				'success',
				'Berhasil ditambahkan'
			);
			redirect('personil/edit/riwayat-jabatan/'.$id_pegawai);
		}
		else {
			$this->set_alert(
				'danger',
				'Tidak dapat memproses'
			);
			redirect('personil/edit/riwayat-pangkat/'.$id_pegawai);
		}
	}

	private function tambah_riwayat_jabatan() {
			  $status_jabatan_list     = $this->m_status_jabatan->get_all();

				$this->renderer
				->data([
					'status_jabatan_list'	=> $status_jabatan_list
				])
				->render();
	}

	private function tambah_riwayat_jabatan_post($id_pegawai) {
		$form_data = $this->input_sanitizer->method('post')
		->array('riwayat_jabatan')
		->value();
		$this->save_input($form_data);
		$query_result = $this->pegawai_model->insert_childrens($id_pegawai, $form_data);
		if($query_result !== FALSE) {
			$this->set_alert(
				'success',
				'Berhasil ditambahkan'
			);
			redirect('personil/edit/riwayat-penugasan/'.$id_pegawai);
		}
		else {
			$this->set_alert(
				'danger',
				'Tidak dapat memproses'
			);
			redirect('personil/edit/riwayat-jabatan/'.$id_pegawai);
		}
	}

	private function tambah_riwayat_penugasan() {

				$this->renderer
				->data([

				])
				->render();
	}

	private function tambah_riwayat_penugasan_post($id_pegawai) {
		$form_data = $this->input_sanitizer->method('post')
		->array('riwayat_penugasan')
		->value();
		$this->save_input($form_data);
		$query_result = $this->pegawai_model->insert_childrens($id_pegawai, $form_data);
		if($query_result !== FALSE) {
			$this->set_alert(
				'success',
				'Berhasil ditambahkan'
			);
			redirect('personil/edit/tanda-jasa/'.$id_pegawai);
		}
		else {
			$this->set_alert(
				'danger',
				'Tidak dapat memproses'
			);
			redirect('personil/edit/riwayat-penugasan/'.$id_pegawai);
		}
	}

	private function tambah_tanda_jasa() {
				$pangkat_list     = $this->m_pangkat->get_all();

				$this->renderer
				->data([
					'pangkat_list'	=> $pangkat_list
				])
				->render();
	}

	private function tambah_tanda_jasa_post($id_pegawai) {
		$form_data = $this->input_sanitizer->method('post')
		->array('riwayat_tanda_jasa')
		->value();
		$this->save_input($form_data);
		$query_result = $this->pegawai_model->insert_childrens($id_pegawai, $form_data);
		if($query_result !== FALSE) {
			$this->set_alert(
				'success',
				'Berhasil ditambahkan'
			);
			redirect('personil/edit/data_keluarga/'.$id_pegawai);
		}
		else {
			$this->set_alert(
				'danger',
				'Tidak dapat memproses'
			);
			redirect('personil/edit/tanda-jasa/'.$id_pegawai);
		}
	}

	private function tambah_data_keluarga() {

				$agama_list              = $this->m_agama->get_all();
				$hubungan_keluarga_list  = $this->m_hubungan_keluarga->get_all();
				$jenis_kelamin_list      = $this->m_jenis_kelamin->get_all();
				$status_kehidupan_list   = $this->m_status_kehidupan->get_all();
				$status_pernikahan_list  = $this->m_status_pernikahan->get_all();
				$status_tertanggung_list = $this->m_status_tertanggung->get_all();

				$this->renderer
				->inject_json('dataAgama', $agama_list)
				->inject_json('dataHubunganKeluarga', $hubungan_keluarga_list)
				->inject_json('dataJenisKelamin', $jenis_kelamin_list)
				->inject_json('dataStatusKehidupan', $status_kehidupan_list)
				->inject_json('dataStatusPernikahan', $status_pernikahan_list)
				->inject_json('dataStatusTertanggung', $status_tertanggung_list)
				->data([
					'agama_list'	=> $agama_list,
					'hubungan_keluarga_list' => $hubungan_keluarga_list,
					'jenis_kelamin_list'	=> $jenis_kelamin_list,
					'status_kehidupan_list' => $status_kehidupan_list,
					'status_pernikahan_list' => $status_pernikahan_list,
					'status_tertanggung_list' => $status_tertanggung_list,

				])
				->render();
	}

	private function tambah_data_keluarga_post($id_pegawai) {
		$form_data = $this->input_sanitizer->method('post')
		->array('data_keluarga')
		->value();
		$this->save_input($form_data);
		$query_result = $this->pegawai_model->insert_childrens($id_pegawai, $form_data);
		if($query_result !== FALSE) {
			$this->set_alert(
				'success',
				'Berhasil ditambahkan'
			);
			redirect('personil/');
		}
		else {
			$this->set_alert(
				'danger',
				'Tidak dapat memproses'
			);
			redirect('personil/edit/data_keluarga/'.$id_pegawai);
		}
	}

	public function edit( $id_pegawai = NULL, $content = 'data-pokok') {

		$content = str_replace('-', '_', strtolower($content));

		$valid_contents = [
			'data_pokok' => 'Data Pokok',
			'pendidikan_umum' => 'Pendidikan Umum',
			'pendidikan_militer' => 'Pendidikan Militer',
			'riwayat_pangkat' => 'Riwayat Pangkat',
			'riwayat_jabatan' => 'Riwayat Jabatan',
			'riwayat_penugasan' => 'Riwayat Penugasan',
			'tanda_jasa' => 'Tanda Jasa',
			'data_keluarga' => 'Data Keluarga',
		];
		if(empty($content) || !in_array($content, array_keys($valid_contents))) {
			return $this->not_found();
		}

		if(! $this->is_logged(TRUE)) {
			return;
		}

		if($this->session->role !== 'Admin') {
			return $this->forbidden();
		}

		if($this->input->method() == 'post') {
			return $this->{'tambah_'.$content.'_post'}($id_pegawai);
		}

		$data = $this->pegawai_model->get_one($id_pegawai);
		// echo "<pre>";
		// var_dump($data);exit();
		$this->renderer->data('form_data', $data);

		if(empty($data)) {
			return $this->not_found();
		}

		$pangkat_list            = $this->m_pangkat->get_all();
		$status_jabatan_list     = $this->m_status_jabatan->get_all();

		$this->renderer
			->inject_json('dataPangkat', $pangkat_list)
			->title('Edit Data Personil')
			->content('personil-form')
			->nav_index('personil')
			->data([
				'is_edit' => TRUE,
				'sub_content' => $content,
				'contents' => $valid_contents,
				'form_title' => $valid_contents[$content],
				'id_pegawai'	=> $id_pegawai,
				'pangkat_list' => $pangkat_list,
				'status_jabatan_list' => $status_jabatan_list,


			]);

		$this->{'edit_'.$content}();
	}

	public function edit_data_pokok() {
		$agama_list              = $this->m_agama->get_all();
		$bagian_list             = $this->m_bagian->get_all();
		$dikumti_list            = $this->m_dikumti->get_all();
		$dikmilti_list           = $this->m_dikmilti->get_all();
		$golongan_list           = $this->m_golongan->get_all();
		$golongan_darah_list     = $this->m_golongan_darah->get_all();
		$grade_list              = $this->m_grade->get_all();
		$jenis_kelamin_list      = $this->m_jenis_kelamin->get_all();
		$pangkat_list            = $this->m_pangkat->get_all();
		$status_pernikahan_list  = $this->m_status_pernikahan->get_all();

		$this->renderer
			->data([
				'agama_list' => $agama_list,
				'bagian_list' => $bagian_list,
				'dikmilti_list' => $dikmilti_list,
				'dikumti_list' => $dikumti_list,
				'golongan_list' => $golongan_list,
				'golongan_darah_list' => $golongan_darah_list,
				'grade_list' => $grade_list,
				'jenis_kelamin_list' => $jenis_kelamin_list,
				'pangkat_list' => $pangkat_list,
				'status_pernikahan_list' => $status_pernikahan_list,

			])
			->render();
	}

	private function edit_data_pokok_post() {
		$form_data = $this->input_sanitizer->method('post')
			->string('nama')
			->integer('id_pangkat')
			->integer('id_bagian')
			->string('profesi')
			->string('spesialis')
			->string('nrp')
			->string('asal_masuk')
			->integer('id_dikmilti')
			->integer('id_dikumti')
			->string('dikumti_teks')
			->string('jabatan')
			->integer('id_grade')
			->date('tanggal_masuk')
			->date('tmt_dikmilti')
			->date('tmt_dikumti')
			->integer('id_golongan')
			->date('tanggal_lahir')
			->string('suku')
			->float('tinggi_badan')
			->integer('id_jenis_kelamin')
			->integer('id_agama')
			->float('berat_badan')
			->integer('id_golongan_darah')
			->integer('id_status_pernikahan')
			->string('alamat')
			->string('kota')
			->string('no_hp')
			->string('email')
			->value();
		$this->save_input($form_data);
		$errors = $this->test_empty($form_data, [
			'nama'                 => 'Nama',
			'nrp'                  => 'NRP',
			'id_pangkat'					 => 'id_pangkat',
			'no_hp'                => 'Telepon',
			'email'                => 'Alamat e-mail',
		]);

		if(! empty($errors)) {
			$this->renderer->append_danger('Isian form tidak valid!');
			$this->session->set_flashdata('errors', $errors);
			redirect('personil/tambah');
		}
		// VALIDASI NIP/NRP
		if(!preg_match('/^[0-9]+$/', $form_data['no_hp'])) {
			$errors['nrp'] = 'NIP/NRP tidak valid';
		}
		// VALIDASI NOMOR TELEPON
		if(!preg_match('/^0[0-9]{9,15}$/', $form_data['no_hp'])) {
			$errors['no_hp'] = 'Nomor telepon atau WA tidak valid';
		}
		// VALIDASI ALAMAT EMAIL
		if (!filter_var($form_data['email'], FILTER_VALIDATE_EMAIL)) {
		  $errors['email'] = "Format email tidak valid";
		}
		if(! empty($errors)) {
			$this->set_alert(
				'danger',
				'Isian form tidak valid',
				$errors
			);
			redirect('personil/tambah');
		}


		$form_data['photo_filename'] = $this->upload_model->upload_foto('foto');
		$query_result = $this->pegawai_model->insert_riwayat_hidup($form_data);


		if($query_result !== FALSE) {
			$this->set_alert(
				'success',
				'Berhasil ditambahkan'
			);
			redirect('personil/edit/pendidikan-umum/'.$query_result);
		}
		else {
			$this->set_alert(
				'danger',
				'Tidak dapat memproses'
			);
			redirect('personil/tambah');
		}

	}

	

	public function edit2($id_pegawai = NULL) {

		if(! $this->is_logged(TRUE)) {
			return;
		}

		$id_pegawai = $this->input_sanitizer->sanitize_integer($id_pegawai);

		if($this->session->role !== 'Admin' || empty($id_pegawai)) {
			return $this->forbidden();
		}

		if($this->input->method() == 'post') {
			return $this->edit_post($id_pegawai);
		}

		$data = $this->pegawai_model->get_one($id_pegawai);
		// echo "<pre>";
		// var_dump($data);exit();
		$this->renderer->data('form_data', $data);

		if(empty($data)) {
			return $this->not_found();
		}

		$agama_list              = $this->m_agama->get_all();
		$bagian_list             = $this->m_bagian->get_all();
		$dikmilti_list           = $this->m_dikmilti->get_all();
		$dikumti_list            = $this->m_dikumti->get_all();
		$golongan_list           = $this->m_golongan->get_all();
		$golongan_darah_list     = $this->m_golongan_darah->get_all();
		$grade_list              = $this->m_grade->get_all();
		$hubungan_keluarga_list  = $this->m_hubungan_keluarga->get_all();
		$korp_list               = $this->m_korp->get_all();
		$jabatan_list            = $this->m_jabatan->get_all();
		$jenis_kelamin_list      = $this->m_jenis_kelamin->get_all();
		$pangkat_list            = $this->m_pangkat->get_all();
		$profesi_list            = $this->m_profesi->get_all();
		$spesialis_list          = $this->m_spesialis->get_all();
		$status_jabatan_list     = $this->m_status_jabatan->get_all();
		$status_kehidupan_list   = $this->m_status_kehidupan->get_all();
		$status_pernikahan_list  = $this->m_status_pernikahan->get_all();
		$status_tertanggung_list = $this->m_status_tertanggung->get_all();

		$this->renderer
			->title('Tambah Data Personil')
			->content('personil-form')
			->inject_json('dataAgama', $agama_list)
			->inject_json('dataJabatan', $jabatan_list)
			->inject_json('dataPangkat', $pangkat_list)
			->inject_json('dataStatusJabatan', $status_jabatan_list)
			->inject_json('dataKorp', $korp_list)
			->inject_json('dataProfesi', $profesi_list)
			->inject_json('dataSpesialis', $spesialis_list)
			->inject_json('dataHubunganKeluarga', $hubungan_keluarga_list)
			->inject_json('dataStatusTertanggung', $status_tertanggung_list)
			->inject_json('dataStatusKehidupan', $status_kehidupan_list)
			->inject_json('dataStatusPernikahan', $status_pernikahan_list)
			->inject_json('dataJenisKelamin', $jenis_kelamin_list)
			->data([
				'is_edit' => TRUE,
				'agama_list' => $agama_list,
				'bagian_list' => $bagian_list,
				'dikmilti_list' => $dikmilti_list,
				'dikumti_list' => $dikumti_list,
				'golongan_list' => $golongan_list,
				'golongan_darah_list' => $golongan_darah_list,
				'grade_list' => $grade_list,
				'hubungan_keluarga_list' => $hubungan_keluarga_list,
				'jabatan_list' => $jabatan_list,
				'jenis_kelamin_list' => $jenis_kelamin_list,
				'pangkat_list' => $pangkat_list,
				'status_jabatan_list' => $status_jabatan_list,
				'status_kehidupan_list' => $status_kehidupan_list,
				'status_pernikahan_list' => $status_pernikahan_list,
				'status_tertanggung_list' => $status_tertanggung_list,
			])
			->nav_index('personil')
			->render();
	}

	private function edit_post($id_pegawai) {

		$form_data = $this->input_sanitizer->method('post')
			->string('nama')
			->integer('id_pangkat')
			->integer('id_bagian')
			->string('profesi')
			->string('spesialis')
			->string('nrp')
			->string('asal_masuk')
			->integer('id_dikmilti')
			->integer('id_dikumti')
			->string('dikumti_teks')
			->string('jabatan')
			->integer('id_grade')
			->date('tanggal_masuk')
			->date('tanggal_usul_kenaikan_pangkat')
			->date('tmt_dikmilti')
			->date('tmt_dikumti')
			->integer('id_golongan')
			->date('tanggal_lahir')
			->string('suku')
			->float('tinggi_badan')
			->integer('id_jenis_kelamin')
			->integer('id_agama')
			->float('berat_badan')
			->integer('id_golongan_darah')
			->integer('id_status_pernikahan')
			->string('alamat')
			->string('kota')
			->string('no_hp')
			->string('email')
			->array('riwayat_pendidikan_umum')
			->array('riwayat_pendidikan_militer')
			->array('riwayat_pangkat')
			->array('riwayat_jabatan')
			->array('riwayat_penugasan')
			->array('riwayat_tanda_jasa')
			->array('data_keluarga')
			->value();

		$this->save_input($form_data);

		$errors = $this->test_empty($form_data, [
			'nama'                 => 'Nama',
			'id_pangkat'           => 'Pangkat',
			'id_bagian'            => 'Bagian',
			'profesi'              => 'Profesi',
			'spesialis'            => 'Spesialis',
			'nrp'                  => 'NRP',
			'asal_masuk'           => 'Asal masuk',
			'id_dikmilti'          => 'DIKMILTI',
			'id_dikumti'           => 'DIKUMTI',
			'dikumti_teks'         => 'DIKUMTI',
			'jabatan'              => 'Jabatan',
			'id_grade'             => 'Grade',
			'tanggal_masuk'        => 'Tanggal masuk',
			'tmt_dikmilti'         => 'TMT DIKMILTI',
			'tmt_dikumti'          => 'TMT DIKUMTI',
			'id_golongan'          => 'Golongan',
			'tanggal_lahir'        => 'Tanggal lahir',
			'suku'                 => 'Suku',
			'tinggi_badan'         => 'Tinggi badan',
			'id_jenis_kelamin'     => 'Jenis kelamin',
			'id_agama'             => 'Agama',
			'berat_badan'          => 'Berat badan',
			'id_golongan_darah'    => 'Golongan darah',
			'id_status_pernikahan' => 'Status pernikahan',
			'alamat'               => 'Alamat',
			'kota'                 => 'Kota',
			'no_hp'                => 'Telepon',
			'email'                => 'Alamat e-mail',
		]);

		if(! empty($errors)) {
			$this->set_alert(
				'danger',
				'Isian form tidak valid',
				$errors
			);
			redirect('personil/edit/'.$id_pegawai);
		}

		// VALIDASI NIP/NRP
		if(!preg_match('/^[0-9]+$/', $form_data['no_hp'])) {
			$errors['nrp'] = 'NIP/NRP tidak valid';
		}

		// VALIDASI NOMOR TELEPON
		if(!preg_match('/^0[0-9]{9,15}$/', $form_data['no_hp'])) {
			$errors['no_hp'] = 'Nomor telepon atau WA tidak valid';
		}

		// VALIDASI ALAMAT EMAIL
		if (!filter_var($form_data['email'], FILTER_VALIDATE_EMAIL)) {
		  $errors['email'] = "Format email tidak valid";
		}

		if(! empty($errors)) {
			$this->set_alert(
				'danger',
				'Isian form tidak valid',
				$errors
			);
			redirect('personil/tambah');
		}

		if(!empty($_FILES['foto']['name'])) {
			$form_data['photo_filename'] = $this->upload_model->upload_foto('foto');
		}

		$query_result = $this->pegawai_model->update_riwayat_hidup($id_pegawai, $form_data);

		if($query_result !== FALSE) {
			$this->set_alert(
				'success',
				'Berhasil diubah'
			);
			redirect('personil');
		}
		else {
			$this->set_alert(
				'danger',
				'Tidak dapat memproses'
			);
			redirect('personil/edit/'.$id_pegawai);
		}
	}

	public function hapus() {

		if(! $this->is_logged(TRUE) || ! $this->post_only()) {
			return;
		}

		if($this->session->role !== 'Admin') {
			return $this->forbidden();
		}

		list($id) = $this->input_sanitizer->method('post')->integer('id')->value('list');

		$result = $this->pegawai_model->delete($id);

		if($result === FALSE) {
			$this->renderer->append_warning('Gagal menghapus data personil');
		}

		redirect('personil');
	}

	private function test_empty($input, $definition) {

		$errors = [];
		foreach ($definition as $key => $value) {
			if(empty($input[$key]))  {
				$errors[$key] = $value.' tidak boleh kosong';
			}
		}

		return $errors;
	}
}
