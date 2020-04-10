<?php

require_once APPPATH.'models/master/BaseMaster.php';

class M_suku_model extends BaseMaster {

	protected $table_name = 'm_suku';
	protected $columns = ['id', 'nama'];
	protected $order_by = 'nama ASC';
}