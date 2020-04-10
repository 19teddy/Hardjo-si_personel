<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title><?= $this->renderer->render_title() ?></title>
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="shortcut icon" type="image/png" href="<?= base_url() ?>assets/img/logo/rspau-logo.png"/>
	<!-- Bootstrap 3.3.7 -->
	<link rel="stylesheet" href="<?= base_url() ?>assets/plugins/bootstrap/dist/css/bootstrap.min.css">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="<?= base_url() ?>assets/plugins/font-awesome/css/font-awesome.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="<?= base_url() ?>assets/plugins/Ionicons/css/ionicons.min.css">
	<!-- iCheck -->
	<link rel="stylesheet" href="<?= base_url() ?>assets/plugins/iCheck/square/blue.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="<?= base_url() ?>assets/plugins/Ionicons/css/ionicons.min.css">
	<!-- Select2 -->
	<link rel="stylesheet" href="<?= base_url() ?>assets/plugins/select2/dist/css/select2.min.css">
	<!-- DataTables -->
	<link rel="stylesheet" href="<?= base_url() ?>assets/plugins/DataTables/datatables.min.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/plugins/bootstrap-notify/animate.css">
	<!-- Datepicker -->
	<link rel="stylesheet" href="<?= base_url() ?>assets/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">

	<?php
		// LOAD PAGE CSS DEPENDENCIES
		echo $this->renderer->render_css();
		echo $this->renderer->render_content_css();
	?>

	<!-- Theme style -->
	<link rel="stylesheet" href="<?= base_url() ?>assets/css/AdminLTE.min.css">
	<!-- AdminLTE Skins. -->
	<link rel="stylesheet" href="<?= base_url() ?>assets/css/skins/skin-blue.min.css">
	<!-- Custom CSS. -->
	<link rel="stylesheet" href="<?= base_url() ?>assets/css/style.css">

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

	<!-- Google Font -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
	
	<!-- jQuery 3 -->
	<script src="<?= base_url() ?>assets/plugins/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="<?= base_url() ?>assets/plugins/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- DataTables -->
	<script src="<?= base_url() ?>assets/plugins/DataTables/dataTables.min.js"></script>
	<!-- SlimScroll -->
	<script src="<?= base_url() ?>assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="<?= base_url() ?>assets/plugins/fastclick/lib/fastclick.js"></script>
	<!-- SimpleCheckboxTable -->
	<script src="<?= base_url() ?>assets/plugins/simple-checkbox-table/dist/jquery.simple-checkbox-table.js"></script>
	<!-- Sweet Alert -->
	<script src="<?= base_url() ?>assets/plugins/swal/sweetalert.min.js"></script>
	<!-- Select2 -->
	<script src="<?= base_url() ?>assets/plugins/select2/dist/js/select2.min.js"></script>
	<!-- Bootstrap Notify -->
	<script src="<?= base_url() ?>assets/plugins/bootstrap-notify/bootstrap-notify.min.js"></script>
	<!-- Bootstrap Datepicker -->
	<script src="<?= base_url() ?>assets/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<script src="<?= base_url() ?>assets/js/custom.js"></script>
	<script type="text/javascript">
		window.numberFormat = new Intl.NumberFormat('en-US');
		window.escapeHtml = function(str) {
			return typeof str == 'string' ? str
				.replace(/&/g, "&amp;")
				.replace(/</g, "&lt;")
				.replace(/>/g, "&gt;")
				.replace(/"/g, "&quot;")
				.replace(/'/g, "&#039;") : '';
		 };
	</script>
	
	<?php $this->renderer->render_json(); ?>
</head>