<?php

require_once APPPATH.'models/master/BaseMaster.php';

class M_kota_model extends BaseMaster {

	protected $table_name = 'm_kota';
	protected $columns = ['id', 'nama'];
	protected $order_by = 'nama ASC';
}