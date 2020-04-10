<?php

require_once APPPATH.'models/master/BaseMaster.php';

class M_bagian_model extends BaseMaster {

	protected $table_name = 'm_bagian';
	protected $columns = ['id', 'nama'];
	protected $order_by = 'nama ASC';
}