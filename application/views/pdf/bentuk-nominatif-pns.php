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

	<table style="border-collapse: collapse; width: 100%; margin-top: 0px; margin-bottom: 20px">
		<tr>

			<td style="width: 90%; ">
				DINAS KESEHATAN ANGKATAN UDARA<br><span style="display: block; padding-left: 30px; padding-bottom: -5px">RSPAU dr. S. HARDJOLUKITO</span>__________________________________
				<div style="height: 15px;"></div>
				<span style="text-align: center;display: block; padding-right: 60px"></span>
			</td>
		<!-- 	<td style="width: 30%;">
				<span style="padding-left:0px">Lampiran I Surat Ka RSPAU</span><br><span style="display: block; padding-bottom: -5px; padding-top: 2px">Nomor B/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/ II /2019</span> <br>
				<span style="text-align: left;display: block;  padding-bottom: -5px; padding-top: -7px">Tanggal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <?=  substr(id_date_format('medium', current_timestamp()), 2) ?></span>________________________
				<div style="height: 0px;"></div>
				<span style="text-align: center;display: block; padding-right: 60px"></span>
			</td> -->
		</tr>
	</table>

	<div style = "width: 100%; margin-bottom: 30px; margin-top:0px; "> 
		<span style="text-align: center;display: block;font-size: 15px; text-align: center">DAFTAR NOMINATIF  PERSONEL  PNS  RSPAU dr. S. HARDJOLUKITO DISKESAU</span>
		<!-- <span style="text-align: center;display: block;font-size: 15px; text-align: center">BULAN JANUARI TAHUN 2019</span> -->
	</div>

	<!-- <table style="border-collapse: collapse; width: 100%; margin-top: 0px; margin-bottom: 20px; ">
		<tr>

			<td style="width: 15%; font-size: 10px">
				SATUAN<br><span style="display: block;  padding-bottom: -5px; font-size: 10px">SATUAN KERJA</span>
			</td>
			<td style="width: 90%;  font-size: 10px ">
				DINAS KESEHATAN ANGKATAN UDARA<span style="display: block;  padding-bottom: -5px;  font-size: 10px" >RSPAU dr. S. HARDJOLUKITO</span>
			</td>
			<td style="width: 40%;  font-size: 10px">
				&nbsp;<span style="display: block;  padding-bottom: -5px">Bentuk Pers No. 120 RTM</span>
			</td>
		</tr>
	</table> -->
 <!-- class="bordered-table" cellspacing="0" -->
	<table style="width: 100% ;" class="bordered-table" cellspacing="0">
		<thead>
			<tr>
				<th rowspan="2"  style="width:1%">NO</th>
				<th rowspan="2" >JABATAN</th>
				<th rowspan="2" style="width:1%">GOL JAB/GRADE</th>
				<th rowspan="1" colspan="1" style="width:10%">NAMA</th>
				<th rowspan="2" >PANGKAT KORP</th>
				<th rowspan="2" >BIDANG PROFESI</th>
				<th rowspan="2" >SPESIALIS</th>
				<th rowspan="2" style="width:1%">DIKMILTI / TAHUN LULUS</th>
				<th rowspan="2" >DIKUMTI</th>
				<th rowspan="2" >AGAMA</th>
				<th rowspan="2" >TMT PANGKAT TERAKHIR</th>
				<th rowspan="2" >DIKMA / DIKTUK TMT</th>
				<th rowspan="2" style="width:1%">ASAL MASUKAN / TMT</th>
				<th rowspan="2" >TMT / JABATAN </th>
				<th rowspan="2" style="width:5%">KET</th>
			</tr>
			<tr>
				<th> TEMPAT TANGGAL LAHIR</th>
			</tr>
			<tr>
			<?php for($n=1; $n<=15; $n++):?>
				<th ><?= $n;?></th>
			<?php endfor;?>	
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>Pengatur Perawat <br> RSPAU dr. S. Hardjolukito</td>
				<td>5</td>
				<td>drh. Indriana <br> Yogyakarta, 29-02-1964</td>
				<td>Pembina    IV-A / Kes <br> 196402291996032001</td>
				<td>Dokter</td>
				<td>Hewan</td>
				<td>Latsarmil <br> 1996</td>
				<td>S1 <br> Kedokteran Hewan</td>
				<td>Kristen</td>
				<td>01-04-2013</td>
				<td>CPNS <br> 01/03/1996</td>
				<td>CPNS <br> 01/03/1996</td>
				<td>01-03-2016</td>
				<td></td>
			</tr>
		</tbody>
	</table>

	 
	<table style="border-collapse: collapse; width: 100%; margin-top: 50px;" >
		<tr>
			<td style="width: 70%;"></td>
			<td style="width: 40%;">
				<span style="text-align: center;display: block; padding-right: 60px">a.n Kepala RSPAU dr. S. Hardjolukito</span><br><span style="text-align: center;display: block; padding-right: 80px; padding-top: -15px">Waka,</span>
				<div style="height: 60px;"></div>
				<span style="text-align: center;display: block; padding-right: 60px">dr. Djarot Sudjatmoko, Sp.,KJ. </span>
				<span style="text-align: center;display: block; padding-right: 60px">Kolonel Kes NRP 516302</span>
			</td>
		</tr>
	</table>

</body>
</html>