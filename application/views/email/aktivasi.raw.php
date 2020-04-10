<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta name="viewport" content="width=device-width" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<style type="text/css">
		body {
			margin: 0;
		}
		body, table, td, p, a, li, blockquote {
			-webkit-text-size-adjust: none!important;
			font-family: 'Times New Roman', serif;
			font-style: normal;
			font-weight: 400;
		}
		.top, .bottom {
			color: #ffffff;
			background-color: #333;
			margin: 6px 3px;
		}
		.top > td {
			padding: 10px;
			text-align: center;
		}
		.bottom > td {
			padding: 10px;
			font-weight: 200;
		}
		.table {
			width: 40%;
		}
		.button {
			color: #ffffff;
			border-bottom-width: 8px;
			padding: 5px 12px;
			border-radius: 6px;
			transition: all 0.1s;
			display: inline-block;
			margin-bottom: 0;
			font-size: 22px;
			font-weight: 400;
			line-height: 1.42857143;
			text-align: center;
			white-space: nowrap;
			vertical-align: middle;
			background-image: none;
			border: 1px solid transparent;
			outline: none !important;
			text-decoration: none;
			box-sizing: border-box;
		}
		.activate {
			background-color: #0088cc;
			border-color: #0088cc #0088cc #006699 #0088cc;
		}
		.decline {
			background-color: #e36159;
			border-color: #e36159 #e36159 #dc372d;
		}
	</style>
</head>
<body>
	<table class="table" cellspacing="0" cellpadding="0" align="center">
		<tbody>
			<tr class="top">
				<td><span>SISTEM PERSONEL</span></td>
				<td><?= id_date_format('long') ?></td>
			</tr>
			<tr>
				<td colspan="2" align="center" style="padding: 30px;">
					<img style="height: 240px;" src="<?= base_url('assets/img/logo-email.jpg') ?>">
				</td>
			</tr>
			<tr>
				<td colspan="2" style="padding: 10px 6px;">
					<h4>Yth. Dennis Arfan,</h4>
					<p>Silahkan klik tombol dibawah untuk aktivasi akun anda</p>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center" style="padding: 10px;">
					<a href="<?= site_url('user/verifyaccount/test') ?>" class="button activate">AKTIVASI</a>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="padding: 10px;">
					Atau salin tautan berikut ke alamat browser jika tautan diatas tidak muncul:<br>
					<?= site_url('user/verifyaccount/test') ?>
				</td>
			</tr>
			<tr><td colspan="2" style="padding: 5px;"></td></tr>
			<tr class="bottom">
				<td colspan="2">
					Jangan Berikan Email ini kepada siapa pun
					<br><br>
					<small>&copy; 2019 Mediantara Kreasindo</small>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>