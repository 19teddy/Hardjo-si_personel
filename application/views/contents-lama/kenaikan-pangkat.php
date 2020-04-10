<div class="content-header">
	<h1>
		<small><i class="fa fa-user"></i></small>
		Kenaikan Pangkat
	</h1>
</div>

<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-md-12">

			<?php echo $this->renderer->render_alert(); ?>

			<div class="box box-primary">
				<div class="box-body">
					<div class="row">
						<div class="col-md-12">
							<table id="table" class="table table-hover table-bordered">
								<thead>
									<tr>
										<th>No. </th>
										<th>NIP/NRP</th>
										<th>Nama</th>
										<th>Jabatan</th>
										<th>Pangkat</th>
										<th>Tanggal Usulan</th>
										<th>Usul Pangkat</th>
										<th style="width: 120px;"></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<form>
											<td></td>
											<td>
												<input class="form-control input-sm" autocomplete="off" type="text" name="q[nrp]"
												value="<?= $q['nrp'] ?? '' ?>">
											</td>
											<td>
												<input class="form-control input-sm" autocomplete="off" type="text" name="q[nama]"
												value="<?= $q['nama'] ?? '' ?>">
											</td>
											<td>
												<select class="form-control input-sm" autocomplete="off" name="q[id_jabatan]">
													<option value="" selected="selected"></option>
													<?php foreach($jabatan_list as $item): ?>
														<?php $selected = isset($q['id_jabatan']) && $q['id_jabatan'] == $item->id ? 'selected="selected"' : ''; ?>
														<option value="<?= $item->id ?>" <?= $selected ?>><?= $item->nama ?></option>
													<?php endforeach; ?>
												</select>
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
												<input class="form-control input-sm datepicker" name="q[tanggal_usul_kenaikan_pangkat]" size="16" type="text" autocomplete="off" value="<?= change_date_format($q['tanggal_usul_kenaikan_pangkat'] ?? NULL, 'd M Y') ?>">
											</td>
											<td>
												<select class="form-control input-sm" autocomplete="off" name="q[id_kenaikan_pangkat]">
													<option value="" selected="selected"></option>
													<?php foreach($pangkat_list as $item): ?>
														<?php $selected = isset($q['id_kenaikan_pangkat']) && $q['id_kenaikan_pangkat'] == $item->id ? 'selected="selected"' : ''; ?>
														<option value="<?= $item->id ?>" <?= $selected ?>><?= $item->nama ?></option>
													<?php endforeach; ?>
												</select>
											</td>
											<td>
												<div class="pull-right">
													<button type="submit" class="btn btn-sm bg-gray">
														<i class="fa fa-search"></i> Cari
													</button>
													<a href="<?= site_url() ?>kenaikan-pangkat" class="btn btn-sm bg-gray" title="Hapus filter">
														<i class="fa fa-times"></i>
													</a>
												</div>
											</td>
										</form>
									</tr>
									<?php if(empty($page_data->data)): ?>
										<tr data-id="<?= $item->id ?>">
											<td colspan="8" style="text-align: center; background: #f0f0f0;">Tidak ada data</td>
										</tr>
									<?php else: ?>
										<?php $no = $offset + 1; foreach($page_data->data as $item): ?>
											<tr data-id="<?= $item->id ?>">
												<td style="text-align: center;"><?= $no++ ?>.</td>
												<td><?= $item->nrp ?></td>
												<td><?= $item->nama ?></td>
												<td><?= $item->jabatan ?></td>
												<td><?= $item->pangkat ?></td>
												<td><?= id_date_format('medium', $item->tanggal_usul_kenaikan_pangkat) ?></td>
												<td><?= $item->kenaikan_pangkat ?></td>
											</tr>
										<?php endforeach; ?>
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

<script type="text/javascript">

	function initDatepicker() {
		$(".datepicker").datepicker({
			format: "dd M yyyy",
			clearBtn: true,
			orientation: "bottom auto"
		});
		$(".datepicker").removeClass('datepicker');
	}

	initDatepicker();
</script>