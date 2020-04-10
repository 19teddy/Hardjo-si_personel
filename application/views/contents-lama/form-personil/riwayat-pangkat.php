<?php

	if(! isset($form_data)) {
		$form_data = (Object)  (
			$this->session->flashdata('input') ?? array_fill_keys([
				'riwayat_pangkat',
			], [])

		);
	}
?>
<form id="form" method="post" class="form-horizontal" enctype="multipart/form-data">
<div class="row" id="sect-pangkat">
  <div class="col-md-8">
    <h4>RIWAYAT PANGKAT</h4>
    <button type="button" class="btn btn-sm bg-gray btn-add" style="margin-bottom: 10px;" row-template="row-pangkat" data-table="table-pangkat">
      <i class="fa fa-plus"></i> Tambah
    </button>
    <table id="table-pangkat" class="table edit-table table-bordered" >
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
    <button type="submit" class="btn btn-md bg-gray save-btn">
      <i class="fa fa-save"> Simpan</i>
    </button>
    <hr>
  </div>
</div>
</form>

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

<script type="text/javascript" src="<?= base_url() ?>assets/js/personil-form.js"></script>
