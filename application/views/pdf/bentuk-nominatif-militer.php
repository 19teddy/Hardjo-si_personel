<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
	<style type="text/css" >
		* {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 9px;
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
		<span style="text-align: center;display: block;font-size: 15px; text-align: center">DAFTAR NOMINATIF  PERSONEL MILITER  RSPAU dr. S. HARDJOLUKITO DISKESAU</span>
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
				<th rowspan="2"  style="width:1%">NO URUT</th>
				<th rowspan="2"  style="width:1%">BAG</th>
				<th rowspan="1" colspan="1" style="width:10%">NAMA</th>
				<th rowspan="2" >PANGKAT KORP</th>
				<th rowspan="2" >NRP TMT PKT</th>
				<th rowspan="2" >JABATAN TMT JABATAN</th>
				<th rowspan="2" style="width:1%">GOL JABATAN</th>
				<th rowspan="2" >TMT RUMKIT</th>
				<th rowspan="2" >DIKUM JURDIKUM</th>
				<th rowspan="2" >DIKMA / DIKTUK TMT</th>
				<th rowspan="2" >DIKJANG / DIKMILTI TH</th>
				<th rowspan="2" style="width:1%">AGM</th>
				<th rowspan="2" style="width:1%">STATUS</th>
				<th rowspan="2" >SUAMI / ISTRI</th>
				<th rowspan="2" style="width:5%">KGB YAD PKT YAD</th>
				<th rowspan="2" style="width:5%">TANDA KEHORMATAN</th>
				<th rowspan="2" style="width:5%">MASUK TUNJANGAN</th>
				<th rowspan="2" >KET</th>
			</tr>
			<tr>
				<th> TEMPAT TANGGAL LAHIR</th>
			</tr>
			<tr>
			<?php for($n=1; $n<=18; $n++):?>
				<th ><?= $n;?></th>
			<?php endfor;?>	
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>1</td>
				<td>Dr. dr. Isdwiranto Iskanto, Msc., Sp.BS(K)., Sp.KP</td>
				<td>Marsekal Pertama TNI</td>
				<td>520712</td>
				<td>Ka RSPAU dr. S. Hardjolukito 25-04-2017</td>
				<td>3 P</td>
				<td>25-04-2017</td>
				<td>S-3 Prog.Doktor Pasca Srajana UNAIR Surabaya</td>
				<td>Sepamilwa ABRI A-1   1992</td>
				<td>Seskoau A-XLIV 2007</td>
				<td>I</td>
				<td>K-4</td>
				<td>Ny. Meita Indiastiati</td>
				<td>01-02-2020</td>
				<td></td>
				<td></td>
				<td>MDF 08-03-1992</td>
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