  <?php

  	if(! isset($form_data)) {
  		$form_data = (Object)  (
  			$this->session->flashdata('input') ?? array_fill_keys([
  				'riwayat_penugasan',
  			], [])

  		);
  	}
  ?>
  <form id="form" method="post" class="form-horizontal" enctype="multipart/form-data">
  <div class="row" id="sect-penugasan">
    <div class="col-md-8">
      <h4>RIWAYAT PENUGASAN </h4>
      <button type="button" class="btn btn-sm bg-gray btn-add" style="margin-bottom: 10px;" row-template="row-penugasan" data-table="table-penugasan">
        <i class="fa fa-plus"></i> Tambah
      </button>
      <table id="table-penugasan" class="table edit-table table-bordered">
        <thead>
          <tr>
            <th>Pangkat</th>
            <th>Lokasi Penempatan</th>
            <!-- <th>Mulai Tanggal</th> -->
            <th>Tahun</th>
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
      <button type="submit" class="btn btn-md bg-gray save-btn">
        <i class="fa fa-save"> Simpan</i>
      </button>
      <hr>
    </div>
  </div>
  </form>

  <template id="row-penugasan">
  	<tr>

  		<td>
        <input type="text" class="form-control" name="riwayat_penugasan[pangkat][]" required="required">
  		</td>
      <td>
        <input type="text" class="form-control" name="riwayat_penugasan[lokasi_penempatan][]" required="required">
      </td>
<!--   		<td>
  			<input type="text" class="form-control datepicker" name="riwayat_penugasan[mulai_tanggal][]" required="required">
  		</td> -->
  		<td>
  			<input type="text" class="form-control " name="riwayat_penugasan[sampai_tanggal][]" required="required">
  		</td>
  		<td class="buttons">
  			<button type="button" class="btn btn-xs bg-gray delete-btn">
  				<i class="fa fa-trash"></i>
  			</button>
  		</td>
  	</tr>
  </template>

  <script type="text/javascript" src="<?= base_url() ?>assets/js/personil-form.js"></script>
