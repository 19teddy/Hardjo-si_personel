<div class="content-header">
	<h1>
		<small><i class="fa fa-database"></i></small>
		<?= $title ?>
	</h1>
</div>

<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-md-8">

			<?php echo $this->renderer->render_alert(); ?>

			<div class="box box-primary">
				<div class="box-body">
					<div class="row" style="margin-bottom: 10px;">
						<div class="col-md-12">
							<div class="pull-left">
								<button id="add-button" class="btn btn-sm btn-primary btn-flat">
									<i class="fa fa-plus"></i> Tambah Data
								</button>
							</div>
							<div class="pull-right">
								<form class="form-inline">
									<div class="form-group">
										<input type="text" name="q[nama]" class="form-control input-sm" value="<?= $q['nama'] ?? '' ?>">
									</div>
									<button type="submit" class="btn btn-sm bg-gray"><i class="fa fa-search"></i></button>
									<a href="<?= site_url().'master/'.$key ?>" class="btn btn-sm bg-gray" title="Hapus filter"><i class="fa fa-times"></i></a>
								</form>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<table id="table" class="table table-hover table-bordered">
								<thead>
									<tr>
										<th style="width: 50px;">No.</th>
										<th>Nama</th>
										<th style="width: 80px;">Tindakan</th>
									</tr>
								</thead>
								<tbody>
									<?php $no = $offset + 1; foreach($page_data->data as $item): ?>
										<tr data-id="<?= $item->id ?>" data-json="<?= html_escape(json_encode($item)) ?>">
											<td style="text-align: center;"><?= $no++ ?>.</td>
											<td><?= $item->nama ?></td>
											<td>
												<div class="pull-right">
													<button class="btn btn-xs bg-gray btn-edit" title="Ubah">
														<i class="fa fa-pencil"></i>
													</button>
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

<div class="modal fade" id="modal-master">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title"><?= $title ?></h4>
			</div>
			<form class="form-horizontal" method="post">
				<input type="hidden" name="id" value="">
				<div class="modal-body">
					<div class="form-group">
						<label class="control-label col-md-3">Nama</label>
						<div class="col-md-9">
							<input type="text" name="nama" class="form-control" autocomplete="off">
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Simpan</button>
				</div>
			</form>
		</div>
	</div>
</div>

<form id="dummy-form" method="post" style="display: none;">
	<input type="text" name="id">
</form>

<script type="text/javascript">

	$('#add-button').click(function() {
		$('#modal-master [name=id]').val('');
		$('#modal-master [name=nama]').val('');
		$('#modal-master').modal('toggle');
	});

	$('#table').on('click', '.btn-edit', function() {
		let button = $(this);
		let tr = button.parents('tr');
		let data = JSON.parse(tr.attr('data-json'));

		$('#modal-master [name=id]').val(data.id);
		$('#modal-master [name=nama]').val(data.nama);
		$('#modal-master').modal('toggle');
	});

	$('#table').on('click', '.btn-hapus', function() {
		let button = $(this);
		let tr = button.parents('tr');
		let data = JSON.parse(tr.attr('data-json'));

		swal({
			text: "Apa anda yakin akan menghapus data ini?",
			icon: "warning",
			buttons: true,
			dangerMode: true,
		})
		.then(function(isConfirm) {
			if(isConfirm) {
				$('#dummy-form [name=id]').val(data.id);
				$('#dummy-form').attr('action', '<?= site_url().'master/'.$key ?>/hapus');
				$('#dummy-form').submit();
			}
		});
	});
</script>