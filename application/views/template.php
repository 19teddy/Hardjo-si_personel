<!DOCTYPE html>
<html>

<?php $this->load->view('head'); ?>

<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">

	<header class="main-header">
		<!-- Logo -->
		<a href="<?= base_url() ?>" class="logo">
			<!-- mini logo for sidebar mini 50x50 pixels -->
			<span class="logo-mini"><i class="fa fa-globe"></i></span>
			<!-- logo for regular state and mobile devices -->
			<span class="logo-lg">RSPAU</span>
		</a>
		<!-- Header Navbar: style can be found in header.less -->
		<nav class="navbar navbar-static-top">
			<!-- Sidebar toggle button-->
			<a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>

			<div class="navbar-custom-menu">
				<ul class="nav navbar-nav">
					<!-- User Account: style can be found in dropdown.less -->
					<li class="dropdown user user-menu">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<img src="<?= base_url() ?>assets/img/avatar/dummy-user.png" class="user-image" alt="User Image">
							<span class="hidden-xs"><?= $userdata['nama'] ?? $userdata['username'] ?></span>
						</a>
						<ul class="dropdown-menu">
							<!-- User image -->
							<li class="user-header">
								<img src="<?= base_url() ?>assets/img/avatar/dummy-user.png" class="img-circle" alt="User Image">
								<p>
									<?= $userdata['nama'] ?? $userdata['username'] ?> -
									<?= $userdata['pangkat'] ?? $userdata['nip'] ?? $userdata['email'] ?>
									<small>RSPAU</small>
								</p>
							</li>
							<!-- Menu Footer-->
							<li class="user-footer">
								<div class="pull-left">
									<a href="<?= site_url() ?>user/ganti-password" class="btn btn-default btn-flat"><i class="fa fa-key"></i> Ganti Password</a>
								</div>
								<div class="pull-right">
									<a href="<?= site_url() ?>user/logout" class="btn btn-default btn-flat"><i class="fa fa-sign-out"></i> Log Out</a>
								</div>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</nav>
	</header>

	<!-- =============================================== -->

	<!-- Left side column. contains the sidebar -->
	<aside class="main-sidebar">
		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">
			<!-- Sidebar user panel -->
			<div class="user-panel">
				<div class="pull-left image">
					<img src="<?= base_url() ?>assets/img/avatar/dummy-user.png" class="img-circle" alt="User Image">
				</div>
				<div class="pull-left info">
					<p><?= $userdata['nama'] ?? $userdata['username'] ?></p>
					<a href="javascript:;"><?= $userdata['pangkat'] ?? $userdata['nip'] ?? $userdata['email'] ?></a>
				</div>
			</div>

			<?php $this->load->view('navigation'); ?>
		</section>
		<!-- /.sidebar -->
	</aside>

	<!-- =============================================== -->

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<?= $this->renderer->render_content(); ?>
	</div>
	<!-- /.content-wrapper -->

	<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<b>Version</b> 2.4.0
		</div>
		<strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
		reserved.
	</footer>
	
	<!-- Add the sidebar's background. This div must be placed
			 immediately after the control sidebar -->
	<div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- AdminLTE App -->
<script src="<?= base_url() ?>assets/js/adminlte.min.js"></script>
<script>
	$(document).ready(function () {
		$('.sidebar-menu').tree()
	})
</script>

<?php
	// LOAD PAGE JS DEPENDENCIES
	echo $this->renderer->render_js();
	echo $this->renderer->render_content_js();
?>
</body>
</html>
