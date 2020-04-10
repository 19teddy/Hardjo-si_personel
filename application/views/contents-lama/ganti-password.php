<?php
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
	<h1><small><i class="fa fa-key"></i></small> Ganti Password</h1>
</div>

<section class="content">
	<div class="row">
		<div class="col-md-6">

			<?php if(isset($alert['type']) && empty($alert['fields'])): ?>
			<div class="alert alert-success alert-dismissible">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
				<i class="icon fa fa-check"></i> <?= $alert['message'] ?>
			</div>
			<?php endif; ?>
			
			<div class="box">
				<div class="box-body">
					<div class="row">
						<div class="col-lg-12">
							<form class="form" id="form-sekolah" method="post">
								<?= $this->renderer->xsrf_tag() ?>
								<div class="form-group <?= $has_error('old_password') ?>">
									<label>Password Lama</label>
									<input type="password" class="form-control" name="old_password">
									<?= $help_block('old_password') ?>
								</div>
								<div class="form-group <?= $has_error('new_password') ?>">
									<label>Password Baru</label>
									<input type="password" class="form-control" name="new_password">
									<?= $help_block('new_password') ?>
								</div>
								<div class="form-group <?= $has_error('confirm_password') ?>">
									<label>Konfirmasi Password</label>
									<input type="password" class="form-control" name="confirm_password">
									<?= $help_block('confirm_password') ?>
								</div>
								<button type="submit" class="btn btn-primary pull-right">Simpan</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6 col-sm-12 hidden-xs" style="text-align: center; height: 256px;">
			<i class="fa fa-key" style="font-size: 96px; color: #00000010; margin-top: 96px;"></i>
		</div>
	</div>
</section>