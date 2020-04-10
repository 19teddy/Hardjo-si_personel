
<form id="form" method="post" class="form-horizontal" enctype="multipart/form-data">
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
                  <input type="text" class="form-control" name="riwayat_jabatan[id_jabatan][]" value="<?= $item['id_jabatan'] ?>" required="required">
                </td>
                <td>
                  <input type="text" class="form-control" name="riwayat_jabatan[no_keputusan][]" value="<?= $item['no_keputusan'] ?>" >
                </td>
                <td>
                  <input type="text" class="form-control" name="riwayat_jabatan[satuan][]" value="<?= $item['satuan'] ?>" required="required">
                </td>
                <td>
                  <input type="text" class="form-control datepicker" name="riwayat_jabatan[tanggal_keputusan][]" value="<?= $item['tanggal_keputusan'] ?>">
                </td>
                <td>
                  <input type="text" class="form-control datepicker" name="riwayat_jabatan[tmt][]" value="<?= $item['tmt'] ?>" required="required">
                </td>
                <td>
                  <select class="form-control" name="riwayat_jabatan[id_status_jabatan][]"  required="required">
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
      <button type="submit" class="btn btn-md bg-gray save-btn">
        <i class="fa fa-save"> Simpan</i>
      </button>
      <hr>
    </div>
  </div>
</form>

<template id="row-jabatan">
	<tr>
		<td>
			<input type="text" class="form-control" name="riwayat_jabatan[id_jabatan][]" required="required">
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
			<select style="width:120px" class="form-control" name="riwayat_jabatan[id_status_jabatan][]" required="required">
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

<script type="text/javascript" src="<?= base_url() ?>assets/js/personil-form.js"></script>
