<?php

	if(! isset($form_data)) {
		$form_data = (Object)  (
			$this->session->flashdata('input') ?? array_fill_keys([
				'data_keluarga',
			], [])
		);
  }

?>
<form id="form" method="post" class="form-horizontal" enctype="multipart/form-data">
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
                  <?php $selected = 1 == $item2->id ? 'selected="selected"' : ''; ?>
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