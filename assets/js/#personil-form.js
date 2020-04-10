let rowIds = {
	pendidikanUmum: 0,
	pendidikanMiliter: 0,
	pangkat: 0,
	jabatan: 0,
	penugasan: 0,
	tandaJasa: 0,
	dataKeluarga: 0,
};

/* RIWAWYAT PENDIDIKAN UMUM */

$('#sect-pendidikan-umum button.btn-add').click(function() {
	$('#modal-pendidikan-umum [name=id]').val('');
	$('#modal-pendidikan-umum [name=lemdik]').val('');
	$('#modal-pendidikan-umum [name=sekolah]').val('');
	$('#modal-pendidikan-umum [name=tahun_masuk]').val('');
	$('#modal-pendidikan-umum [name=tahun_keluar]').val('');

	$('#modal-pendidikan-umum').modal('toggle');
});

$('#modal-pendidikan-umum form').submit(function(ev) {
	let id = $(this).find('[name=id]').val();
	let lemdik = $(this).find('[name=lemdik]').val();
	let sekolah = $(this).find('[name=sekolah]').val();
	let tahunMasuk = $(this).find('[name=tahun_masuk]').val();
	let tahunKeluar = $(this).find('[name=tahun_keluar]').val();

	id = id || --rowIds.pendidikanUmum;

	let row = `
		<tr data-id="${id}">
			<td>${$('<i>').text(lemdik).html()}</td>
			<td>${$('<i>').text(sekolah).html()}</td>
			<td>${$('<i>').text(tahunMasuk).html()}</td>
			<td>${$('<i>').text(tahunKeluar).html()}</td>

			<td>
				<div class="input-container" style="display: none;">
					<input type="hidden" name="riwayat_pendidikan_umum[lemdik][]">
					<input type="hidden" name="riwayat_pendidikan_umum[sekolah][]">
					<input type="hidden" name="riwayat_pendidikan_umum[tahun_masuk][]">
					<input type="hidden" name="riwayat_pendidikan_umum[tahun_keluar][]">
				</div>
				<div class="pull-right">
					<button type="button" class="btn btn-xs bg-gray edit-btn">
						<i class="fa fa-pencil"></i>
					</button>
					<button type="button" class="btn btn-xs bg-gray delete-btn">
						<i class="fa fa-trash"></i>
					</button>
				</div>
			</td>
		</tr>
		`;

	$('#sect-pendidikan-umum tr[data-placeholder]').remove();
	$('#sect-pendidikan-umum tbody').append(row);

	let selector = $(`#sect-pendidikan-umum tr[data-id=${id}]`);

	selector.find('[name="riwayat_pendidikan_umum[lemdik][]"]').val(lemdik);
	selector.find('[name="riwayat_pendidikan_umum[sekolah][]"]').val(sekolah);
	selector.find('[name="riwayat_pendidikan_umum[tahun_masuk][]"]').val(tahunMasuk);
	selector.find('[name="riwayat_pendidikan_umum[tahun_keluar][]"]').val(tahunKeluar);

	$('#modal-pendidikan-umum').modal('toggle');
});

$('#sect-pendidikan-umum .edit-btn').click(function(ev) {
	let dtr = $(this).parents('td').find('.input-container');
	let id = $(this).parents('tr').attr('data-id');
	let lemdik = dtr.find('[name="riwayat_pendidikan_umum[lemdik][]"]').val();
	let sekolah = dtr.find('[name="riwayat_pendidikan_umum[lemdik][]"]').val();
	let tahun_masuk = dtr.find('[name="riwayat_pendidikan_umum[lemdik][]"]').val();
	let tahun_keluar = dtr.find('[name="riwayat_pendidikan_umum[lemdik][]"]').val();
	$('#modal-pendidikan-umum [name=id]').val(id);
	$('#modal-pendidikan-umum [name=lemdik]').val(lemdik);
	$('#modal-pendidikan-umum [name=sekolah]').val(sekolah);
	$('#modal-pendidikan-umum [name=tahun_masuk]').val(tahun_masuk);
	$('#modal-pendidikan-umum [name=tahun_keluar]').val(tahun_keluar);
	$('#modal-pendidikan-umum').modal('toggle');
});

/* RIWAYAT PENDIDIKAN MILITER */

$('#sect-pendidikan-militer button.btn-add').click(function() {
	$('#modal-pendidikan-militer [name=sekolah]').val('');
	$('#modal-pendidikan-militer [name=tahunMasuk]').val('');
	$('#modal-pendidikan-militer [name=tahunKeluar]').val('');
	$('#modal-pendidikan-militer [name=angkatan]').val('');
	$('#modal-pendidikan-militer [name=tmt]').val('');

	$('#modal-pendidikan-militer').modal('toggle');
});

$('#modal-pendidikan-militer form').submit(function(ev) {
	let sekolah = $(this).find('[name=sekolah]').val();
	let tahunMasuk = $(this).find('[name=tahun_masuk]').val();
	let tahunKeluar = $(this).find('[name=tahun_keluar]').val();
	let angkatan = $(this).find('[name=angkatan]').val();
	let tmt = $(this).find('[name=tmt]').val();

	let row = `
		<tr data-id="${--rowIds.pendidikanMiliter}">
			<td>${$('<i>').text(sekolah).html()}</td>
			<td>${$('<i>').text(tahunMasuk).html()}</td>
			<td>${$('<i>').text(tahunKeluar).html()}</td>
			<td>${$('<i>').text(angkatan).html()}</td>
			<td>${$('<i>').text(tmt).html()}</td>

			<td>
				<div class="input-container" style="display: none;">
					<input type="hidden" name="riwayat_pendidikan_militer[sekolah][]">
					<input type="hidden" name="riwayat_pendidikan_militer[tahunMasuk][]">
					<input type="hidden" name="riwayat_pendidikan_militer[tahunKeluar][]">
					<input type="hidden" name="riwayat_pendidikan_militer[angkatan][]">
					<input type="hidden" name="riwayat_pendidikan_militer[tmt][]">
				</div>
				<div class="pull-right">
					<button type="button" class="btn btn-xs bg-gray edit-btn">
						<i class="fa fa-pencil"></i>
					</button>
					<button type="button" class="btn btn-xs bg-gray delete-btn">
						<i class="fa fa-trash"></i>
					</button>
				</div>
			</td>
		</tr>
		`;

	$('#sect-pendidikan-militer tr[data-placeholder]').remove();
	$('#sect-pendidikan-militer tbody').append(row);

	let selector = $(`#sect-pendidikan-militer tr[data-id=${rowIds.pendidikanMiliter}]`);

	selector.find('[name="riwayat_pendidikan_militer[sekolah][]"]').val(sekolah);
	selector.find('[name="riwayat_pendidikan_militer[tahunMasuk][]"]').val(tahunMasuk);
	selector.find('[name="riwayat_pendidikan_militer[tahunKeluar][]"]').val(tahunKeluar);
	selector.find('[name="riwayat_pendidikan_militer[angkatan][]"]').val(angkatan);
	selector.find('[name="riwayat_pendidikan_militer[tmt][]"]').val(tmt);

	$('#modal-pendidikan-militer').modal('toggle');
});

/* RIWAYAT PANGKAT */

$('#sect-pangkat button.btn-add').click(function() {
	$('#modal-pangkat [name=tmt]').val('');
	$('#modal-pangkat [name=id_pangkat]').val('');

	$('#modal-pangkat').modal('toggle');
});

$('#modal-pangkat form').submit(function(ev) {
	let tmt = $(this).find('[name=tmt]').val();
	let id_pangkat = $(this).find('[name=id_pangkat]').val();

	let pangkat = jsonInject.dataPangkat.find(function(i) {
		return i.id == id_pangkat;
	}).nama;

	let row = `
		<tr data-id="${--rowIds.pangkat}">
			<td>${$('<i>').text(tmt).html()}</td>
			<td>${$('<i>').text(pangkat).html()}</td>

			<td>
				<div class="input-container" style="display: none;">
					<input type="hidden" name="riwayat_pangkat[tmt][]">
					<input type="hidden" name="riwayat_pangkat[id_pangkat][]">
				</div>
				<div class="pull-right">
					<button type="button" class="btn btn-xs bg-gray edit-btn">
						<i class="fa fa-pencil"></i>
					</button>
					<button type="button" class="btn btn-xs bg-gray delete-btn">
						<i class="fa fa-trash"></i>
					</button>
				</div>
			</td>
		</tr>
		`;

	$('#sect-pangkat tr[data-placeholder]').remove();
	$('#sect-pangkat tbody').append(row);

	let selector = $(`#sect-pangkat tr[data-id=${rowIds.pangkat}]`);

	selector.find('[name="riwayat_pangkat[tmt][]"]').val(tmt);
	selector.find('[name="riwayat_pangkat[id_pangkat][]"]').val(id_pangkat);

	$('#modal-pangkat').modal('toggle');
});

/* RIWAYAT JABATAN */

$('#sect-jabatan button.btn-add').click(function() {
	$('#modal-jabatan [name=id_jabatan]').val('');
	$('#modal-jabatan [name=no_keputusan]').val('');
	$('#modal-jabatan [name=satuan]').val('');
	$('#modal-jabatan [name=tanggal_keputusan]').val('');
	$('#modal-jabatan [name=tmt]').val('');
	$('#modal-jabatan [name=id_status_jabatan]').val('');

	$('#modal-jabatan').modal('toggle');
});

$('#modal-jabatan form').submit(function(ev) {
	let id_jabatan = $(this).find('[name=id_jabatan]').val();
	let no_keputusan = $(this).find('[name=no_keputusan]').val();
	let satuan = $(this).find('[name=satuan]').val();
	let tanggal_keputusan = $(this).find('[name=tanggal_keputusan]').val();
	let tmt = $(this).find('[name=tmt]').val();
	let id_status_jabatan = $(this).find('[name=id_status_jabatan]').val();

	let jabatan = jsonInject.dataJabatan.find(function(i) {
		return i.id == id_jabatan;
	}).nama;

	let status_jabatan = jsonInject.dataStatusJabatan.find(function(i) {
		return i.id == id_status_jabatan;
	}).nama;

	let row = `
		<tr data-id="${--rowIds.jabatan}">
			<td>${$('<i>').text(jabatan).html()}</td>
			<td>${$('<i>').text(no_keputusan).html()}</td>
			<td>${$('<i>').text(satuan).html()}</td>
			<td>${$('<i>').text(tanggal_keputusan).html()}</td>
			<td>${$('<i>').text(tmt).html()}</td>
			<td>${$('<i>').text(status_jabatan).html()}</td>

			<td>
				<div class="input-container" style="display: none;">
					<input type="hidden" name="riwayat_jabatan[id_jabatan][]">
					<input type="hidden" name="riwayat_jabatan[no_keputusan][]">
					<input type="hidden" name="riwayat_jabatan[satuan][]">
					<input type="hidden" name="riwayat_jabatan[tanggal_keputusan][]">
					<input type="hidden" name="riwayat_jabatan[tmt][]">
					<input type="hidden" name="riwayat_jabatan[id_status_jabatan][]">
				</div>
				<div class="pull-right">
					<button type="button" class="btn btn-xs bg-gray edit-btn">
						<i class="fa fa-pencil"></i>
					</button>
					<button type="button" class="btn btn-xs bg-gray delete-btn">
						<i class="fa fa-trash"></i>
					</button>
				</div>
			</td>
		</tr>
		`;

	$('#sect-jabatan tr[data-placeholder]').remove();
	$('#sect-jabatan tbody').append(row);

	let selector = $(`#sect-jabatan tr[data-id=${rowIds.jabatan}]`);

	selector.find('[name="riwayat_jabatan[id_jabatan][]"]').val(id_jabatan);
	selector.find('[name="riwayat_jabatan[no_keputusan][]"]').val(no_keputusan);
	selector.find('[name="riwayat_jabatan[satuan][]"]').val(satuan);
	selector.find('[name="riwayat_jabatan[tanggal_keputusan][]"]').val(tanggal_keputusan);
	selector.find('[name="riwayat_jabatan[tmt][]"]').val(tmt);
	selector.find('[name="riwayat_jabatan[id_status_jabatan][]"]').val(id_status_jabatan);

	$('#modal-jabatan').modal('toggle');
});

/* RIWAYAT PENEMPATAN */

$('#sect-penugasan button.btn-add').click(function() {
	$('#modal-penugasan [name=lokasi_penempatan]').val('');
	$('#modal-penugasan [name=id_pangkat]').val('');
	$('#modal-penugasan [name=mulai_tanggal]').val('');
	$('#modal-penugasan [name=sampai_tanggal]').val('');

	$('#modal-penugasan').modal('toggle');
});

$('#modal-penugasan form').submit(function(ev) {
	let lokasi_penempatan = $(this).find('[name=lokasi_penempatan]').val();
	let id_pangkat = $(this).find('[name=id_pangkat]').val();
	let mulai_tanggal = $(this).find('[name=mulai_tanggal]').val();
	let sampai_tanggal = $(this).find('[name=sampai_tanggal]').val();

	let pangkat = jsonInject.dataPangkat.find(function(i) {
		return i.id == id_pangkat;
	});

	let row = `
		<tr data-id="${--rowIds.penugasan}">
			<td>${$('<i>').text(lokasi_penempatan).html()}</td>
			<td>${$('<i>').text(pangkat).html()}</td>
			<td>${$('<i>').text(mulai_tanggal).html()}</td>
			<td>${$('<i>').text(sampai_tanggal).html()}</td>

			<td>
				<div class="input-container" style="display: none;">
					<input type="hidden" name="riwayat_tanda_jasa[lokasi_penempatan][]">
					<input type="hidden" name="riwayat_tanda_jasa[id_pangkat][]">
					<input type="hidden" name="riwayat_tanda_jasa[mulai_tanggal][]">
					<input type="hidden" name="riwayat_tanda_jasa[sampai_tanggal][]">
				</div>
				<div class="pull-right">
					<button type="button" class="btn btn-xs bg-gray edit-btn">
						<i class="fa fa-pencil"></i>
					</button>
					<button type="button" class="btn btn-xs bg-gray delete-btn">
						<i class="fa fa-trash"></i>
					</button>
				</div>
			</td>
		</tr>
		`;

	$('#sect-penugasan tr[data-placeholder]').remove();
	$('#sect-penugasan tbody').append(row);

	let selector = $(`#sect-penugasan tr[data-id=${rowIds.penugasan}]`);

	selector.find('[name="riwayat_tanda_jasa[lokasi_penempatan][]"]').val(lokasi_penempatan);
	selector.find('[name="riwayat_tanda_jasa[id_pangkat][]"]').val(id_pangkat);
	selector.find('[name="riwayat_tanda_jasa[mulai_tanggal][]"]').val(mulai_tanggal);
	selector.find('[name="riwayat_tanda_jasa[sampai_tanggal][]"]').val(sampai_tanggal);

	$('#modal-penugasan').modal('toggle');
});

/* RIWAYAT TANDA JASA */

$('#sect-tanda-jasa button.btn-add').click(function() {
	$('#modal-tanda-jasa [name=nama_penghargaan]').val('');
	$('#modal-tanda-jasa [name=tahun_pemberian]').val('');
	$('#modal-tanda-jasa [name=negara_pemberi]').val('');

	$('#modal-tanda-jasa').modal('toggle');
});

$('#modal-tanda-jasa form').submit(function(ev) {
	let nama_penghargaan = $(this).find('[name=nama_penghargaan]').val();
	let tahun_pemberian = $(this).find('[name=tahun_pemberian]').val();
	let negara_pemberi = $(this).find('[name=negara_pemberi]').val();

	let row = `
		<tr data-id="${--rowIds.tandaJasa}">
			<td>${$('<i>').text(nama_penghargaan).html()}</td>
			<td>${$('<i>').text(tahun_pemberian).html()}</td>
			<td>${$('<i>').text(negara_pemberi).html()}</td>

			<td>
				<div class="input-container" style="display: none;">
					<input type="hidden" name="riwayat_tanda_jasa[nama_penghargaan][]">
					<input type="hidden" name="riwayat_tanda_jasa[tahun_pemberian][]">
					<input type="hidden" name="riwayat_tanda_jasa[negara_pemberi][]">
				</div>
				<div class="pull-right">
					<button type="button" class="btn btn-xs bg-gray edit-btn">
						<i class="fa fa-pencil"></i>
					</button>
					<button type="button" class="btn btn-xs bg-gray delete-btn">
						<i class="fa fa-trash"></i>
					</button>
				</div>
			</td>
		</tr>
		`;

	$('#sect-tanda-jasa tr[data-placeholder]').remove();
	$('#sect-tanda-jasa tbody').append(row);

	let selector = $(`#sect-tanda-jasa tr[data-id=${rowIds.tandaJasa}]`);

	selector.find('[name="riwayat_tanda_jasa[nama_penghargaan][]"]').val(nama_penghargaan);
	selector.find('[name="riwayat_tanda_jasa[tahun_pemberian][]"]').val(tahun_pemberian);
	selector.find('[name="riwayat_tanda_jasa[negara_pemberi][]"]').val(negara_pemberi);

	$('#modal-tanda-jasa').modal('toggle');
});

/* DATA KELUARGA */

$('#sect-data-keluarga button.btn-add').click(function() {
	$('#modal-data-keluarga [name=nama]').val('');
	$('#modal-data-keluarga [name=tempat_lahir]').val('');
	$('#modal-data-keluarga [name=tanggal_lahir]').val('');
	$('#modal-data-keluarga [name=id_jenis_kelamin]').val('');
	$('#modal-data-keluarga [name=suku]').val('');
	$('#modal-data-keluarga [name=tempat_menikah]').val('');
	$('#modal-data-keluarga [name=id_status_kehidupan]').val('');
	$('#modal-data-keluarga [name=id_status_tertanggung]').val('');
	$('#modal-data-keluarga [name=id_hubungan_keluarga]').val('');
	$('#modal-data-keluarga [name=id_agama]').val('');
	$('#modal-data-keluarga [name=alamat]').val('');
	$('#modal-data-keluarga [name=id_status_pernikahan]').val('');
	$('#modal-data-keluarga [name=tanggal_menikah]').val('');
	$('#modal-data-keluarga [name=pekerjaan]').val('');

	$('#modal-data-keluarga').modal('toggle');
});

$('#modal-data-keluarga form').submit(function(ev) {
	let nama = $(this).find('[name=nama]').val();
	let tempat_lahir = $(this).find('[name=tempat_lahir]').val();
	let tanggal_lahir = $(this).find('[name=tanggal_lahir]').val();
	let id_jenis_kelamin = $(this).find('[name=id_jenis_kelamin]').val();
	let suku = $(this).find('[name=suku]').val();
	let tempat_menikah = $(this).find('[name=tempat_menikah]').val();
	let id_status_kehidupan = $(this).find('[name=id_status_kehidupan]').val();
	let id_status_tertanggung = $(this).find('[name=id_status_tertanggung]').val();
	let id_hubungan_keluarga = $(this).find('[name=id_hubungan_keluarga]').val();
	let id_agama = $(this).find('[name=id_agama]').val();
	let alamat = $(this).find('[name=alamat]').val();
	let id_status_pernikahan = $(this).find('[name=id_status_pernikahan]').val();
	let tanggal_menikah = $(this).find('[name=tanggal_menikah]').val();
	let pekerjaan = $(this).find('[name=pekerjaan]').val();

	let jenis_kelamin = jsonInject.dataJenisKelamin.find(function(i) {
		return i.id == id_jenis_kelamin;
	});

	let status_kehidupan = jsonInject.dataJenisKelamin.find(function(i) {
		return i.id == id_status_kehidupan;
	});

	let status_tertanggung = jsonInject.dataStatusTertanggung.find(function(i) {
		return i.id == id_status_tertanggung;
	});

	let hubungan_keluarga = jsonInject.dataHubunganKeluarga.find(function(i) {
		return i.id == id_hubungan_keluarga;
	});

	let agama = jsonInject.dataAgama.find(function(i) {
		return i.id == id_agama;
	});

	let status_pernikahan = jsonInject.dataStatusPernikahan.find(function(i) {
		return i.id == id_status_pernikahan;
	});

	let row = `
		<tr data-id="${--rowIds.dataKeluarga}">
			<td>${$('<i>').text(nama).html()}</td>
			<td>${$('<i>').text(tempat_lahir).html()}</td>
			<td>${$('<i>').text(tanggal_lahir).html()}</td>
			<td>${$('<i>').text(jenis_kelamin).html()}</td>
			<td>${$('<i>').text(suku).html()}</td>
			<td>${$('<i>').text(tempat_menikah).html()}</td>
			<td>${$('<i>').text(status_kehidupan).html()}</td>
			<td>${$('<i>').text(status_tertanggung).html()}</td>
			<td>${$('<i>').text(hubungan_keluarga).html()}</td>
			<td>${$('<i>').text(agama).html()}</td>
			<td>${$('<i>').text(alamat).html()}</td>
			<td>${$('<i>').text(status_pernikahan).html()}</td>
			<td>${$('<i>').text(tanggal_menikah).html()}</td>
			<td>${$('<i>').text(pekerjaan).html()}</td>

			<td>
				<div class="input-container" style="display: none;">
					<input type="hidden" name="data_keluarga[nama][]">
					<input type="hidden" name="data_keluarga[tempat_lahir][]">
					<input type="hidden" name="data_keluarga[tanggal_lahir][]">
					<input type="hidden" name="data_keluarga[id_jenis_kelamin][]">
					<input type="hidden" name="data_keluarga[suku][]">
					<input type="hidden" name="data_keluarga[tempat_menikah][]">
					<input type="hidden" name="data_keluarga[id_status_kehidupan][]">
					<input type="hidden" name="data_keluarga[id_status_tertanggung][]">
					<input type="hidden" name="data_keluarga[id_hubungan_keluarga][]">
					<input type="hidden" name="data_keluarga[id_agama][]">
					<input type="hidden" name="data_keluarga[alamat][]">
					<input type="hidden" name="data_keluarga[id_status_pernikahan][]">
					<input type="hidden" name="data_keluarga[tanggal_menikah][]">
					<input type="hidden" name="data_keluarga[pekerjaan][]">
				</div>
				<div class="pull-right">
					<button type="button" class="btn btn-xs bg-gray edit-btn">
						<i class="fa fa-pencil"></i>
					</button>
					<button type="button" class="btn btn-xs bg-gray delete-btn">
						<i class="fa fa-trash"></i>
					</button>
				</div>
			</td>
		</tr>
		`;

	$('#sect-data-keluarga tr[data-placeholder]').remove();
	$('#sect-data-keluarga tbody').append(row);

	let selector = $(`#sect-data-keluarga tr[data-id=${rowIds.dataKeluarga}]`);

	selector.find('[name="riwayat_tanda_jasa[nama][]"]').val(nama);
	selector.find('[name="riwayat_tanda_jasa[tempat_lahir][]"]').val(tempat_lahir);
	selector.find('[name="riwayat_tanda_jasa[tanggal_lahir][]"]').val(tanggal_lahir);
	selector.find('[name="riwayat_tanda_jasa[id_jenis_kelamin][]"]').val(id_jenis_kelamin);
	selector.find('[name="riwayat_tanda_jasa[suku][]"]').val(suku);
	selector.find('[name="riwayat_tanda_jasa[tempat_menikah][]"]').val(tempat_menikah);
	selector.find('[name="riwayat_tanda_jasa[id_status_kehidupan][]"]').val(id_status_kehidupan);
	selector.find('[name="riwayat_tanda_jasa[id_status_tertanggung][]"]').val(id_status_tertanggung);
	selector.find('[name="riwayat_tanda_jasa[id_hubungan_keluarga][]"]').val(id_hubungan_keluarga);
	selector.find('[name="riwayat_tanda_jasa[id_agama][]"]').val(id_agama);
	selector.find('[name="riwayat_tanda_jasa[alamat][]"]').val(alamat);
	selector.find('[name="riwayat_tanda_jasa[id_status_pernikahan][]"]').val(id_status_pernikahan);
	selector.find('[name="riwayat_tanda_jasa[tanggal_menikah][]"]').val(tanggal_menikah);
	selector.find('[name="riwayat_tanda_jasa[pekerjaan][]"]').val(pekerjaan);

	$('#modal-data-keluarga').modal('toggle');
});