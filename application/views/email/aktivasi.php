<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="viewport" content="width=device-width" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	
<style>body {
margin: 0;
}
body {
-webkit-text-size-adjust: none !important; font-family: 'Times New Roman', serif; font-style: normal; font-weight: 400;
}
</style></head>
<body style="-webkit-text-size-adjust: none !important; font-family: 'Times New Roman', serif; font-style: normal; font-weight: 400; margin: 0;">
	<table class="table" cellspacing="0" cellpadding="0" align="center" style="-webkit-text-size-adjust: none !important; font-family: 'Times New Roman', serif; font-style: normal; font-weight: 400; width: 40%;">
		<tbody>
			<tr class="top" style="color: #ffffff; margin: 6px 3px;" bgcolor="#333">
				<td style="-webkit-text-size-adjust: none !important; font-family: 'Times New Roman', serif; font-style: normal; font-weight: 400; padding: 10px;" align="center"><span>SISTEM PERSONEL</span></td>
				<td style="-webkit-text-size-adjust: none !important; font-family: 'Times New Roman', serif; font-style: normal; font-weight: 400; padding: 10px;" align="center"><?= id_date_format('long') ?></td>
			</tr>
			<tr>
				<td colspan="2" align="center" style="-webkit-text-size-adjust: none !important; font-family: 'Times New Roman', serif; font-style: normal; font-weight: 400; padding: 30px;">
					<img style="height: 240px;" src="https://cdn1.imggmi.com/uploads/2019/4/24/25549b67de7b90e85204956c712acbab-full.png" alt="Logo RSPAU" />
				</td>
			</tr>
			<tr>
				<td colspan="2" style="-webkit-text-size-adjust: none !important; font-family: 'Times New Roman', serif; font-style: normal; font-weight: 400; padding: 10px 6px;">
					<h4>Yth. <?= $nama ?></h4>
					<p style="-webkit-text-size-adjust: none !important; font-family: 'Times New Roman', serif; font-style: normal; font-weight: 400;">Silahkan klik tombol dibawah untuk aktivasi akun anda</p>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center" style="-webkit-text-size-adjust: none !important; font-family: 'Times New Roman', serif; font-style: normal; font-weight: 400; padding: 10px;">
					<a href="<?= site_url() ?>user/aktivasi?token=<?= urlencode($token) ?>" class="button activate" style="-webkit-text-size-adjust: none !important; font-family: 'Times New Roman', serif; font-style: normal; font-weight: 400; color: #ffffff; border-radius: 6px; transition: all 0.1s; display: inline-block; margin-bottom: 0; font-size: 22px; line-height: 1.42857143; text-align: center; white-space: nowrap; vertical-align: middle; outline: none !important; text-decoration: none; box-sizing: border-box; background: #0088cc none; padding: 5px 12px; border-color: #0088cc #0088cc #006699; border-style: solid; border-width: 1px;" target="_blank">AKTIVASI</a>
				</td>
			</tr>
			<tr><td colspan="2" style="-webkit-text-size-adjust: none !important; font-family: 'Times New Roman', serif; font-style: normal; font-weight: 400; padding: 5px;"></td></tr>
			<tr class="bottom" style="color: #ffffff; margin: 6px 3px;" bgcolor="#333">
				<td colspan="2" style="-webkit-text-size-adjust: none !important; font-family: 'Times New Roman', serif; font-style: normal; font-weight: 200; padding: 10px;">
					Jangan Berikan Email ini kepada siapa pun
					<br /><br />
					<small>© 2019 Mediantara Kreasindo</small>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>
