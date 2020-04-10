<?php

require_once APPPATH.'models/master/BaseMaster.php';

class M_pangkat_model extends BaseMaster {

	protected $table_name = 'm_pangkat';
	protected $columns = ['id', 'nama'];
	protected $order_by = 'id ASC';
}