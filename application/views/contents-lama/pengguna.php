<div class="content-header">
	<h1>
		<small><i class="fa fa-user"></i></small>
		Pengguna
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
							<a class="btn btn-sm btn-primary btn-flat" href="<?= site_url() ?>pengguna/tambah">
								<i class="fa fa-plus"></i> Tambah User
							</a>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<table id="table" class="table table-hover table-bordered">
								<thead>
									<tr>
										<th>No. </th>
										<th>Nama</th>
										<th>Username</th>
										<th>E-mail</th>
										<th>Role</th>
										<th style="width: 120px;">Tindakan</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<form>
											<td></td>
											<td>
												<input class="form-control input-sm" autocomplete="off" type="text" name="q[nama]"
												value="<?= $q['nama'] ?? '' ?>">
											</td>
											<td>
												<input class="form-control input-sm" autocomplete="off" type="text" name="q[username]"
												value="<?= $q['username'] ?? '' ?>">
											</td>
											<td>
												<input class="form-control input-sm" autocomplete="off" type="text" name="q[email]"
												value="<?= $q['email'] ?? '' ?>">
											</td>
											<td>
												<select class="form-control input-sm" autocomplete="off" name="q[id_role]">
													<option value="" selected="selected"></option>
													<?php foreach($roles as $item): ?>
														<?php $selected = isset($q['id_role']) && $q['id_role'] == $item->id ? 'selected="selected"' : ''; ?>
														<option value="<?= $item->id ?>" <?= $selected ?>><?= $item->nama ?></option>
													<?php endforeach; ?>
												</select>
											</td>
											<td>
												<div class="pull-right">
													<button type="submit" class="btn btn-sm bg-gray">
														<i class="fa fa-search"></i> Cari
													</button>
													<a href="<?= site_url() ?>pengguna" class="btn btn-sm bg-gray" title="Hapus filter">
														<i class="fa fa-times"></i>
													</a>
												</div>
											</td>
										</form>
									</tr>
									<?php $no = $offset + 1; foreach($page_data->data as $item): ?>
										<tr data-id="<?= $item->id ?>">
											<td style="text-align: center;"><?= $no++ ?>.</td>
											<td><?= $item->nama ?></td>
											<td><?= $item->username ?></td>
											<td><?= $item->email ?></td>
											<td><?= $item->role ?></td>
											<td>
												<div class="pull-right">
													<a class="btn btn-xs bg-gray" href="<?= site_url() ?>pengguna/edit/<?= $item->id ?>" title="Ubah">
														<i class="fa fa-pencil"></i>
													</a>
													<button class="btn btn-xs bg-gray btn-hapus" title="Hapus">
														<i class="fa fa-trash"></i>
													</button>
												</div>
											</td>
										</tr>
									<?php endforeach; ?>
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
		  text: "Apa anda yakin akan menghapus user ini?",
		  icon: "warning",
		  buttons: true,
  		dangerMode: true,
		})
		.then(function(isConfirm) {
			if(isConfirm) {
				$('#dummy-form [name=id]').val(id);
				$('#dummy-form').attr('action', '<?= site_url() ?>pengguna/hapus');
				$('#dummy-form').submit();
			}
		});
	});
</script>