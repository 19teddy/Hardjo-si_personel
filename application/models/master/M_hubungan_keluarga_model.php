<?php

require_once APPPATH.'models/master/BaseMaster.php';

class M_hubungan_keluarga_model extends BaseMaster {

	protected $table_name = 'm_hubungan_keluarga';
	protected $columns = ['id', 'nama'];
	protected $order_by = 'nama ASC';
}