<?php

	if(! isset($form_data)) {
		$form_data = (Object)  (
			$this->session->flashdata('input') ?? array_fill_keys([
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
			], NULL)
		);
	}

	$form_data->kesatuan = $form_data->kesatuan ?? 'RSPAU Dr. S. HARDJOLUKITO, DISKESAU';
	$form_data->kotama = $form_data->kotama ?? 'MABESAU';

	$errors = $this->session->flashdata('errors');
	
	$has_error = function($field) use ($errors) {
			return isset($errors[$field]) ? 'has-error' : '';
	};

	$help_block = function($field) use ($errors) {
			if(isset($errors[$field])) {
					return "<span class=\"help-block\">".$errors[$field]."</span>";
			}
	};
?>
<form id="form" method="post" class="form-horizontal" enctype="multipart/form-data">
	<div class="row">
		<div class="col-md-6">
			<div class="form-group <?= $has_error('nama') ?>">
				<label class="control-label col-md-3">Nama</label>
				<div class="col-md-9">
					<input type="text" name="nama" class="form-control" value="<?= $form_data->nama ?>" autocomplete="off" >
					<?= $help_block('nama') ?>
				</div>
			</div>
			<div class="form-group <?= $has_error('id_pangkat') ?>">
				<label class="control-label col-md-3">Pangkat</label>
				<div class="col-md-9">
					<select class="form-control select2" name="id_pangkat" style="width: 100%;" >
						<option value="" selected="selected" disabled="disabled">- Pilih Pangkat -</option>
						<?php foreach($pangkat_list as $item): ?>
							<?php $selected = $item->id == $form_data->id_pangkat ? 'selected="selected"' : ''; ?>
							<option value="<?= $item->id ?>" <?= $selected ?>><?= html_escape($item->nama) ?></option>
						<?php endforeach; ?>
					</select>
					<?= $help_block('id_pangkat') ?>
				</div>
			</div>
			<div class="form-group <?= $has_error('id_bagian') ?>  <?= $has_error('profesi') ?> <?= $has_error('spesialis') ?>" >
				<label class="control-label col-md-3">KORP/PROF/SPES</label>
				<div class="col-md-9">
					<div class="input-group">
						<select class="form-control " name="id_bagian" style="width: 75px;" >
							<option value="" selected="selected" disabled="disabled">-</option>
							<?php foreach($bagian_list as $item): ?>
								<?php $selected = $item->id == $form_data->id_bagian ? 'selected="selected"' : ''; ?>
								<option value="<?= $item->id ?>" <?= $selected ?>><?= html_escape($item->nama) ?></option>
							<?php endforeach; ?>
						</select>
						<span class="input-group-addon" style="border:none;">/</span>
						<input type="text" name="profesi" class="form-control" placeholder="Profesi"  autocomplete="off" >
						<span class="input-group-addon" style="border:none;">/</span>
						<input type="text" name="spesialis" class="form-control"  placeholder="Spesialis" autocomplete="off" >

					</div>
					<?= $help_block('id_bagian') ?> <?= $help_block('profesi') ?> <?= $help_block('spesialis') ?>
				</div>
			</div>
			<div class="form-group <?= $has_error('nrp') ?>">
				<label class="control-label col-md-3">NRP/NBI/NIP <span style="color: red;">*</span></label>
				<div class="col-md-9">
					<input type="text" name="nrp" class="form-control" value="<?= $form_data->nrp ?>" autocomplete="off" >
					<?= $help_block('nrp') ?>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="col-md-offset-3">
				<?php if(isset($form_data->photo_filename) && !empty($form_data->photo_filename)): ?>
				<img id="img-preview" src="<?= base_url() ?>foto/2x3.<?= $form_data->photo_filename ?>" class="img-thumbnail" style="height: 180px; margin-bottom: 10px;">
				<?php else: ?>
				<img id="img-preview" src="<?= site_url() ?>assets/img/placeholder-person.png" class="img-thumbnail" style="height: 180px; margin-bottom: 10px;">
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
					<input type="text" name="asal_masuk" class="form-control" value="<?= $form_data->asal_masuk ?>" autocomplete="off" >
					<?= $help_block('asal_masuk') ?>
				</div>
			</div>
			<div class="form-group <?= $has_error('id_dikmilti') ?>">
				<label class="control-label col-md-3">Dikmilti</label>
				<div class="col-md-9">
					<select class="form-control select2" name="id_dikmilti" style="width: 100%;" >
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
						<select class="form-control" name="id_dikumti" style="width: 100%;" >
							<option value="" selected="selected" disabled="disabled">- Pilih Dikumti -</option>
							<?php foreach($dikumti_list as $item): ?>
								<?php $selected = $item->id == $form_data->id_dikumti ? 'selected="selected"' : ''; ?>
								<option value="<?= $item->id ?>" <?= $selected ?>><?= html_escape($item->nama) ?></option>
							<?php endforeach; ?>
						</select>
						<span class="input-group-addon" style="border: none;"></span>
						<input type="text" name="dikumti_teks" class="form-control" value="<?= $form_data->dikumti_teks ?>" autocomplete="off" >
					</div>
					<?= $help_block('id_dikumti') ?>
				</div>
			</div>
			<div class="form-group <?= $has_error('jabatan') ?>">
				<label class="control-label col-md-3">Jabatan</label>
				<div class="col-md-9">
					<input type="text" name="jabatan" class="form-control" value="<?= $form_data->jabatan ?>" autocomplete="off" >
					<?= $help_block('jabatan') ?>
				</div>
			</div>
			<div class="form-group <?= $has_error('id_grade') ?>">
				<label class="control-label col-md-3">Grade</label>
				<div class="col-md-9">
					<select class="form-control select2" name="id_grade" style="width: 100%;" >
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
						<input class="form-control datepicker" name="tanggal_masuk" size="16" type="text" autocomplete="off" value="<?= change_date_format($form_data->tanggal_masuk, 'd M Y') ?>" >
						<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
					</div>
					<?= $help_block('tanggal_masuk') ?>
				</div>
			</div>
			<div class="form-group <?= $has_error('tmt_dikmilti') ?>">
				<label class="control-label col-md-3">TMT Dikmilti</label>
				<div class="col-sm-9">
					<div class="input-group date form_date">
						<input class="form-control datepicker" name="tmt_dikmilti" size="16" type="text" autocomplete="off" value="<?= change_date_format($form_data->tmt_dikmilti, 'd M Y') ?>" >
						<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
					</div>
					<?= $help_block('tmt_dikmilti') ?>
				</div>
			</div>
			<div class="form-group <?= $has_error('tmt_dikumti') ?>">
				<label class="control-label col-md-3">TMT Dikumti</label>
				<div class="col-sm-9">
					<div class="input-group date form_date">
						<input class="form-control datepicker" name="tmt_dikumti" size="16" type="text" autocomplete="off" value="<?= change_date_format($form_data->tmt_dikumti, 'd M Y') ?>" >
						<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
					</div>
					<?= $help_block('tmt_dikumti') ?>
				</div>
			</div>
			<div class="form-group <?= $has_error('id_golongan') ?>">
				<label class="control-label col-md-3">Gol. Jabatan</label>
				<div class="col-md-9">
					<select class="form-control select2" name="id_golongan" style="width: 100%;" >
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
					<input type="text" readonly="readonly" class="form-control" value="<?= $form_data->kesatuan ?>" autocomplete="off" >
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
						<input class="form-control datepicker" name="tanggal_lahir" size="16" type="text" autocomplete="off" value="<?= change_date_format($form_data->tanggal_lahir, 'd M Y') ?>" >
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
					<input type="text" name="suku" class="form-control" value="<?= $form_data->suku ?>" autocomplete="off" >
					<?= $help_block('suku') ?>
				</div>
			</div>
			<div class="form-group <?= $has_error('tinggi_badan') ?>">
				<label class="control-label col-md-3">Tinggi Badan</label>
				<div class="col-md-9">
					<div class="input-group">
						<input type="text" name="tinggi_badan" class="form-control" value="<?= $form_data->tinggi_badan ?>" autocomplete="off" >
						<span class="input-group-addon">cm</span>
					</div>
					<?= $help_block('tinggi_badan') ?>
				</div>
			</div>
			<div class="form-group <?= $has_error('id_jenis_kelamin') ?>">
				<label class="control-label col-md-3">Jenis Kelamin</label>
				<div class="col-md-9">
					<select class="form-control select2" name="id_jenis_kelamin" style="width: 100%;" >
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
					<select class="form-control select2" name="id_agama" style="width: 100%;" >
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
						<input type="text" name="berat_badan" class="form-control" value="<?= $form_data->berat_badan ?>" autocomplete="off" >
						<span class="input-group-addon">kg</span>
					</div>
					<?= $help_block('berat_badan') ?>
				</div>
			</div>
			<div class="form-group <?= $has_error('id_golongan_darah') ?>">
				<label class="control-label col-md-3">Golongan Darah</label>
				<div class="col-md-9">
					<select class="form-control select2" name="id_golongan_darah" style="width: 100%;" >
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
					<select class="form-control select2" name="id_status_pernikahan" style="width: 100%;" >
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
					<input type="text" name="alamat" class="form-control" value="<?= $form_data->alamat ?>" autocomplete="off" >
					<?= $help_block('alamat') ?>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group <?= $has_error('kota') ?>">
				<label class="control-label col-md-3">Kota</label>
				<div class="col-md-9">
					<input type="text" name="kota" class="form-control" value="<?= $form_data->kota ?>" autocomplete="off" >
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
					<input type="text" name="no_hp" class="form-control" value="<?= $form_data->no_hp ?>" autocomplete="off" >
					<?php echo !empty($help_block('no_hp')) ? $help_block('no_hp') : '<span class="help-block">Wajib diisi No. HP atau WA aktif</span>' ?>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group <?= $has_error('email') ?>">
				<label class="control-label col-md-3">Alamat E-mail <span style="color: red;">*</span></label>
				<div class="col-md-9">
					<input type="email" name="email" class="form-control" value="<?= $form_data->email ?>" autocomplete="off" >
					<?php echo !empty($has_error('email')) ? $help_block('email') : '<span class="help-block">Wajib diisi E-mail yg masih aktif</span>' ?>
				</div>
			</div>
		</div>
	
		<div class="row">
			<div class="col-md-12">
				<hr>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
				<button type="submit" class="btn btn-md bg-gray save-btn">
					<i class="fa fa-save"> Simpan</i>
				</button>
			<hr>
		</div>
	</div>
</form>

<script type="text/javascript" src="<?= base_url() ?>assets/js/personil-form.js"></script>
