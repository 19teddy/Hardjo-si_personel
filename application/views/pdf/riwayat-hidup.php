<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
    <style type="text/css">
        * {
            font-family: Aria;
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
    </style>
</head>

<body>

    <div style="width:40%; text-align: center; border-bottom: 1px black solid">
        <b>DINAS KESEHATAN ANGKATAN UDARA</b> <br>
        <b>RSPAU dr. S. HARDJOLUKITO</b>
    </div>

    <table class="title-table">
        <tr>
            <td style="text-align: center;" colspan="3"></td>
        </tr>
    </table>

    <table style=" width: 100%; margin: 40px 0px 4px 0px;">
        <tr>
          <td colspan="5" style="text-align: center;"><h1 style="font-size: 30px;">RIWAYAT HIDUP</h1> </td>
        </tr>
        <tr>
          <td ><h2 style="font-size: 20px;">DATA POKOK</h2></td>
        </tr>
    </table>

    <table style="width: 100%;" class="bordered-table" cellspacing="0">
        <thead>
            
            <tr>
                <th>No.</th>
                <th>Nama Barang</th>
                <th>Satuan</th>
                <th>Jumlah</th>
                <th>Keterangan</th>
            </tr>
        </thead>
       <tbody>
           
       </tbody>
    </table>

    <table style="border-collapse: collapse; width: 100%; margin-top: 50px;">
        <tr>
            <td style="width: 70%;"></td>
            <td style="width: 30%;">
            <!--     DKI Jakarta, <?= id_date_format('medium', $tanggal_pengajuan) ?><br>
                Kepala Unit,<br><br>
                <?php if(!empty($tanggal_disetujui_1)): ?>
                <center><img src="<?= site_url().'qrcode_/generate?data='.urlencode($tanggal_disetujui_1.':'.$kepala_unit->nama) ?>"></center>
                <br>
                <center><?= $kepala_unit->nama ?></center>
                <?php else: ?> -->
                <div style="height: 100px;"></div>
                <br>
                <center>_______________________________</center>
                <!-- <?php endif; ?> -->
            </td>
        </tr>
    </table>
</body>