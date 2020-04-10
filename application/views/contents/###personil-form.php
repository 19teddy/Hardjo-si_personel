<?php

	if(! isset($form_data)) {
		$form_data = (Object) array_fill_keys([
			'nama',
			'id_pangkat',
			'id_bagian',
			'nrp',
			'asal_masuk',
			'id_dikmilti',
			'id_dikumti',
			'dikumti_teks',
			'jabatan',
			'id_grade',
			'tanggal_masuk',
			'tanggal_usul_kenaikan_pangkat',
			'tmt_dikmilti',
			'tmt_dikumti',
			'id_golongan',
			'kesatuan',
			'kotama',
			'tanggal_lahir',
			'suku',
			'tinggi_badan',
			'id_jenis_kelamin',
			'id_agama',
			'berat_badan',
			'id_golongan_darah',
			'id_status_pernikahan',
			'id_kenaikan_pangkat',
			'alamat',
			'kota',
			'no_hp',
			'spesialis',
			'profesi',
			'email',
		], NULL);
	}

	$form_data->kesatuan = $form_data->kesatuan ?? 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU';
	$form_data->kotama = $form_data->kotama ?? 'MABESAU';

	$alert = $this->session->flashdata('alert');

	$has_error = function($field) use ($alert) {
		return isset($alert['fields'][$field]) ? 'has-error' : '';
	};

	$help_block = function($field) use ($alert) {
		if(isset($alert['fields'][$field])) {
			return "<span class=\"help-block\">".$alert['fields'][$field]."</span>";
		}
	};
?>

<div class="content-header">
	<h1>
		<small><i class="fa fa-user"></i></small>
		<?= $is_edit ? 'Edit' : 'Tambah' ?>
		Personil
	</h1>
</div>

<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-md-12">

			<?php echo $this->renderer->render_alert(); ?>

			<div class="box box-primary">
				<div class="box-header with-border">
					<h3 class="box-title">Form Personil</h3>
				</div>
				<div class="box-body">

					<form id="form" method="post" class="form-horizontal" enctype="multipart/form-data">
						<div class="box-body">
							<div class="nav-tabs-custom">
								<ul class="nav nav-tabs">
									<li class="active"><a href="#tab_1" data-toggle="tab">Data Riwayat Hidup</a></li>
									<li><a href="#tab_2" data-toggle="tab">Data Keluarga</a></li>
								</ul>
								<div class="tab-content">
									<div class="tab-pane active" id="tab_1">
										<div class="row">
											<div class="col-md-12">
												<h4 style="margin: 0; margin-bottom: 20px;">DATA POKOK</h4>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group <?= $has_error('nama') ?>">
													<label class="control-label col-md-3">Nama</label>
													<div class="col-md-9">
														<input type="text" name="nama" class="form-control" value="<?= $form_data->nama ?>" autocomplete="off" required="required">
														<?= $help_block('nama') ?>
													</div>
												</div>
												<div class="form-group <?= $has_error('id_pangkat') ?>">
													<label class="control-label col-md-3">Pangkat</label>
													<div class="col-md-9">
														<select class="form-control select2" name="id_pangkat" style="width: 100%;" required="required">
															<option value="" selected="selected" disabled="disabled">- Pilih Pangkat -</option>
															<?php foreach($pangkat_list as $item): ?>
																<?php $selected = $item->id == $form_data->id_pangkat ? 'selected="selected"' : ''; ?>
																<option value="<?= $item->id ?>" <?= $selected ?>><?= html_escape($item->nama) ?></option>
															<?php endforeach; ?>
														</select>
														<?= $help_block('id_pangkat') ?>
													</div>
												</div>
												<div class="form-group <?= $has_error('id_bagian') ?>">
													<label class="control-label col-md-3">KORP/PROF/SPES</label>
													<div class="col-md-9">
														<select class="form-control select2" name="id_bagian" style="width: 100%;" required="required">
															<option value="" selected="selected" disabled="disabled">- Pilih -</option>
															<?php foreach($bagian_list as $item): ?>
																<?php $selected = $item->id == $form_data->id_bagian ? 'selected="selected"' : ''; ?>
																<option value="<?= $item->id ?>" <?= $selected ?>><?= html_escape($item->nama) ?></option>
															<?php endforeach; ?>
														</select>
														<?= $help_block('id_bagian') ?>
													</div>
												</div>
												<div class="form-group <?= $has_error('profesi') ?>">
													<label class="control-label col-md-3">Bidang Profesi</label>
													<div class="col-md-9">
														<input type="text" name="profesi" class="form-control" value="<?= $form_data->profesi ?>" autocomplete="off" required="required">
														<?= $help_block('profesi') ?>
													</div>
												</div>
												<div class="form-group <?= $has_error('spesialis') ?>">
													<label class="control-label col-md-3">Spesialis</label>
													<div class="col-md-9">
														<input type="text" name="spesialis" class="form-control" value="<?= $form_data->spesialis ?>" autocomplete="off" required="required">
														<?= $help_block('spesialis') ?>
													</div>
												</div>
												<div class="form-group <?= $has_error('nrp') ?>">
													<label class="control-label col-md-3">NRP/NBI/NIP <span style="color: red;">*</span></label>
													<div class="col-md-9">
														<input type="text" name="nrp" class="form-control" value="<?= $form_data->nrp ?>" autocomplete="off" required="required">
														<?= $help_block('nrp') ?>
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="col-md-offset-3">
													<?php if(isset($form_data->photo_filename) && !empty($form_data->photo_filename)): ?>
													<img id="img-preview" src="<?= base_url() ?>foto/2x3.<?= $form_data->photo_filename ?>" class="img-thumbnail" style="height: 240px; margin-bottom: 10px;">
													<?php else: ?>
													<img id="img-preview" src="<?= site_url() ?>assets/img/placeholder-person.png" class="img-thumbnail" style="height: 240px; margin-bottom: 10px;">
													<?php endif; ?>
												</div>
												<div class="form-group <?= $has_error('foto') ?>">
													<label class="control-label col-md-3">Foto (4x6)</label>
													<div class="col-md-9">
														<input type="file" name="foto" accept=".png,.jpg,.jpeg" style="width: 100%;">
														<?= $help_block('foto') ?>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group <?= $has_error('asal_masuk') ?>">
													<label class="control-label col-md-3">Asal Masuk</label>
													<div class="col-md-9">
														<input type="text" name="asal_masuk" class="form-control" value="<?= $form_data->asal_masuk ?>" autocomplete="off" required="required">
														<?= $help_block('asal_masuk') ?>
													</div>
												</div>
												<div class="form-group <?= $has_error('id_dikmilti') ?>">
													<label class="control-label col-md-3">Dikmilti</label>
													<div class="col-md-9">
														<select class="form-control select2" name="id_dikmilti" style="width: 100%;" required="required">
															<option value="" selected="selected" disabled="disabled">- Pilih Dikmilti -</option>
															<?php foreach($dikmilti_list as $item): ?>
																<?php $selected = $item->id == $form_data->id_dikmilti ? 'selected="selected"' : ''; ?>
																<option value="<?= $item->id ?>" <?= $selected ?>><?= html_escape($item->nama) ?></option>
															<?php endforeach; ?>
														</select>
														<?= $help_block('id_dikmilti') ?>
													</div>
												</div>
												<div class="form-group <?= $has_error('id_dikumti') ?>">
													<label class="control-label col-md-3">Dikumti</label>
													<div class="col-md-9">
														<div class="input-group">
															<select class="form-control" name="id_dikumti" style="width: 100%;" required="required">
																<option value="" selected="selected" disabled="disabled"></option>
																<?php foreach($dikumti_list as $item): ?>
																	<?php $selected = $item->id == $form_data->id_dikumti ? 'selected="selected"' : ''; ?>
																	<option value="<?= $item->id ?>" <?= $selected ?>><?= html_escape($item->nama) ?></option>
																<?php endforeach; ?>
															</select>
															<span class="input-group-addon" style="border: none;"></span>
															<input type="text" name="dikumti_teks" class="form-control" value="<?= $form_data->dikumti_teks ?>" autocomplete="off" required="required">
														</div>
														<?= $help_block('id_dikumti') ?>
													</div>
												</div>
												<div class="form-group <?= $has_error('jabatan') ?>">
													<label class="control-label col-md-3">Jabatan</label>
													<div class="col-md-9">
														<input type="text" name="jabatan" class="form-control" value="<?= $form_data->jabatan ?>" autocomplete="off" required="required">
														<?= $help_block('jabatan') ?>
													</div>
												</div>
												<div class="form-group <?= $has_error('id_grade') ?>">
													<label class="control-label col-md-3">Grade</label>
													<div class="col-md-9">
														<select class="form-control select2" name="id_grade" style="width: 100%;" required="required">
															<option value="" selected="selected" disabled="disabled">- Pilih Grade -</option>
															<?php foreach($grade_list as $item): ?>
																<?php $selected = $item->id == $form_data->id_grade ? 'selected="selected"' : ''; ?>
																<option value="<?= $item->id ?>" <?= $selected ?>><?= html_escape($item->nama) ?></option>
															<?php endforeach; ?>
														</select>
														<?= $help_block('id_grade') ?>
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group <?= $has_error('tanggal_masuk') ?>">
													<label class="control-label col-md-3">Tanggal Masuk</label>
													<div class="col-sm-9">
														<div class="input-group date form_date">
															<input class="form-control datepicker" name="tanggal_masuk" size="16" type="text" autocomplete="off" value="<?= change_date_format($form_data->tanggal_masuk, 'd M Y') ?>" required="required">
															<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
														</div>
														<?= $help_block('tanggal_masuk') ?>
													</div>
												</div>
												<div class="form-group <?= $has_error('tmt_dikmilti') ?>">
													<label class="control-label col-md-3">TMT Dikmilti</label>
													<div class="col-sm-9">
														<div class="input-group date form_date">
															<input class="form-control datepicker" name="tmt_dikmilti" size="16" type="text" autocomplete="off" value="<?= change_date_format($form_data->tmt_dikmilti, 'd M Y') ?>" required="required">
															<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
														</div>
														<?= $help_block('tmt_dikmilti') ?>
													</div>
												</div>
												<div class="form-group <?= $has_error('tmt_dikumti') ?>">
													<label class="control-label col-md-3">TMT Dikumti</label>
													<div class="col-sm-9">
														<div class="input-group date form_date">
															<input class="form-control datepicker" name="tmt_dikumti" size="16" type="text" autocomplete="off" value="<?= change_date_format($form_data->tmt_dikumti, 'd M Y') ?>" required="required">
															<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
														</div>
														<?= $help_block('tmt_dikumti') ?>
													</div>
												</div>
												<div class="form-group <?= $has_error('id_golongan') ?>">
													<label class="control-label col-md-3">Gol. Jabatan</label>
													<div class="col-md-9">
														<select class="form-control select2" name="id_golongan" style="width: 100%;" required="required">
															<option value="" selected="selected" disabled="disabled">- Pilih Golongan -</option>
															<?php foreach($golongan_list as $item): ?>
																<?php $selected = $item->id == $form_data->id_golongan ? 'selected="selected"' : ''; ?>
																<option value="<?= $item->id ?>" <?= $selected ?>><?= html_escape($item->nama) ?></option>
															<?php endforeach; ?>
														</select>
														<?= $help_block('id_golongan') ?>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group <?= $has_error('kesatuan') ?>">
													<label class="control-label col-md-3">Kesatuan</label>
													<div class="col-md-9">
														<input type="text" readonly="readonly" class="form-control" value="<?= $form_data->kesatuan ?>" autocomplete="off" required="required">
														<?= $help_block('kesatuan') ?>
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group <?= $has_error('kotama') ?>">
													<label class="control-label col-md-3">Kotama</label>
													<div class="col-md-9">
														<input type="text" readonly="readonly" class="form-control" value="<?= $form_data->kotama ?>" autocomplete="off">
														<?= $help_block('kotama') ?>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<hr>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group <?= $has_error('tanggal_lahir') ?>">
													<label class="control-label col-md-3">Tanggal Lahir</label>
													<div class="col-sm-9">
														<div class="input-group date form_date">
															<input class="form-control datepicker" name="tanggal_lahir" size="16" type="text" autocomplete="off" value="<?= change_date_format($form_data->tanggal_lahir, 'd M Y') ?>" required="required">
															<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
														</div>
														<?= $help_block('tanggal_lahir') ?>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group <?= $has_error('suku') ?>">
													<label class="control-label col-md-3">Suku</label>
													<div class="col-md-9">
														<input type="text" name="suku" class="form-control" value="<?= $form_data->suku ?>" autocomplete="off" required="required">
														<?= $help_block('suku') ?>
													</div>
												</div>
												<div class="form-group <?= $has_error('tinggi_badan') ?>">
													<label class="control-label col-md-3">Tinggi Badan</label>
													<div class="col-md-9">
														<div class="input-group">
															<input type="text" name="tinggi_badan" class="form-control" value="<?= $form_data->tinggi_badan ?>" autocomplete="off" required="required">
															<span class="input-group-addon">cm</span>
														</div>
														<?= $help_block('tinggi_badan') ?>
													</div>
												</div>
												<div class="form-group <?= $has_error('id_jenis_kelamin') ?>">
													<label class="control-label col-md-3">Jenis Kelamin</label>
													<div class="col-md-9">
														<select class="form-control select2" name="id_jenis_kelamin" style="width: 100%;" required="required">
															<option value="" selected="selected" disabled="disabled">- Pilih Jenis Kelamin -</option>
															<?php foreach($jenis_kelamin_list as $item): ?>
																<?php $selected = $item->id == $form_data->id_jenis_kelamin ? 'selected="selected"' : ''; ?>
																<option value="<?= $item->id ?>" <?= $selected ?>><?= html_escape($item->nama) ?></option>
															<?php endforeach; ?>
														</select>
														<?= $help_block('id_jenis_kelamin') ?>
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group <?= $has_error('id_agama') ?>">
													<label class="control-label col-md-3">Agama</label>
													<div class="col-md-9">
														<select class="form-control select2" name="id_agama" style="width: 100%;" required="required">
															<option value="" selected="selected" disabled="disabled">- Pilih Agama -</option>
															<?php foreach($agama_list as $item): ?>
																<?php $selected = $item->id == $form_data->id_agama ? 'selected="selected"' : ''; ?>
																<option value="<?= $item->id ?>" <?= $selected ?>><?= html_escape($item->nama) ?></option>
															<?php endforeach; ?>
														</select>
														<?= $help_block('id_agama') ?>
													</div>
												</div>
												<div class="form-group <?= $has_error('berat_badan') ?>">
													<label class="control-label col-md-3">Berat Badan</label>
													<div class="col-md-9">
														<div class="input-group">
															<input type="text" name="berat_badan" class="form-control" value="<?= $form_data->berat_badan ?>" autocomplete="off" required="required">
															<span class="input-group-addon">kg</span>
														</div>
														<?= $help_block('berat_badan') ?>
													</div>
												</div>
												<div class="form-group <?= $has_error('id_golongan_darah') ?>">
													<label class="control-label col-md-3">Golongan Darah</label>
													<div class="col-md-9">
														<select class="form-control select2" name="id_golongan_darah" style="width: 100%;" required="required">
															<option value="" selected="selected" disabled="disabled">- Pilih Golongan Darah -</option>
															<?php foreach($golongan_darah_list as $item): ?>
																<?php $selected = $item->id == $form_data->id_golongan_darah ? 'selected="selected"' : ''; ?>
																<option value="<?= $item->id ?>" <?= $selected ?>><?= html_escape($item->nama) ?></option>
															<?php endforeach; ?>
														</select>
														<?= $help_block('id_golongan_darah') ?>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group <?= $has_error('id_status_pernikahan') ?>">
													<label class="control-label col-md-3">Status Pernikahan</label>
													<div class="col-md-9">
														<select class="form-control select2" name="id_status_pernikahan" style="width: 100%;" required="required">
															<option value="" selected="selected" disabled="disabled">- Pilih Status Pernikahan -</option>
															<?php foreach($status_pernikahan_list as $item): ?>
																<?php $selected = $item->id == $form_data->id_status_pernikahan ? 'selected="selected"' : ''; ?>
																<option value="<?= $item->id ?>" <?= $selected ?>><?= html_escape($item->nama) ?></option>
															<?php endforeach; ?>
														</select>
														<?= $help_block('id_status_pernikahan') ?>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group <?= $has_error('alamat') ?>">
													<label class="control-label col-md-3">Alamat</label>
													<div class="col-md-9">
														<input type="text" name="alamat" class="form-control" value="<?= $form_data->alamat ?>" autocomplete="off" required="required">
														<?= $help_block('alamat') ?>
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group <?= $has_error('kota') ?>">
													<label class="control-label col-md-3">Kota</label>
													<div class="col-md-9">
														<input type="text" name="kota" class="form-control" value="<?= $form_data->kota ?>" autocomplete="off" required="required">
														<?= $help_block('kota') ?>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group <?= $has_error('no_hp') ?>">
													<label class="control-label col-md-3">No. HP/WA <span style="color: red;">*</span></label>
													<div class="col-md-9">
														<input type="text" name="no_hp" class="form-control" value="<?= $form_data->no_hp ?>" autocomplete="off" required="required">
														<span class="help-block">Wajib diisi No. HP atau WA aktif</span>
														<?= $help_block('no_hp') ?>
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group <?= $has_error('email') ?>">
													<label class="control-label col-md-3">Alamat E-mail <span style="color: red;">*</span></label>
													<div class="col-md-9">
														<input type="email" name="email" class="form-control" value="<?= $form_data->email ?>" autocomplete="off" required="required">
														<span class="help-block">Wajib diisi E-mail yg masih aktif</span>
														<?= $help_block('email') ?>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<hr>
											</div>
										</div>
										<div class="row" id="sect-pendidikan-umum">
											<div class="col-md-8">
												<h4>PENDIDIKAN UMUM</h4>
												<button type="button" class="btn btn-sm bg-gray btn-add" style="margin-bottom: 10px;" row-template="row-pendidikan" data-table="table-pendidikan">
													<i class="fa fa-plus"></i> Tambah
												</button>
												<table id="table-pendidikan" class="table table-bordered edit-table">
													<thead>
														<tr>
															<th style="width: 100px;">Lemdik</th>
															<th>Sekolah</th>
															<th style="width: 100px;">Thn. Masuk</th>
															<th style="width: 100px;">Thn. Keluar</th>
															<th style="width: 40px;"></th>
														</tr>
													</thead>
													<tbody>
														<?php if($is_edit): ?>
															<?php foreach($form_data->riwayat_pendidikan_umum as $item): ?>
																<tr>
																	<td>
																		<input type="text" class="form-control" name="riwayat_pendidikan_umum[lemdik][]" value="<?= $item['lemdik'] ?>" required="required">
																	</td>
																	<td>
																		<input type="text" class="form-control" name="riwayat_pendidikan_umum[sekolah][]" value="<?= $item['sekolah'] ?>" required="required">
																	</td>
																	<td>
																		<input type="text" class="form-control" name="riwayat_pendidikan_umum[tahun_masuk][]" value="<?= $item['tahun_masuk'] ?>" required="required">
																	</td>
																	<td>
																		<input type="text" class="form-control" name="riwayat_pendidikan_umum[tahun_keluar][]" value="<?= $item['tahun_keluar'] ?>" required="required">
																	</td>
																	<td class="buttons">
																		<button type="button" class="btn btn-xs bg-gray delete-btn">
																			<i class="fa fa-trash"></i>
																		</button>
																	</td>
																</tr>
															<?php endforeach; ?>
														<?php else: ?>
															<tr data-placeholder="data-placeholder">
																<td colspan="5" style="text-align: center;">
																	Belum ada data
																</td>
															</tr>
														<?php endif; ?>
													</tbody>
												</table>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<hr>
											</div>
										</div>
										<div class="row" id="sect-pendidikan-militer">
											<div class="col-md-8">
												<h4>PENDIDIKAN MILITER</h4>
												<button type="button" class="btn btn-sm bg-gray btn-add" style="margin-bottom: 10px;" row-template="row-militer" data-table="table-militer">
													<i class="fa fa-plus"></i> Tambah
												</button>
												<table id="table-militer" class="table edit-table table-bordered">
													<thead>
														<tr>
															<th>Lemdik/Sekolah</th>
															<th style="width: 100px;">Thn. Masuk</th>
															<th style="width: 100px;">Thn. Keluar</th>
															<th style="width: 100px;">Angkatan</th>
															<th>TMT</th>
															<th style="width: 40px;"></th>
														</tr>
													</thead>
													<tbody>
														<?php if($is_edit && !empty($form_data->riwayat_pendidikan_militer)): ?>
															<?php foreach($form_data->riwayat_pendidikan_militer as $item): ?>
																<tr>
																	<td>
																		<input type="text" class="form-control" name="riwayat_pendidikan_militer[sekolah][]" value="<?= $item['sekolah'] ?>" required="required">
																	</td>
																	<td>
																		<input type="text" class="form-control" name="riwayat_pendidikan_militer[tahun_masuk][]" value="<?= $item['tahun_masuk'] ?>" required="required">
																	</td>
																	<td>
																		<input type="text" class="form-control" name="riwayat_pendidikan_militer[tahun_keluar][]" value="<?= $item['tahun_keluar'] ?>" required="required">
																	</td>
																	<td>
																		<input type="text" class="form-control" name="riwayat_pendidikan_militer[angkatan][]" value="<?= $item['angkatan'] ?>" required="required">
																	</td>
																	<td>
																		<input type="text" class="form-control datepicker" name="riwayat_pendidikan_militer[tmt][]" value="<?= $item['tmt'] ?>" required="required">
																	</td>
																	<td class="buttons">
																		<button type="button" class="btn btn-xs bg-gray delete-btn">
																			<i class="fa fa-trash"></i>
																		</button>
																	</td>
																</tr>
															<?php endforeach; ?>
														<?php else: ?>
															<tr data-placeholder="data-placeholder">
																<td colspan="6" style="text-align: center;">
																	Belum ada data
																</td>
															</tr>
														<?php endif; ?>
													</tbody>
												</table>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<hr>
											</div>
										</div>
										<div class="row" id="sect-pangkat">
											<div class="col-md-8">
												<h4>RIWAYAT PANGKAT</h4>
												<button type="button" class="btn btn-sm bg-gray btn-add" style="margin-bottom: 10px;" row-template="row-pangkat" data-table="table-pangkat">
													<i class="fa fa-plus"></i> Tambah
												</button>
												<table id="table-pangkat" class="table edit-table table-bordered">
													<thead>
														<tr>
															<th>TMT</th>
															<th>Pangkat</th>
															<th style="width: 40px;"></th>
														</tr>
													</thead>
													<tbody>
														<?php if($is_edit && !empty($form_data->riwayat_pangkat)): ?>
															<?php foreach($form_data->riwayat_pangkat as $item): ?>
																<tr>
																	<td>
																		<input type="text" class="form-control datepicker" name="riwayat_pangkat[tmt][]" value="<?= $item['tmt'] ?>" required="required">
																	</td>
																	<td>
																		<select class="form-control" name="riwayat_pangkat[id_pangkat][]" required="required">
																			<option value="" selected="selected" disabled="disabled"></option>
																			<?php foreach($pangkat_list as $item2): ?>
																				<?php $selected = $item2->id == $item['id_pangkat'] ? 'selected="selected"' : ''; ?>
																				<option value="<?= $item2->id ?>"><?= html_escape($item2->nama) ?></option>
																			<?php endforeach; ?>
																		</select>
																	</td>
																	<td class="buttons">
																		<button type="button" class="btn btn-xs bg-gray delete-btn">
																			<i class="fa fa-trash"></i>
																		</button>
																	</td>
																</tr>
															<?php endforeach; ?>
														<?php else: ?>
															<tr data-placeholder="data-placeholder">
																<td colspan="3" style="text-align: center;">
																	Belum ada data
																</td>
															</tr>
														<?php endif; ?>
													</tbody>
												</table>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<hr>
											</div>
										</div>
										<div class="row" id="sect-jabatan">
											<div class="col-md-8">
												<h4>RIWAYAT JABATAN (PENEMPATAN)</h4>
												<button type="button" class="btn btn-sm bg-gray btn-add" style="margin-bottom: 10px;" row-template="row-jabatan" data-table="table-jabatan">
													<i class="fa fa-plus"></i> Tambah
												</button>
												<table id="table-jabatan" class="table edit-table table-bordered">
													<thead>
														<tr>
															<th>Jabatan Baru</th>
															<th>No. Kep</th>
															<th>Satuan</th>
															<th>Tgl. Kep.</th>
															<th>TMT Jabatan</th>
															<th>Status</th>
															<th></th>
														</tr>
													</thead>
													<tbody>
														<?php if($is_edit && !empty($form_data->riwayat_jabatan)): ?>
															<?php foreach($form_data->riwayat_jabatan as $item): ?>
																<tr>
																	<td>
																		<input type="text" class="form-control" value="<?= $item['jabatan'] ?>" required="required">
																	</td>
																	<td>
																		<input type="text" class="form-control" name="riwayat_jabatan[no_keputusan][]" value="<?= $item['no_keputusan'] ?>" required="required">
																	</td>
																	<td>
																		<input type="text" class="form-control" name="riwayat_jabatan[satuan][]" value="<?= $item['satuan'] ?>" required="required">
																	</td>
																	<td>
																		<input type="text" class="form-control datepicker" name="riwayat_jabatan[tanggal_keputusan][]" value="<?= $item['tanggal_keputusan'] ?>" required="required">
																	</td>
																	<td>
																		<input type="text" class="form-control datepicker" name="riwayat_jabatan[tmt][]" value="<?= $item['tmt'] ?>" required="required">
																	</td>
																	<td>
																		<select class="form-control" name="riwayat_jabatan[id_status_jabatan][]" required="required">
																			<option value="" selected="selected" disabled="disabled"></option>
																			<?php foreach($status_jabatan_list as $item2): ?>
																				<?php $selected = $item2->id == $item['id_status_jabatan'] ? 'selected="selected"' : ''; ?>
																				<option value="<?= $item->id ?>"><?= html_escape($item2->nama) ?></option>
																			<?php endforeach; ?>
																		</select>
																	</td>
																	<td class="buttons">
																		<button type="button" class="btn btn-xs bg-gray delete-btn">
																			<i class="fa fa-trash"></i>
																		</button>
																	</td>
																</tr>
															<?php endforeach; ?>
														<?php else: ?>
															<tr data-placeholder="data-placeholder">
																<td colspan="7" style="text-align: center;">
																	Belum ada data
																</td>
															</tr>
														<?php endif; ?>
													</tbody>
												</table>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<hr>
											</div>
										</div>
										<div class="row" id="sect-penugasan">
											<div class="col-md-8">
												<h4>RIWAYAT PENUGASAN </h4>
												<button type="button" class="btn btn-sm bg-gray btn-add" style="margin-bottom: 10px;" row-template="row-penugasan" data-table="table-penugasan">
													<i class="fa fa-plus"></i> Tambah
												</button>
												<table id="table-penugasan" class="table edit-table table-bordered">
													<thead>
														<tr>
															<th>Lokasi Penempatan</th>
															<th>Pangkat</th>
															<th>Mulai Tanggal</th>
															<th>Sampai Tanggal</th>
															<th style="width: 40px;"></th>
														</tr>
													</thead>
													<tbody>
														<?php if($is_edit && !empty($form_data->riwayat_penugasan)): ?>
															<?php foreach($form_data->riwayat_penugasan as $item): ?>
																<tr>
																	<td>
																		<input type="text" class="form-control" name="riwayat_penugasan[lokasi_penempatan][]" value="<?= $item['lokasi_penempatan'] ?>" required="required">
																	</td>
																	<td>
																		<select class="form-control" name="riwayat_penugasan[id_pangkat][]" required="required" >
																			<option value="" selected="selected" disabled="disabled"></option>
																			<?php foreach($pangkat_list as $item2): ?>
																				<?php $selected = $item2->id == $item['id_pangkat'] ? 'selected="selected"' : ''; ?>
																				<option value="<?= $item2->id ?>"><?= html_escape($item2->nama) ?></option>
																			<?php endforeach; ?>
																		</select>
																	</td>
																	<td>
																		<input type="text" class="form-control datepicker" name="riwayat_penugasan[mulai_tanggal][]" value="<?= $item['mulai_tanggal'] ?>" required="required">
																	</td>
																	<td>
																		<input type="text" class="form-control datepicker" name="riwayat_penugasan[sampai_tanggal][]" value="<?= $item['sampai_tanggal'] ?>" required="required">
																	</td>
																	<td class="buttons">
																		<button type="button" class="btn btn-xs bg-gray delete-btn">
																			<i class="fa fa-trash"></i>
																		</button>
																	</td>
																</tr>
															<?php endforeach; ?>
														<?php else: ?>
															<tr data-placeholder="data-placeholder">
																<td colspan="5" style="text-align: center;">
																	Belum ada data
																</td>
															</tr>
														<?php endif; ?>
													</tbody>
												</table>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<hr>
											</div>
										</div>
										<div class="row" id="sect-tanda-jasa">
											<div class="col-md-8">
												<h4>TANDA JASA (KEHORMATAN)</h4>
												<button type="button" class="btn btn-sm bg-gray btn-add" style="margin-bottom: 10px;" row-template="row-tanda-jasa" data-table="table-tanda-jasa">
													<i class="fa fa-plus"></i> Tambah
												</button>
												<table id="table-tanda-jasa" class="table edit-table table-bordered">
													<thead>
														<tr>
															<th>Nama Penghargaan</th>
															<th>Tahun Perolehan</th>
															<th>Negara Pemberi</th>
															<th style="width: 40px;"></th>
														</tr>
													</thead>
													<tbody>
														<?php if($is_edit && !empty($form_data->riwayat_tanda_jasa)): ?>
															<?php foreach($form_data->riwayat_tanda_jasa as $item): ?>
																<tr>
																	<td>
																		<input type="text" class="form-control" name="riwayat_tanda_jasa[nama_penghargaan][]" value="<?= $item['nama_penghargaan'] ?>" required="required">
																	</td>
																	<td>
																		<input type="text" class="form-control" name="riwayat_tanda_jasa[tahun_perolehan][]" value="<?= $item['tahun_perolehan'] ?>" required="required">
																	</td>
																	<td>
																		<input type="text" class="form-control" name="riwayat_tanda_jasa[negara_pemberi][]" value="<?= $item['negara_pemberi'] ?>" required="required">
																	</td>
																	<td class="buttons">
																		<button type="button" class="btn btn-xs bg-gray delete-btn">
																			<i class="fa fa-trash"></i>
																		</button>
																	</td>
																</tr>
															<?php endforeach; ?>
														<?php else: ?>
															<tr data-placeholder="data-placeholder">
																<td colspan="5" style="text-align: center;">
																	Belum ada data
																</td>
															</tr>
														<?php endif; ?>
													</tbody>
												</table>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<hr>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<h4>Usul Kenaikan Pangkat yg Akan Datang</h4>
												<div class="form-group <?= $has_error('id_kenaikan_pangkat') ?>">
													<label class="control-label col-md-3">Kenaikan Pangkat</label>
													<div class="col-sm-9">
														<select class="form-control" name="id_kenaikan_pangkat">
															<option value="" selected="selected" disabled="disabled"></option>
															<?php foreach($pangkat_list as $item2): ?>
																<?php $selected = $item2->id == $form_data->id_kenaikan_pangkat ? 'selected="selected"' : ''; ?>
																<option value="<?= $item2->id ?>"><?= html_escape($item2->nama) ?></option>
															<?php endforeach; ?>
														</select>
														<?= $help_block('id_kenaikan_pangkat') ?>
													</div>
												</div>
												<div class="form-group <?= $has_error('tanggal_usul_kenaikan_pangkat') ?>">
													<label class="control-label col-md-3">Tanggal</label>
													<div class="col-sm-9">
														<div class="input-group date form_date">
															<input class="form-control datepicker" name="tanggal_usul_kenaikan_pangkat" size="16" type="text" autocomplete="off" value="<?= change_date_format($form_data->tanggal_usul_kenaikan_pangkat, 'd M Y') ?>">
															<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
														</div>
														<?= $help_block('tanggal_usul_kenaikan_pangkat') ?>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- /.tab-pane -->
									<div class="tab-pane" id="tab_2">
										<div class="row" id="sect-data-keluarga">
											<input type="hidden" name="k-id" value="">
											<div class="col-md-12">
												<div class="row" style="margin-top: 50px;">
													<div class="col-md-6">
														<div class="form-group">
															<label class="control-label col-md-3">Nama</label>
															<div class="col-sm-9">
																<input class="form-control" name="k-nama" type="text" autocomplete="off">
															</div>
														</div>
														<div class="form-group">
															<label class="control-label col-md-3">Tempat Lahir</label>
															<div class="col-sm-9">
																<input class="form-control" name="k-tempat_lahir" type="text" autocomplete="off">
															</div>
														</div>
														<div class="form-group">
															<label class="control-label col-md-3">Tanggal Lahir</label>
															<div class="col-sm-9">
																<div class="input-group date form_date">
																	<input class="form-control datepicker" name="k-tanggal_lahir" size="16" type="text" autocomplete="off">
																	<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
																</div>
															</div>
														</div>
														<div class="form-group">
															<label class="control-label col-md-3">Jenis Kelamin</label>
															<div class="col-sm-9">
																<select class="form-control" name="k-id_jenis_kelamin" >
																	<option value="" selected="selected" disabled="disabled"></option>
																	<?php foreach($jenis_kelamin_list as $item2): ?>
																		<option value="<?= $item2->id ?>"><?= html_escape($item2->nama) ?></option>
																	<?php endforeach; ?>
																</select>
															</div>
														</div>
														<div class="form-group">
															<label class="control-label col-md-3">Suku</label>
															<div class="col-sm-9">
																<input class="form-control" name="k-suku" size="16" type="text" autocomplete="off">
															</div>
														</div>
														<div class="form-group">
															<label class="control-label col-md-3">Tempat Menikah</label>
															<div class="col-sm-9">
																<input class="form-control" name="k-tempat_menikah" size="16" type="text" autocomplete="off">
															</div>
														</div>
														<div class="form-group">
															<label class="control-label col-md-3">Status<br><small>(Hidup/Meninggal)</small></label>
															<div class="col-sm-9">
																<select class="form-control" name="k-id_status_kehidupan" >
																	<option value="" selected="selected" disabled="disabled"></option>
																	<?php foreach($status_kehidupan_list as $item2): ?>
																		<option value="<?= $item2->id ?>"><?= html_escape($item2->nama) ?></option>
																	<?php endforeach; ?>
																</select>
															</div>
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label class="control-label col-md-3">Tertanggung</label>
															<div class="col-sm-9">
																<select class="form-control" name="k-id_status_tertanggung" >
																	<option value="" selected="selected" disabled="disabled"></option>
																	<?php foreach($status_tertanggung_list as $item2): ?>
																		<option value="<?= $item2->id ?>"><?= html_escape($item2->nama) ?></option>
																	<?php endforeach; ?>
																</select>
															</div>
														</div>
														<div class="form-group">
															<label class="control-label col-md-3">Hubungan</label>
															<div class="col-sm-9">
																<select class="form-control" name="k-id_hubungan_keluarga" >
																	<option value="" selected="selected" disabled="disabled"></option>
																	<?php foreach($hubungan_keluarga_list as $item2): ?>
																		<option value="<?= $item2->id ?>"><?= html_escape($item2->nama) ?></option>
																	<?php endforeach; ?>
																</select>
															</div>
														</div>
														<div class="form-group">
															<label class="control-label col-md-3">Agama</label>
															<div class="col-sm-9">
																<select class="form-control" name="k-id_agama" >
																	<option value="" selected="selected" disabled="disabled"></option>
																	<?php foreach($agama_list as $item2): ?>
																		<option value="<?= $item2->id ?>"><?= html_escape($item2->nama) ?></option>
																	<?php endforeach; ?>
																</select>
															</div>
														</div>
														<div class="form-group">
															<label class="control-label col-md-3">Alamat</label>
															<div class="col-sm-9">
																<input class="form-control" name="k-alamat" type="text" autocomplete="off">
															</div>
														</div>
														<div class="form-group">
															<label class="control-label col-md-3">Status Pernikahan</label>
															<div class="col-sm-9">
																<select class="form-control" name="k-id_status_pernikahan" >
																	<option value="" selected="selected" disabled="disabled"></option>
																	<?php foreach($status_pernikahan_list as $item2): ?>
																		<option value="<?= $item2->id ?>"><?= html_escape($item2->nama) ?></option>
																	<?php endforeach; ?>
																</select>
															</div>
														</div>
														<div class="form-group">
															<label class="control-label col-md-3">Tanggal Menikah</label>
															<div class="col-sm-9">
																<div class="input-group date form_date">
																	<input class="form-control datepicker" name="k-tanggal_menikah" size="16" type="text" autocomplete="off">
																	<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
																</div>
															</div>
														</div>
														<div class="form-group">
															<label class="control-label col-md-3">Pekerjaan</label>
															<div class="col-sm-9">
																<input class="form-control" name="k-pekerjaan" type="text" autocomplete="off">
															</div>
														</div>
													</div>
												</div>

												<button type="button" class="btn btn-sm bg-gray btn-add" style="margin-bottom: 10px;">
													<i class="fa fa-plus"></i> Tambahkan
												</button>
												<button type="button" class="btn btn-sm bg-gray btn-cancel" style="margin-bottom: 10px;">
													Batal
												</button>
												<hr>
												<table id="table-keluarga" class="table table-bordered">
													<thead>
														<tr>
															<th></th>
															<th>Nama</th>
															<th>Jenis Kelamin</th>
															<th>Status <br><small>(Hidup/Meninggal)</small></th>
															<th>Tertanggung</th>
															<th>Hubungan</th>
															<th>Agama</th>
															<th>Status Pernikahan</th>
															<th></th>
														</tr>
													</thead>
													<tbody>
														<?php if($is_edit && !empty($form_data->data_keluarga)): ?>
															<?php foreach($form_data->data_keluarga as $item): ?>
																<tr data-id="<?= $item['id'] ?>" data-json="<?= html_escape(json_encode($item)) ?>">
																	<td class="details-control"><i class="fa fa-plus-square text-green"></i></td>
																	<td><?= $item['nama'] ?></td>
																	<td><?= $item['jenis_kelamin'] ?></td>
																	<td><?= $item['status_kehidupan'] ?></td>
																	<td><?= $item['status_tertanggung'] ?></td>
																	<td><?= $item['hubungan_keluarga'] ?></td>
																	<td><?= $item['agama'] ?></td>
																	<td><?= $item['status_pernikahan'] ?></td>
																	<td>
																		<div class="input-container">
																			<input type="hidden" name="data_keluarga[nama][]" value="<?= html_escape($item['nama']) ?>">
																			<input type="hidden" name="data_keluarga[tempat_lahir][]" value="<?= html_escape($item['tempat_lahir']) ?>">
																			<input type="hidden" name="data_keluarga[tanggal_lahir][]" value="<?= html_escape($item['tanggal_lahir']) ?>">
																			<input type="hidden" name="data_keluarga[id_jenis_kelamin][]" value="<?= html_escape($item['id_jenis_kelamin']) ?>">
																			<input type="hidden" name="data_keluarga[suku][]" value="<?= html_escape($item['suku']) ?>">
																			<input type="hidden" name="data_keluarga[tempat_menikah][]" value="<?= html_escape($item['tempat_menikah']) ?>">
																			<input type="hidden" name="data_keluarga[id_status_kehidupan][]" value="<?= html_escape($item['id_status_kehidupan']) ?>">
																			<input type="hidden" name="data_keluarga[id_status_tertanggung][]" value="<?= html_escape($item['id_status_tertanggung']) ?>">
																			<input type="hidden" name="data_keluarga[id_hubungan_keluarga][]" value="<?= html_escape($item['id_hubungan_keluarga']) ?>">
																			<input type="hidden" name="data_keluarga[id_agama][]" value="<?= html_escape($item['id_agama']) ?>">
																			<input type="hidden" name="data_keluarga[alamat][]" value="<?= html_escape($item['alamat']) ?>">
																			<input type="hidden" name="data_keluarga[id_status_pernikahan][]" value="<?= html_escape($item['id_status_pernikahan']) ?>">
																			<input type="hidden" name="data_keluarga[tanggal_menikah][]" value="<?= html_escape($item['tanggal_menikah']) ?>">
																			<input type="hidden" name="data_keluarga[pekerjaan][]" value="<?= html_escape($item['pekerjaan']) ?>">
																		</div>
																		<div class="pull-right">
																			<button type="button" class="btn btn-xs bg-gray edit-btn">
																				<i class="fa fa-pencil"></i>
																			</button>
																			<button type="button" class="btn btn-xs bg-gray delete-btn">
																				<i class="fa fa-trash"></i>
																			</button>
																		</div>
																	</td>
																</tr>
																<tr style="display: none;">
																	<td colspan="9">
																		<table class="detail-table">
																			<tr>
																				<td>Tempat Lahir</td>
																				<td class="tempat_lahir"><?= html_escape($item['tempat_lahir']) ?></td>
																			</tr>
																			<tr>
																				<td>Tanggal Lahir</td>
																				<td class="tanggal_lahir"><?= change_date_format($item['tanggal_lahir'], 'd M Y') ?></td>
																			</tr>
																			<tr>
																				<td>Suku</td>
																				<td class="suku"><?= html_escape($item['suku']) ?></td>
																			</tr>
																			<tr>
																				<td>Tempat Menikah</td>
																				<td class="tempat_menikah"><?= html_escape($item['tempat_menikah']) ?></td>
																			</tr>
																			<tr>
																				<td>Tanggal Menikah</td>
																				<td class="tanggal_menikah"><?= change_date_format($item['tanggal_menikah'], 'd M Y') ?></td>
																			</tr>
																			<tr>
																				<td>Alamat</td>
																				<td class="alamat"><?= html_escape($item['alamat']) ?></td>
																			</tr>
																			<tr>
																				<td>Pekerjaan</td>
																				<td class="pekerjaan"><?= html_escape($item['pekerjaan']) ?></td>
																			</tr>
																		</table>
																	</td>
																</tr>
															<?php endforeach; ?>
														<?php else: ?>
															<tr data-placeholder="data-placeholder">
																<td colspan="14" style="text-align: center;">
																	Belum ada data
																</td>
															</tr>
														<?php endif; ?>
													</tbody>
												</table>
											</div>
										</div>
									</div>
									<!-- /.tab-pane -->
								</div>
								<!-- /.tab-content -->
							</div>
							<!-- nav-tabs-custom -->
						</div>
						<div class="box-footer">
							<button class="btn btn-primary btn-flat"><i class="fa fa-save"></i> Simpan</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>

<template id="row-pendidikan">
	<tr>
		<td>
			<input type="text" class="form-control" name="riwayat_pendidikan_umum[lemdik][]" required="required">
		</td>
		<td>
			<input type="text" class="form-control" name="riwayat_pendidikan_umum[sekolah][]" required="required">
		</td>
		<td>
			<input type="text" class="form-control" name="riwayat_pendidikan_umum[tahun_masuk][]" required="required">
		</td>
		<td>
			<input type="text" class="form-control" name="riwayat_pendidikan_umum[tahun_keluar][]" required="required">
		</td>
		<td class="buttons">
			<button type="button" class="btn btn-xs bg-gray delete-btn">
				<i class="fa fa-trash"></i>
			</button>
		</td>
	</tr>
</template>

<template id="row-militer">
	<tr>
		<td>
			<input type="text" class="form-control" name="riwayat_pendidikan_militer[sekolah][]" required="required">
		</td>
		<td>
			<input type="text" class="form-control" name="riwayat_pendidikan_militer[tahun_masuk][]" required="required">
		</td>
		<td>
			<input type="text" class="form-control" name="riwayat_pendidikan_militer[tahun_keluar][]" required="required">
		</td>
		<td>
			<input type="text" class="form-control" name="riwayat_pendidikan_militer[angkatan][]" required="required">
		</td>
		<td>
			<input type="text" class="form-control datepicker" name="riwayat_pendidikan_militer[tmt][]" required="required">
		</td>
		<td class="buttons">
			<button type="button" class="btn btn-xs bg-gray delete-btn">
				<i class="fa fa-trash"></i>
			</button>
		</td>
	</tr>
</template>

<template id="row-pangkat">
	<tr>
		<td>
			<input type="text" class="form-control datepicker" name="riwayat_pangkat[tmt][]" required="required">
		</td>
		<td>
			<select class="form-control" name="riwayat_pangkat[id_pangkat][]" required="required">
				<option value="" selected="selected" disabled="disabled"></option>
				<?php foreach($pangkat_list as $item): ?>
					<option value="<?= $item->id ?>"><?= html_escape($item->nama) ?></option>
				<?php endforeach; ?>
			</select>
		</td>
		<td class="buttons">
			<button type="button" class="btn btn-xs bg-gray delete-btn">
				<i class="fa fa-trash"></i>
			</button>
		</td>
	</tr>
</template>

<template id="row-jabatan">
	<tr>
		<td>
			<input type="text" class="form-control" required="required">
		</td>
		<td>
			<input type="text" class="form-control" name="riwayat_jabatan[no_keputusan][]" required="required">
		</td>
		<td>
			<input type="text" class="form-control" name="riwayat_jabatan[satuan][]" required="required">
		</td>
		<td>
			<input type="text" class="form-control datepicker" name="riwayat_jabatan[tanggal_keputusan][]" required="required">
		</td>
		<td>
			<input type="text" class="form-control datepicker" name="riwayat_jabatan[tmt][]" required="required">
		</td>
		<td>
			<select class="form-control" name="riwayat_jabatan[id_status_jabatan][]" required="required">
				<option value="" selected="selected" disabled="disabled"></option>
				<?php foreach($status_jabatan_list as $item): ?>
					<option value="<?= $item->id ?>"><?= html_escape($item->nama) ?></option>
				<?php endforeach; ?>
			</select>
		</td>
		<td class="buttons">
			<button type="button" class="btn btn-xs bg-gray delete-btn">
				<i class="fa fa-trash"></i>
			</button>
		</td>
	</tr>
</template>

<template id="row-penugasan">
	<tr>
		<td>
			<input type="text" class="form-control" name="riwayat_penugasan[lokasi_penempatan][]" required="required">
		</td>
		<td>
			<select class="form-control" name="riwayat_penugasan[id_pangkat][]" required="required">
				<option value="" selected="selected" disabled="disabled"></option>
				<?php foreach($pangkat_list as $item): ?>
					<option value="<?= $item->id ?>"><?= html_escape($item->nama) ?></option>
				<?php endforeach; ?>
			</select>
		</td>
		<td>
			<input type="text" class="form-control datepicker" name="riwayat_penugasan[mulai_tanggal][]" required="required">
		</td>
		<td>
			<input type="text" class="form-control datepicker" name="riwayat_penugasan[sampai_tanggal][]" required="required">
		</td>
		<td class="buttons">
			<button type="button" class="btn btn-xs bg-gray delete-btn">
				<i class="fa fa-trash"></i>
			</button>
		</td>
	</tr>
</template>

<template id="row-tanda-jasa">
	<tr>
		<td>
			<input type="text" class="form-control" name="riwayat_tanda_jasa[nama_penghargaan][]" required="required">
		</td>
		<td>
			<input type="text" class="form-control" name="riwayat_tanda_jasa[tahun_perolehan][]" required="required">
		</td>
		<td>
			<input type="text" class="form-control" name="riwayat_tanda_jasa[negara_pemberi][]" required="required">
		</td>
		<td class="buttons">
			<button type="button" class="btn btn-xs bg-gray delete-btn">
				<i class="fa fa-trash"></i>
			</button>
		</td>
	</tr>
</template>

<script type="text/javascript" src="<?= base_url() ?>assets/js/personil-form.js"></script>
