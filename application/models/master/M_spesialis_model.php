<?php

require_once APPPATH.'models/master/BaseMaster.php';

class M_spesialis_model extends BaseMaster {

	protected $table_name = 'm_spesialis';
	protected $columns = ['id', 'nama'];
	protected $order_by = 'nama ASC';
}