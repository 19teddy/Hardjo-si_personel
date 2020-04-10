<?php

require_once APPPATH.'models/master/BaseMaster.php';

class M_unit_kerja_model extends BaseMaster {

	protected $table_name = 'm_unit_kerja';
	protected $columns = ['id', 'nama'];
	protected $order_by = 'nama ASC';
}