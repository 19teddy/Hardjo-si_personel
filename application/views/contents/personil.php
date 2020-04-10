<div class="content-header">
	<h1>
		<small><i class="fa fa-user"></i></small>
		Personil
	</h1>
</div>

<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-md-12">

			<?php echo $this->renderer->render_alert(); ?>

			<div class="box box-primary">
				<div class="box-body">
					<div class="row" style="margin-bottom: 10px;">
						<div class="col-md-12">
							<a class="btn btn-sm btn-primary btn-flat" href="<?= site_url() ?>personil/tambah">
								<i class="fa fa-plus"></i> Tambah Personil
							</a>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<table id="table" class="table table-hover table-bordered">
								<thead>
									<tr>
										<th>No. </th>
										<th>NRP</th>
										<th>Nama</th>
										<th>Pangkat</th>
										<th>Jabatan</th>
										<th>Gol.</th>
										<th>Username</th>
										<th>Status</th>
										<th style="width: 120px;">Tindakan</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<form>
											<td></td>
											<td>
												<input class="form-control input-sm" autocomplete="off" type="text" name="q[nrp]" value="<?= $q['nrp'] ?? '' ?>">
											</td>
											<td>
												<input class="form-control input-sm" autocomplete="off" type="text" name="q[nama]" value="<?= $q['nama'] ?? '' ?>">
											</td>
											<td>
												<select class="form-control input-sm" autocomplete="off" name="q[id_pangkat]">
													<option value="" selected="selected"></option>
													<?php foreach($pangkat_list as $item): ?>
														<?php $selected = isset($q['id_pangkat']) && $q['id_pangkat'] == $item->id ? 'selected="selected"' : ''; ?>
														<option value="<?= $item->id ?>" <?= $selected ?>><?= $item->nama ?></option>
													<?php endforeach; ?>
												</select>
											</td>
											<td>
												<input class="form-control input-sm" autocomplete="off" type="text" name="q[jabatan]" value="<?= $q['jabatan'] ?? '' ?>">
											</td>
											<td>
												<select class="form-control input-sm" autocomplete="off" name="q[id_golongan]">
													<option value="" selected="selected"></option>
													<?php foreach($golongan_list as $item): ?>
														<?php $selected = isset($q['id_golongan']) && $q['id_golongan'] == $item->id ? 'selected="selected"' : ''; ?>
														<option value="<?= $item->id ?>" <?= $selected ?>><?= $item->nama ?></option>
													<?php endforeach; ?>
												</select>
											</td>
											<td>
												<input class="form-control input-sm" autocomplete="off" type="text" name="q[username]" value="<?= $q['username'] ?? '' ?>">
											</td>
											<td>
												<select class="form-control input-sm" autocomplete="off" name="q[id_status_kepegawaian]">
													<option value="" selected="selected"></option>
													<?php foreach($status_kepegawaian_list as $item): ?>
														<?php $selected = isset($q['id_status_kepegawaian']) && $q['id_status_kepegawaian'] == $item->id ? 'selected="selected"' : ''; ?>
														<option value="<?= $item->id ?>" <?= $selected ?>><?= $item->nama ?></option>
													<?php endforeach; ?>
												</select>
											</td>
											<td>
												<div class="pull-right">
													<button type="submit" class="btn btn-sm bg-gray">
														<i class="fa fa-search"></i> Cari
													</button>
													<a href="<?= site_url() ?>personil" class="btn btn-sm bg-gray" title="Hapus filter">
														<i class="fa fa-times"></i>
													</a>
												</div>
											</td>
										</form>
									</tr>
									<?php if(empty($page_data->data)): ?>
										<tr data-id="<?= $item->id ?>">
											<td colspan="10" style="text-align: center; background: #f0f0f0;">Tidak ada data</td>
										</tr>
									<?php else: ?>
										<?php $no = $offset + 1; foreach($page_data->data as $item): ?>
											<tr data-id="<?= $item->id ?>">
												<td style="text-align: center;"><?= $no++ ?>.</td>
												<td><?= html_escape($item->nrp) ?></td>
												<td><?= html_escape($item->nama) ?></td>
												<td><?= html_escape($item->pangkat) ?></td>
												<td><?= html_escape($item->jabatan) ?></td>
												<td><?= html_escape($item->golongan) ?></td>
												<td><?= html_escape($item->username) ?></td>
												<td><?= html_escape($item->status_kepegawaian) ?></td>
												<td>
													<div class="pull-right">
														<a class="btn btn-xs bg-gray" href="<?= site_url() ?>personil/edit/<?= $content = 'data-pokok'?>/<?= $item->id ?>" title="Ubah">
															<i class="fa fa-pencil"></i>
														</a>
														<a target="_blank" class="btn btn-xs bg-gray" href="<?= site_url() ?>pdf/riwayat_hidup/<?= $item->id ?>" title="Pdf">
															<i class="fa fa-download"></i>
														</a>
														<button class="btn btn-xs bg-gray btn-hapus" title="Hapus">
															<i class="fa fa-trash"></i>
														</button>
													</div>
												</td>
											</tr>

										<?php endforeach; ?>
										<tr>
												<th>Total</th>
												<td><?= $total_personil; ?></td>
										</tr>
									<?php endif; ?>
								</tbody>
							</table>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<!--  PAGINATION  -->
							<div class="pull-right">

								<?php if($page_data->has_previous): ?>
									<a class="btn btn-sm btn-default bg-gray" href="?limit=<?= $limit ?>&offset=<?= $page_data->previous_offset ?>">
										<i class="fa fa-chevron-left"></i> Previous
									</a>
								<?php endif; ?>

								<?php if($page_data->has_next): ?>
									<a class="btn btn-sm btn-default bg-gray" href="?limit=<?= $limit ?>&offset=<?= $page_data->next_offset ?>">
										Next <i class="fa fa-chevron-right"></i>
									</a>
								<?php endif;  ?>
							</div>
							<!--  END PAGINATION  -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<form id="dummy-form" method="post" style="display: none;">
	<input type="text" name="id">
</form>

<script type="text/javascript">

	$('#table').on('click', '.btn-hapus', function() {
		let button = $(this);
		let tr = button.parents('tr');
		let id = tr.attr('data-id');

		swal({
		  text: "Apa anda yakin akan menghapus data personil ini?",
		  icon: "warning",
		  buttons: true,
  		dangerMode: true,
		})
		.then(function(isConfirm) {
			if(isConfirm) {
				$('#dummy-form [name=id]').val(id);
				$('#dummy-form').attr('action', '<?= site_url() ?>personil/hapus');
				$('#dummy-form').submit();
			}
		});
	});
</script>
