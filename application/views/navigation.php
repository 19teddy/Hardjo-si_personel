<?php

	$navigations = [
		[
			'text' => 'NAVIGASI UTAMA',
		],
		[
			'id' => 'dashboard',
			'text' => 'Dashboard',
			'icon' => 'fa fa-dashboard',
			'value' => 'dashboard',
		],
		[
			'id' => 'personil',
			'text' => 'Personil',
			'icon' => 'fa fa-user',
			'value' => 'personil',
		],
		[
			'id' => 'kenaikan-pangkat',
			'text' => 'Kenaikan Pangkat',
			'icon' => 'fa fa-user',
			'value' => 'kenaikan-pangkat',
		],
		[
			'id' => 'pengguna',
			'text' => 'Pengguna',
			'icon' => 'fa fa-user',
			'value' => 'pengguna',
		],
		[
			'text' => 'PENGATURAN',
		],
		[
			'id' => 'master',
			'text' => 'Data Master',
			'icon' => 'fa fa-database',
			'value' => [
				[
					'id' => 'dikmilti',
					'text' => 'DIKMILTI',
					'icon' => 'fa fa-circle-o',
					'value' => 'master/dikmilti',
				],
				[
					'id' => 'dikumti',
					'text' => 'DIKUMTI',
					'icon' => 'fa fa-circle-o',
					'value' => 'master/dikumti',
				],
				[
					'id' => 'golongan',
					'text' => 'Golongan',
					'icon' => 'fa fa-circle-o',
					'value' => 'master/golongan',
				],
				[
					'id' => 'grade',
					'text' => 'Grade',
					'icon' => 'fa fa-circle-o',
					'value' => 'master/grade',
				],
				[
					'id' => 'hubungan-keluarga',
					'text' => 'Hubungan Keluarga',
					'icon' => 'fa fa-circle-o',
					'value' => 'master/hubungan-keluarga',
				],
				[
					'id' => 'jabatan',
					'text' => 'Jabatan',
					'icon' => 'fa fa-circle-o',
					'value' => 'master/jabatan',
				],
				[
					'id' => 'pangkat',
					'text' => 'Pangkat',
					'icon' => 'fa fa-circle-o',
					'value' => 'master/pangkat',
				],
				[
					'id' => 'status-pernikahan',
					'text' => 'Status Pernikahan',
					'icon' => 'fa fa-circle-o',
					'value' => 'master/status-pernikahan',
				],
			],
		],
	];

	echo $this->renderer->render_navigation($navigations, $this->session->role);
?>