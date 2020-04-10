<?php

	if(! isset($form_data)) {
		$form_data = (Object)  (
			$this->session->flashdata('input') ?? array_fill_keys([
				'riwayat_pendidikan_umum',
			], [])
		);
	}

  if(!isset($form_data->riwayat_pendidikan_umum)) {
    $form_data->riwayat_pendidikan_umum = [];
  }

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
      <button type="submit" class="btn btn-md bg-gray save-btn">
        <i class="fa fa-save"> Simpan</i>
      </button>
      <hr>
    </div>
  </div>
</form>

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

<script type="text/javascript" src="<?= base_url() ?>assets/js/personil-form.js"></script>
