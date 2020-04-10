<form id="form" method="post" class="form-horizontal" enctype="multipart/form-data">
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
            <!-- <th>Tahun Perolehan</th> -->
            <!-- <th>Negara Pemberi</th> -->
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
    <!--             <td>
                  <input type="text" class="form-control" name="riwayat_tanda_jasa[tahun_perolehan][]" value="<?= $item['tahun_perolehan'] ?>" required="required">
                </td> -->
                <!-- <td>
                  <input type="text" class="form-control" name="riwayat_tanda_jasa[negara_pemberi][]" value="<?= $item['negara_pemberi'] ?>" required="required">
                </td> -->
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

<template id="row-tanda-jasa">
	<tr>
		<td>
			<input type="text" class="form-control" name="riwayat_tanda_jasa[nama_penghargaan][]" required="required">
		</td>
		<!-- <td>
			<input type="text" class="form-control" name="riwayat_tanda_jasa[tahun_perolehan][]" required="required">
		</td>
		<td>
			<input type="text" class="form-control" name="riwayat_tanda_jasa[negara_pemberi][]" required="required">
		</td> -->
		<td class="buttons">
			<button type="button" class="btn btn-xs bg-gray delete-btn">
				<i class="fa fa-trash"></i>
			</button>
		</td>
	</tr>
</template>

<script type="text/javascript" src="<?= base_url() ?>assets/js/personil-form.js"></script>
