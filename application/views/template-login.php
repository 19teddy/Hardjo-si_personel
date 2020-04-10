<!DOCTYPE html>
<html>

<?php

	$this->load->view('head');

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

<body class="hold-transition login-page" style="background: #eee;">
	<div class="login-box" style="border: solid 1px #ccc;">
		<!-- /.login-logo -->
		<div class="login-box-body" align="center">

			<img src="<?= base_url() ?>assets/img/logo/rspau-logo.png" height="150px">

			<h3 class="login-box-msg" style="margin-top: 10px;">Sistem Personel</h3>
			<hr style="margin-top: 0px;">

			<?php if(!empty($alert) && empty($alert['fields'])): ?>
			<div class="callout callout-danger">
        <p><?= $alert['message'] ?></p>
      </div>
    	<?php endif; ?>

			<form method="post">
				<?= $this->renderer->xsrf_tag() ?>

				<div class="form-group has-feedback <?= $has_error('username') ?>">
					<input type="text" class="form-control" placeholder="Username" autocomplete="off" name="username">
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
					<?= $help_block('username') ?>
				</div>

				<div class="form-group has-feedback <?= $has_error('password') ?>">
					<input type="password" class="form-control" placeholder="Password" autocomplete="off"  name="password">
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
					<?= $help_block('password') ?>
				</div>
				<div class="row">
					<!-- /.col -->
					<div class="col-xs-4">
						<button type="submit" class="btn btn-primary btn-block btn-flat">Log In</button>
					</div>
					<!-- /.col -->
				</div>
			</form>

		</div>
		<!-- /.login-box-body -->
	</div>
	<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="<?= base_url() ?>assets/plugins/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?= base_url() ?>assets/plugins/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="<?= base_url() ?>assets/plugins/iCheck/icheck.min.js"></script>
<script>
	$(function () {
		$('input').iCheck({
			checkboxClass: 'icheckbox_square-blue',
			radioClass: 'iradio_square-blue',
			increaseArea: '20%' /* optional */
		});
	});
</script>
</body>
</html>
