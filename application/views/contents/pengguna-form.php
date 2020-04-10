<?php
	
	/* PENGGUNA FORM GROUP -> INSERT - UPDATE  */

	if(! isset($form_data)) {
		$form_data = (Object) array_fill_keys([
			'nama',
			'email',
			'id_role',
			'username',
			'password',
		], NULL);
	}

	$alert = $this->session->flashdata('alert');

	$has_error = function($field) use ($alert) {
		return isset($alert['fields'][$field]) ? 'has-error' : '';
	};

	$help_block = function($field) use ($alert) {
		if(isset($alert['fields'][$field])) {
			return "<span class=\"help-block\">".$alert['fields'][$field]."</span>";
		}
	};

?>
<div class="content-header">
	<h1>
		<small><i class="fa fa-user"></i></small>
		<?= $is_edit ? 'Edit' : 'Tambah' ?>
		Pengguna
	</h1>
</div>

<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-sm-12 col-md-6">

			<?php echo $this->renderer->render_alert(); ?>

			<div class="box box-primary">
				<div class="box-header with-border">
					<h3 class="box-title">Form Pengguna</h3>
				</div>
				<div class="box-body">

					<form id="form" method="post" action="<?= raw_query_string() ?>" class="form-horizontal">
						<div class="box-body">
							<div class="row">
								<div class="col-md-12">
									<div class="form-group <?= $has_error('nama') ?>">
										<label class="control-label col-md-3">Nama</label>
										<div class="col-md-9">
											<input type="text" name="nama" class="form-control" value="<?= $form_data->nama ?>">
											<?= $help_block('nama') ?>
										</div>
									</div>
									<div class="form-group <?= $has_error('email') ?>">
										<label class="control-label col-md-3">E-mail</label>
										<div class="col-md-9">
											<input type="text" name="email" class="form-control" value="<?= $form_data->email ?>">
											<?= $help_block('email') ?>
										</div>
									</div>
									<div class="form-group <?= $has_error('id_role') ?>">
										<label class="control-label col-md-3">Role</label>
										<div class="col-md-9">
											<select class="form-control" name="id_role">
												<option value="" selected="selected" disabled="disabled">- Pilih Role -</option>
												<?php foreach($roles as $item): ?>
													<?php $selected = $item->id == $form_data->id_role ? 'selected="selected"' : ''; ?>
													<option value="<?= $item->id ?>" <?= $selected ?>><?= html_escape($item->nama) ?></option>
												<?php endforeach; ?>
											</select>
											<?= $help_block('id_role') ?>
										</div>
									</div>
									<div class="form-group <?= $has_error('username') ?>">
										<label class="control-label col-md-3">Username</label>
										<div class="col-md-9">
											<input type="text" name="username" class="form-control" value="<?= $form_data->username ?>">
											<?= $help_block('username') ?>
										</div>
									</div>
									<?php if(!$is_edit): ?>
									<div class="form-group <?= $has_error('password') ?>">
										<label class="control-label col-md-3">Password</label>
										<div class="col-md-9">
											<input type="text" name="password" class="form-control" value="<?= $form_data->password ?>">
											<?= $help_block('password') ?>
										</div>
									</div>
									<?php endif; ?>
								</div>
							</div>
						</div>
						<div class="box-footer">
							<button class="btn btn-primary btn-flat"><i class="fa fa-save"></i> Simpan</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>