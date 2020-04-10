<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
	<style type="text/css" >
		* {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 12px;
		}
		.bordered-table {
			border-collapse: collapse;
		}

		.bordered-table th {
			border: solid 1px black;
			padding: 3px 5px;
			text-align: center;
		}

		.bordered-table td {
			border: solid 1px black;
			padding: 3px 5px;
		}

		.title-table {
			width: 100%; font-weight: bold;
			margin-bottom: 10px;
		}
		.page_break { 
			page-break-before: always; 
		}
    

	</style>
</head>
<body>

	<div style = "width: 100%;"> 
		<span><h2 style="font-size: 15px">DATA KELUARGA (SUAMI/ISTRI/ANAK/ORANG TUA)</h2></span>
	</div>
	 
	<table class="bordered-table" cellspacing="0" style="word-wrap: break-word; table-layout: fixed; width: 100%; font-size: 12px">
		<thead>
			<tr>
				<th>NAMA</th>
				<th>TMP TGL LAHIR</th>
				<th>JENIS KELAMIN</th>
				<th>SUKU</th>
				<th>TMP NIKAH</th>
				<th>STATUS (HIDUP/MENINGGAL)</th>
				<th style="font-size: 11px">TERTANGGUNG (YA/TIDAK)</th>
				<th style="font-size: 11px">HUBUNGAN (SUAMI/ISTRI/ANAK/ORANG TUA)</th>
				<th>AGAMA</th>
				<th>ALAMAT</th>
				<th>STATUS (KAWIN/TIDAK KAWIN)</th>
				<th>TGL NIKAH</th>
				<th style="font-size: 11px">PEKERJAAN</th>
			</tr>
		</thead>
		<tbody>
			<?php foreach ($data_keluarga as $dk): ?>
			<?php 

				$tgl_lahir 	 = strtoupper(id_date_format('medium', $dk['tanggal_lahir'])); 
				$tgl_menikah = date('d-m-Y', strtotime($dk['tanggal_menikah'])); 
			?>
			<tr>
				<td><?= strtoupper($dk['nama']);?></td>
				<td><?= strtoupper($dk['tempat_lahir']).','.$tgl_lahir; ?></td>
				<td><?= strtoupper($dk['jenis_kelamin']);?></td>
				<td><?= strtoupper($dk['suku']);?></td>
				<td><?= strtoupper($dk['tempat_menikah']);?></td>
				<td><?= strtoupper($dk['status_kehidupan']);?></td>
				<td><?= strtoupper($dk['status_tertanggung']);?></td>
				<td><?= strtoupper($dk['hubungan_keluarga']);?></td>
				<td><?= strtoupper($dk['agama']);?></td>
				<td><?= strtoupper($dk['alamat']);?></td>
				<td><?= strtoupper($dk['status_pernikahan']);?></td>
				<td><?= $tgl_menikah?></td>
				<td><?= strtoupper($dk['pekerjaan']);?></td>
			</tr>
			<?php endforeach ?>
		</tbody>
	</table>

	<table style="border-collapse: collapse; width: 100%; margin-top: 50px; ">
		<tr>
			<td style="width: 70%;"></td>
			<td style="width: 20%;">
				Yogyakarta,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <?=  substr(id_date_format('medium', current_timestamp()), 2) ?>
				<div style="height: 70px;"></div>
				______________________________
			</td>
		</tr>
	</table>

</body>
</html>