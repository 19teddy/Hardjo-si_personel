function initDatepicker() {
	$(".datepicker").datepicker({
		format: "dd M yyyy",
		clearBtn: true,
		orientation: "bottom auto"
	});
	$(".datepicker").removeClass('datepicker');
}

initDatepicker();

$('.select2').select2();

$("input[name=foto]").change(function() {

	let preview = document.querySelector('#img-preview');
	let file    = document.querySelector('input[name=foto]').files[0];
	let reader  = new FileReader();

	reader.addEventListener("load", function () {
		preview.src = reader.result;
		fileBinary.value = reader.result;
	}, false);

	if(file) {
		reader.readAsDataURL(file);
	}
});

$('.edit-table button.btn-add').click(function() {
	let table = $(this).attr('data-table');
	let rowTemplate = $(this).attr('row-template');

	$('#'+table).find('tr[data-placeholder]').remove();
	let template = $('#'+rowTemplate).html();

	$('#'+table+' tbody').append(template);
	initDatepicker();
});

$('.edit-table tbody').on('click', '.delete-btn', function() {
	$(this).parents('tr').remove();
});

$([
	'#sect-pendidikan-umum button.btn-add',
	'#sect-pendidikan-militer button.btn-add',
	'#sect-pangkat button.btn-add',
	'#sect-jabatan button.btn-add',
	'#sect-penugasan button.btn-add',
	'#sect-tanda-jasa button.btn-add',
	].join(',')).click(function() {
		let table = $(this).attr('data-table');
		let rowTemplate = $(this).attr('row-template');
		$('#'+table).find('tr[data-placeholder]').remove();
		let template = $('#'+rowTemplate).html();
		$('#'+table+' tbody').append(template);
		initDatepicker();
	});

let idGenerate = 0;

function setFormData(data) {

	$('#sect-data-keluarga [name=k-id]').val(data.id);
	$('#sect-data-keluarga [name=k-nama]').val(data.nama);
	$('#sect-data-keluarga [name=k-tempat_lahir]').val(data.tempat_lahir);
	$('#sect-data-keluarga [name=k-tanggal_lahir]').val(data.tanggal_lahir);
	$('#sect-data-keluarga [name=k-id_jenis_kelamin]').val(data.id_jenis_kelamin);
	$('#sect-data-keluarga [name=k-suku]').val(data.suku);
	$('#sect-data-keluarga [name=k-tempat_menikah]').val(data.tempat_menikah);
	$('#sect-data-keluarga [name=k-id_status_kehidupan]').val(data.id_status_kehidupan);
	$('#sect-data-keluarga [name=k-id_status_tertanggung]').val(data.id_status_tertanggung);
	$('#sect-data-keluarga [name=k-id_hubungan_keluarga]').val(data.id_hubungan_keluarga);
	$('#sect-data-keluarga [name=k-id_agama]').val(data.id_agama);
	$('#sect-data-keluarga [name=k-alamat]').val(data.alamat);
	$('#sect-data-keluarga [name=k-id_status_pernikahan]').val(data.id_status_pernikahan);
	$('#sect-data-keluarga [name=k-tanggal_menikah]').val(data.tanggal_menikah);
	$('#sect-data-keluarga [name=k-pekerjaan]').val(data.pekerjaan);
}

$('#sect-data-keluarga button.btn-cancel').click(function() {

	$('#sect-data-keluarga [name=k-id]').val('');
	$('#sect-data-keluarga [name=k-nama]').val('');
	$('#sect-data-keluarga [name=k-tempat_lahir]').val('');
	$('#sect-data-keluarga [name=k-tanggal_lahir]').val('');
	$('#sect-data-keluarga [name=k-id_jenis_kelamin]').val('');
	$('#sect-data-keluarga [name=k-suku]').val('');
	$('#sect-data-keluarga [name=k-tempat_menikah]').val('');
	$('#sect-data-keluarga [name=k-id_status_kehidupan]').val('');
	$('#sect-data-keluarga [name=k-id_status_tertanggung]').val('');
	$('#sect-data-keluarga [name=k-id_hubungan_keluarga]').val('');
	$('#sect-data-keluarga [name=k-id_agama]').val('');
	$('#sect-data-keluarga [name=k-alamat]').val('');
	$('#sect-data-keluarga [name=k-id_status_pernikahan]').val('');
	$('#sect-data-keluarga [name=k-tanggal_menikah]').val('');
	$('#sect-data-keluarga [name=k-pekerjaan]').val('');

	$('#sect-data-keluarga button.btn-add').html('<i class="fa fa-plus"></i> Tambahkan');
});

$('#sect-data-keluarga button.btn-add').click(function() {

	let id = $('#sect-data-keluarga [name=k-id]').val();
	$('#sect-data-keluarga [name=k-id]').val('');

	let obj = {
		id: id || --idGenerate,
		nama: $('#sect-data-keluarga [name=k-nama]').val(),
		tempat_lahir: $('#sect-data-keluarga [name=k-tempat_lahir]').val(),
		tanggal_lahir: $('#sect-data-keluarga [name=k-tanggal_lahir]').val(),
		id_jenis_kelamin: $('#sect-data-keluarga [name=k-id_jenis_kelamin]').val(),
		suku: $('#sect-data-keluarga [name=k-suku]').val(),
		tempat_menikah: $('#sect-data-keluarga [name=k-tempat_menikah]').val(),
		id_status_kehidupan: $('#sect-data-keluarga [name=k-id_status_kehidupan]').val(),
		id_status_tertanggung: $('#sect-data-keluarga [name=k-id_status_tertanggung]').val(),
		id_hubungan_keluarga: $('#sect-data-keluarga [name=k-id_hubungan_keluarga]').val(),
		id_agama: $('#sect-data-keluarga [name=k-id_agama]').val(),
		alamat: $('#sect-data-keluarga [name=k-alamat]').val(),
		id_status_pernikahan: $('#sect-data-keluarga [name=k-id_status_pernikahan]').val(),
		tanggal_menikah: $('#sect-data-keluarga [name=k-tanggal_menikah]').val(),
		pekerjaan: $('#sect-data-keluarga [name=k-pekerjaan]').val(),
	};
	if(obj.nama == null || obj.nama == '' ) {
		swal({
			text: "Mohon isi nama keluarga!",
			icon: "warning",
			buttons: true,
			dangerMode: true,
		  });
		return;
	} 
	else if(obj.tempat_lahir == null || obj.tempat_lahir == '' ) {
		swal({
			text: "Mohon isi tempat lahir keluarga!",
			icon: "warning",
			buttons: true,
			dangerMode: true,
		  });
		return;
	} 
	else if(obj.tanggal_lahir == null || obj.tanggal_lahir == '' ) {
		swal({
			text: "Mohon isi tanggal lahir keluarga!",
			icon: "warning",
			buttons: true,
			dangerMode: true,
		  });
		return;
	}
	else if(obj.id_jenis_kelamin == null || obj.id_jenis_kelamin == '' ) {
		swal({
			text: "Mohon pilih jenis kelamin keluarga!",
			icon: "warning",
			buttons: true,
			dangerMode: true,
		  });
		return;
	}
	else if(obj.id_status_kehidupan == null || obj.id_status_kehidupan == '' ) {
		swal({
			text: "Mohon pilih status kehidupan keluarga!",
			icon: "warning",
			buttons: true,
			dangerMode: true,
		  });
		return;
	}
	else if(obj.id_status_tertanggung == null || obj.id_status_tertanggung == '' ) {
		swal({
			text: "Mohon isi status tertanggung keluarga!",
			icon: "warning",
			buttons: true,
			dangerMode: true,
		  });
		return;
	} 
	else if(obj.id_hubungan_keluarga == null || obj.id_hubungan_keluarga == '' ) {
		swal({
			text: "Mohon isi hubungan keluarga!",
			icon: "warning",
			buttons: true,
			dangerMode: true,
		  });
		return;
	} 
	else if( obj.id_agama == null || obj.id_agama == '') {
		swal({
			text: "Mohon pilih agama keluarga!",
			icon: "warning",
			buttons: true,
			dangerMode: true,
		  });
		return;
	}
	else if( obj.id_status_pernikahan == null || obj.id_status_pernikahan == '') {
		swal({
			text: "Mohon pilih status pernikahan keluarga!",
			icon: "warning",
			buttons: true,
			dangerMode: true,
		  });
		return;
	}
	// console.log(obj);return;

	$('#sect-data-keluarga [name=k-nama]').val('');
	$('#sect-data-keluarga [name=k-tempat_lahir]').val('');
	$('#sect-data-keluarga [name=k-tanggal_lahir]').val('');
	$('#sect-data-keluarga [name=k-id_jenis_kelamin]').val('');
	$('#sect-data-keluarga [name=k-suku]').val('');
	$('#sect-data-keluarga [name=k-tempat_menikah]').val('');
	$('#sect-data-keluarga [name=k-id_status_kehidupan]').val('');
	$('#sect-data-keluarga [name=k-id_status_tertanggung]').val('');
	$('#sect-data-keluarga [name=k-id_hubungan_keluarga]').val('');
	$('#sect-data-keluarga [name=k-id_agama]').val('');
	$('#sect-data-keluarga [name=k-alamat]').val('');
	$('#sect-data-keluarga [name=k-id_status_pernikahan]').val('');
	$('#sect-data-keluarga [name=k-tanggal_menikah]').val('');
	$('#sect-data-keluarga [name=k-pekerjaan]').val('');

	let jenis_kelamin = jsonInject.dataJenisKelamin.find(function(i) {
		return i.id == obj.id_jenis_kelamin;
	}) || {nama: ''};

	let status_kehidupan = jsonInject.dataStatusKehidupan.find(function(i) {
		return i.id == obj.id_status_kehidupan;
	}) || {nama: ''};

	let status_tertanggung = jsonInject.dataStatusTertanggung.find(function(i) {
		return i.id == obj.id_status_tertanggung;
	}) || {nama: ''};

	let hubungan_keluarga = jsonInject.dataHubunganKeluarga.find(function(i) {
		return i.id == obj.id_hubungan_keluarga;
	}) || {nama: ''};

	let agama = jsonInject.dataAgama.find(function(i) {
		return i.id == obj.id_agama;
	}) || {nama: ''};

	let status_pernikahan = jsonInject.dataStatusPernikahan.find(function(i) {
		return i.id == obj.id_status_pernikahan;
	}) || {nama: ''};

	if(id != '') {
		let tr = $(`#sect-data-keluarga tr[data-id=${id}]`);
		tr.children().eq(1).text(obj.nama);
		tr.children().eq(2).text(jenis_kelamin.nama);
		tr.children().eq(3).text(status_kehidupan.nama);
		tr.children().eq(4).text(status_tertanggung.nama);
		tr.children().eq(5).text(hubungan_keluarga.nama);
		tr.children().eq(6).text(agama.nama);
		tr.children().eq(7).text(status_pernikahan.nama);
		tr.next().find('.tempat_lahir').text(obj.tempat_lahir);
		tr.next().find('.tanggal_lahir').text(obj.tanggal_lahir);
		tr.next().find('.suku').text(obj.suku);
		tr.next().find('.tempat_menikah').text(obj.tempat_menikah);
		tr.next().find('.tanggal_menikah').text(obj.tanggal_menikah);
		tr.next().find('.alamat').text(obj.alamat);
		tr.next().find('.pekerjaan').text(obj.pekerjaan);
		tr.find('[name="data_keluarga[nama][]"]').val(obj.nama);
		tr.find('[name="data_keluarga[tempat_lahir][]"]').val(obj.tempat_lahir);
		tr.find('[name="data_keluarga[tanggal_lahir][]"]').val(obj.tanggal_lahir);
		tr.find('[name="data_keluarga[id_jenis_kelamin][]"]').val(obj.id_jenis_kelamin);
		tr.find('[name="data_keluarga[suku][]"]').val(obj.suku);
		tr.find('[name="data_keluarga[tempat_menikah][]"]').val(obj.tempat_menikah);
		tr.find('[name="data_keluarga[id_status_kehidupan][]"]').val(obj.id_status_kehidupan);
		tr.find('[name="data_keluarga[id_status_tertanggung][]"]').val(obj.id_status_tertanggung);
		tr.find('[name="data_keluarga[id_hubungan_keluarga][]"]').val(obj.id_hubungan_keluarga);
		tr.find('[name="data_keluarga[id_agama][]"]').val(obj.id_agama);
		tr.find('[name="data_keluarga[alamat][]"]').val(obj.alamat);
		tr.find('[name="data_keluarga[id_status_pernikahan][]"]').val(obj.id_status_pernikahan);
		tr.find('[name="data_keluarga[tanggal_menikah][]"]').val(obj.tanggal_menikah);
		tr.find('[name="data_keluarga[pekerjaan][]"]').val(obj.pekerjaan);
	}
	else {

		let markup = `
			<tr data-id="${obj.id}" data-json="${escapeHtml(JSON.stringify(obj))}">
				<td class="details-control"><i class="fa fa-plus-square text-green"></i></td>
				<td>${escapeHtml(obj.nama)}</td>
				<td>${escapeHtml(jenis_kelamin.nama)}</td>
				<td>${escapeHtml(status_kehidupan.nama)}</td>
				<td>${escapeHtml(status_tertanggung.nama)}</td>
				<td>${escapeHtml(hubungan_keluarga.nama)}</td>
				<td>${escapeHtml(agama.nama)}</td>
				<td>${escapeHtml(status_pernikahan.nama)}</td>
				<td>
					<div class="input-container">
						<input type="hidden" name="data_keluarga[nama][]" value="${escapeHtml(obj.nama)}">
						<input type="hidden" name="data_keluarga[tempat_lahir][]" value="${escapeHtml(obj.tempat_lahir)}">
						<input type="hidden" name="data_keluarga[tanggal_lahir][]" value="${escapeHtml(obj.tanggal_lahir)}">
						<input type="hidden" name="data_keluarga[id_jenis_kelamin][]" value="${escapeHtml(obj.id_jenis_kelamin)}">
						<input type="hidden" name="data_keluarga[suku][]" value="${escapeHtml(obj.suku)}">
						<input type="hidden" name="data_keluarga[tempat_menikah][]" value="${escapeHtml(obj.tempat_menikah)}">
						<input type="hidden" name="data_keluarga[id_status_kehidupan][]" value="${escapeHtml(obj.id_status_kehidupan)}">
						<input type="hidden" name="data_keluarga[id_status_tertanggung][]" value="${escapeHtml(obj.id_status_tertanggung)}">
						<input type="hidden" name="data_keluarga[id_hubungan_keluarga][]" value="${escapeHtml(obj.id_hubungan_keluarga)}">
						<input type="hidden" name="data_keluarga[id_agama][]" value="${escapeHtml(obj.id_agama)}">
						<input type="hidden" name="data_keluarga[alamat][]" value="${escapeHtml(obj.alamat)}">
						<input type="hidden" name="data_keluarga[id_status_pernikahan][]" value="${escapeHtml(obj.id_status_pernikahan)}">
						<input type="hidden" name="data_keluarga[tanggal_menikah][]" value="${escapeHtml(obj.tanggal_menikah)}">
						<input type="hidden" name="data_keluarga[pekerjaan][]" value="${escapeHtml(obj.pekerjaan)}">
					</div>
					<div class="pull-right">
						<button class="btn btn-xs bg-gray edit-btn">
							<i class="fa fa-pencil"></i>
						</button>
						<button class="btn btn-xs bg-gray delete-btn">
							<i class="fa fa-trash"></i>
						</button>
					</div>
				</td>
			</tr>
			<tr style="display: none;">
				<td colspan="9">
					<table class="detail-table">
						<tr>
							<td>Tempat Lahir</td>
							<td class="tempat_lahir">${escapeHtml(obj.tempat_lahir)}</td>
						</tr>
						<tr>
							<td>Tanggal Lahir</td>
							<td class="tanggal_lahir">${escapeHtml(obj.tanggal_lahir)}</td>
						</tr>
						<tr>
							<td>Suku</td>
							<td class="suku">${escapeHtml(obj.suku)}</td>
						</tr>
						<tr>
							<td>Tempat Menikah</td>
							<td class="tempat_menikah">${escapeHtml(obj.tempat_menikah)}</td>
						</tr>
						<tr>
							<td>Tanggal Menikah</td>
							<td class="tanggal_menikah">${escapeHtml(obj.tanggal_menikah)}</td>
						</tr>
						<tr>
							<td>Alamat</td>
							<td class="alamat">${escapeHtml(obj.alamat)}</td>
						</tr>
						<tr>
							<td>Pekerjaan</td>
							<td class="pekerjaan">${escapeHtml(obj.pekerjaan)}</td>
						</tr>
					</table>
				</td>
			</tr>
		`;

		$('#table-keluarga').find('tr[data-placeholder]').remove();

		$('#table-keluarga tbody').first().append(markup);
	}

	$('#sect-data-keluarga button.btn-add').html('<i class="fa fa-plus"></i> Tambahkan');
});

$('#table-keluarga tbody').on('click', 'td.details-control', function () {
	let tr = $(this).closest('tr');
	if(tr.hasClass('shown')) {
		tr.find('i:first').attr('class', 'fa fa-plus-square text-green');
		tr.next().hide();
		tr.removeClass('shown');
	}
	else {
		tr.find('i:first').attr('class', 'fa fa-minus-square text-red');
		tr.next().show();
		tr.addClass('shown');
	}
});

$('#table-keluarga tbody').on('click', '.delete-btn', function () {
	let tr = $(this).closest('tr');
	tr.next().remove();
	tr.remove();
});

$('#table-keluarga tbody').on('click', '.edit-btn', function () {
	let tr = $(this).closest('tr');
	let id = tr.attr('data-id');
	let data = JSON.parse(tr.attr('data-json'));
	$('#sect-data-keluarga button.btn-add').html('<i class="fa fa-pencil"></i> Simpan perbahan');
	setFormData(data);
	window.scrollTo(0, 0);
});