<?php

require_once APPPATH.'models/master/BaseMaster.php';

class M_korp_model extends BaseMaster {

	protected $table_name = 'm_korp';
	protected $columns = ['id', 'nama'];
	protected $order_by = 'nama ASC';
}