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

	<div style = "width: 33%; text-align: center; border-bottom: 1px solid black; margin-bottom: 0px "> 
		<span>DINAS KESEHATAN ANGKATAN UDARA </span> 
		<span>RSPAU dr. S. HARDJOLUKITO  </span> 
	</div>

	<div style = "width: 100%; text-align: center;  margin-bottom: 20px; margin-top: 0px "> 
		<span><h2 style="font-size: 20px">RIWAYAT HIDUP</h2></span>
	</div>

	<div style = "width: 100%; margin-bottom: 20px; margin-top:0px; "> 
		<span><h2 style="font-size: 15px">DATA POKOK</h2></span>
	</div>

	<table style="font-size: 10px; width: 100%; margin-bottom: 3px;">
		<tr>
			<td style="width: 150px;">NAMA</td>
			<td style="width: 10px;">:</td>
			<td style="width: 350px;"><?php echo strtoupper($nama); ?></td>
			<td style="padding:0px; margin:0px; text-align: center; padding-top: -4px" rowspan="8">
				<?php  if(isset($photo_filename) && !empty($photo_filename)): ?>
				<img style="padding:0px; margin:0px; width: 4cm; height: 6cm;" src="<?php echo base_url('/foto/2x3.'.$photo_filename)?>">
				<?php else: ?>
				<img id="img-preview" src="<?= site_url() ?>assets/img/placeholder-person.png" class="img-thumbnail" style="padding:0px; margin:0px; width: 4cm; height: 6cm;">
				<?php endif; ?>
			</td>
		</tr>
		<tr>
			<td>PANGKAT</td>
			<td>:</td>
			<td><?php echo strtoupper($pangkat); ?></td>
		</tr>
		<tr>
			<td>KORP/PROF/SPES</td>
			<td>:</td>
			<td >
				<?php if(!empty($bagian) && !empty($profesi) && !empty($spesialis)):?>
					<?= strtoupper($bagian.' / '.$profesi.' / '.$spesialis);?>
				<?php elseif(!empty($bagian) && !empty($profesi)):?>
					<?= strtoupper($bagian.' / '.$profesi);?>
				<?php elseif(!empty($bagian) && !empty($spesialis)):?>
					<?= strtoupper($bagian.' / '.$spesialis);?>
				<?php elseif(!empty($profesi) && !empty($spesialis)):?>
					<?= strtoupper($profesi.' / '.$spesialis);?>
				<?php elseif(!empty($bagian)):?>
					<?= strtoupper($bagian);?>
				<?php elseif(!empty($profesi)):?>
					<?= strtoupper($profesi);?>
				<?php elseif(!empty($spesialis)):?>
					<?= strtoupper($spesialis);?>
				<?php endif;?>					
			</td>
		</tr>
			<tr>
			<td>NRP/NBI</td>
			<td>:</td>
			<td ><?php echo strtoupper($nrp); ?></td>
		</tr>
		</tr>
			<tr>
			<td>ASAL MASUK</td>
			<td>:</td>
			<td ><?php echo strtoupper($asal_masuk); ?></td>
		</tr>
		</tr>
			<tr>
			<td>TANGGAL MASUK</td>
			<td>:</td>
			<td><?php echo date('d-m-Y', strtotime($asal_masuk));  ?></td>
		</tr>
		</tr>
			<tr>
			<td>DIKMILTI</td>
			<td>:</td>
			<td><?php echo  strtoupper($dikmilti); ?></td>
		</tr>
		</tr>
			<tr>
			<td>TMT DIKMILTI</td>
			<td>:</td>
			<td ><?php echo date('d-m-Y', strtotime($tmt_dikmilti)); ?></td>
		</tr>
		</tr>
			<tr>
			<td>DIKUMTI</td>
			<td>:</td>
			<td colspan="2"><?php echo  strtoupper($dikumti); ?></td>
		</tr>
		</tr>
			<tr>
			<td>TMT DIKUMTI</td>
			<td>:</td>
			<td colspan="2"><?php echo date('d-m-Y', strtotime($tmt_dikumti)); ?></td>
		</tr>
		</tr>
			<tr>
			<td>JABATAN</td>
			<td>:</td>
			<td colspan="2"><?php echo  strtoupper($jabatan); ?></td>
		</tr>
		</tr>
			<tr>
			<td>GOL JABATAN</td>
			<td>:</td>
			<td colspan="2"><?php echo strtoupper($golongan); ?></td>
		</tr>
		</tr>
			<tr>
			<td>GRADE</td>
			<td>:</td>
			<td colspan="2"><?php echo strtoupper($grade); ?></td>
		</tr>
		</tr>
			<tr>
			<td>KESATUAN</td>
			<td>:</td>
			<td colspan="2"><?php echo $kesatuan; ?></td>
		</tr>
		</tr>
			<tr>
			<td>KOTAMA</td>
			<td>:</td>
			<td colspan="2"><?php echo strtoupper($kotama); ?></td>
		</tr>
		</tr>
			<tr>
			<td>TANGGAL LAHIR</td>
			<td>:</td>
			<td colspan="2"><?php echo  date('d-m-Y',strtotime($grade)); ?></td>
		</tr>
		</tr>
			<tr>
			<td>AGAMA</td>
			<td>:</td>
			<td colspan="2"><?php echo strtoupper($agama); ?></td>
		</tr>
		</tr>
			<tr>
			<td>SUKU</td>
			<td>:</td>
			<td colspan="2"><?php echo strtoupper($suku); ?></td>
		</tr>
		</tr>
			<tr>
			<td>JENIS KELAMIN</td>
			<td>:</td>
			<td colspan="2"><?php echo strtoupper($jenis_kelamin); ?></td>
		</tr>
		</tr>
			<tr>
			<td>TINGGI BADAN</td>
			<td>:</td>
			<td colspan="2"><?php echo strtoupper($tinggi_badan); ?>&nbsp;cm</td>
		</tr>
		</tr>
			<tr>
			<td>BERAT BADAN</td>
			<td>:</td>
			<td colspan="2"><?php echo strtoupper($berat_badan); ?>&nbsp;kg</td>
		</tr>
		</tr>
			<tr>
			<td>GOLONGAN DARAH</td>
			<td>:</td>
			<td colspan="2"><?php echo strtoupper($golongan_darah); ?></td>
		</tr>
		</tr>
			<tr>
			<td>STATUS PERNIKAHAN</td>
			<td>:</td>
			<td colspan="2"><?php echo strtoupper($status_pernikahan); ?></td>
		</tr>
		</tr>
			<tr>
			<td>ALAMAT</td>
			<td>:</td>
			<td colspan="2"><?php echo strtoupper($alamat); ?></td>
		</tr>
		</tr>
			<tr>
			<td>TELEPON</td>
			<td>:</td>
			<td colspan="2"><?php echo strtoupper($no_hp); ?></td>
		</tr>
	</table>

	<div style = "width: 100%; margin-bottom: 5px; margin-top:0px; "> 
		<span><h2 style="font-size: 15px">PENDIDIKAN UMUM</h2></span>
	</div>
	<table style="width: 100%;" class="bordered-table" cellspacing="0">
		<thead>
			<tr>
				<th style="width: 5%;">NO</th>
				<th>LEMDIK</th>
				<th>SEKOLAH</th>
				<th>THN MASUK</th>
				<th>THN KELUAR</th>
			</tr>
		</thead>
		<tbody>
			<?php $no=1; foreach($riwayat_pendidikan_umum as $rpu):?>
			<tr>
				<td><?= $no;?></td>
				<td><?= $rpu['lemdik'];?></td>
				<td><?= $rpu['sekolah'];?></td>
				<td><?= date('d-m-Y', strtotime($rpu['tahun_masuk']));?></td>
				<td><?= date('d-m-Y', strtotime($rpu['tahun_keluar']));?></td>
			</tr>
			<?php $no++; endforeach;?>

		</tbody>
	</table>

	<div style = "width: 100%; margin-bottom: 5px; margin-top:0px; "> 
		<span><h2 style="font-size: 15px">PENDIDIKAN MILITER (KURSUS)</h2></span>
	</div>
	<table style="width: 100%;" class="bordered-table" cellspacing="0">
		<thead>
			<tr>
				<th style="width: 5%;">NO</th>
				<th>LEMDIK/SEKOLAH</th>
				<th>THN MASUK</th>
				<th>THN KELUAR</th>
				<th>ANGKT</th>
				<th>TMT</th>
			</tr>
		</thead>
		<tbody>
			<?php $no=1; foreach($riwayat_pendidikan_militer as $rpm):?>
			<tr>
				<td><?= $no;?></td>
				<td><?= $rpm['sekolah'];?></td>
				<td><?= date('d-m-Y', strtotime($rpm['tahun_masuk']));?></td>
				<td><?= date('d-m-Y', strtotime($rpm['tahun_keluar']));?></td>
				<td><?= $rpm['angkatan'];?></td>
				<td><?= date('d-m-Y', strtotime($rpm['tmt']));?></td>
			</tr>
			<?php $no++; endforeach;?>
		</tbody>
	</table>

	<div style = "width: 100%; margin-bottom: 5px; margin-top:0px; "> 
		<span><h2 style="font-size: 15px">RIWAYAT PANGKAT</h2></span>
	</div>
	<table style="width: 100%;" class="bordered-table" cellspacing="0">
		<thead>
			<tr>
				<th>PANGKAT</th>
				<th>TMT</th>
			</tr>
		</thead>
		<tbody>
			<?php $no=1; foreach($riwayat_pangkat as $rpk):?>
			<tr>
				<td><?= $rpk['pangkat'];?></td>
				<td><?= date('d-m-Y', strtotime($rpk['tmt']));?></td>
			</tr>
			<?php $no++; endforeach;?>
		</tbody>
	</table>

	<div style = "width: 100%; margin-bottom: 5px; margin-top:0px; "> 
		<span><h2 style="font-size: 15px">RIWAYAT JABATAN (PENEMPATAN)</h2></span>
	</div>
	<table style="width: 100%;" class="bordered-table" cellspacing="0">
		<thead>
			<tr>
				<th>JABATAN BARU</th>
				<th>NO KEP</th>
				<th>SATUAN</th>
				<th>TGL KEP</th>
				<th>TMT JAB</th>
				<th style="width:1%">STATUS (PENUH/SEMENTARA)</th>
			</tr>
		</thead>
		<tbody>

			<?php $no=1; foreach($riwayat_jabatan as $rjb):?>
			<tr>
				<td><?= strtoupper($rjb['jabatan']);?></td>
				<td><?= $rjb['no_keputusan'];?></td>
				<td><?= strtoupper($rjb['satuan']);?></td>
				<td><?= date('d-m-Y', strtotime($rjb['tanggal_keputusan']));?></td>
				<td><?= date('d-m-Y', strtotime($rjb['tmt']));?></td>
				<td><?= strtoupper($rjb['status_jabatan']);?></td>

			</tr>
			<?php $no++; endforeach;?>
		</tbody>
	</table>

	<div style = "width: 100%; margin-bottom: 5px; margin-top:0px; "> 
		<span><h2 style="font-size: 15px">RIWAYAT PENUGASAN</h2></span>
	</div>
	<table style="font-size: 10px; width: 100%; margin-bottom: 3px; ">
		<tbody>
			<?php $no=1; foreach($riwayat_penugasan as $rpg):?>
			<tr>
				<td><?= $no;?></td>
				<td colspan="12"><?php echo strtoupper($rpg['lokasi_penempatan']) .' / '. date('d-m-Y', strtotime($rpg['sampai_tanggal']));?></td>
			</tr>
			<?php $no++; endforeach;?>

		</tbody>

	</table>

	<div style = "width: 100%; margin-bottom: 5px; margin-top:0px; "> 
		<span><h2 style="font-size: 15px">TANDA JASA</h2></span>
	</div>
		<table style="font-size: 10px; width: 100%; margin-bottom: 3px;">
		<tbody>

			<?php $no=1; foreach($riwayat_tanda_jasa as $rtj):?>
			<tr>
				<td><?= $no;?></td>
				<td colspan="12"><?php echo strtoupper($rtj['nama_penghargaan']);?></td>
			</tr>
			<?php $no++; endforeach;?>
		</tbody>

	</table>


</body>