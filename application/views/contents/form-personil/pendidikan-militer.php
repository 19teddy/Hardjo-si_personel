<?php

	if(! isset($form_data)) {
		$form_data = (Object)  (
			$this->session->flashdata('input') ?? array_fill_keys([
				'riwayat_pendidikan_militer',
			], [])
		);
	}

?>
<form id="form" method="post" class="form-horizontal" enctype="multipart/form-data">
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
      <button type="submit" class="btn btn-md bg-gray save-btn">
        <i class="fa fa-save"> Simpan</i>
      </button>
      <hr>
    </div>
  </div>
</form>
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

<script type="text/javascript" src="<?= base_url() ?>assets/js/personil-form.js"></script>
