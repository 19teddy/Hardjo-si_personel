<?php

require_once APPPATH.'models/master/BaseMaster.php';

class M_agama_model extends BaseMaster {

	protected $table_name = 'm_agama';
	protected $columns = ['id', 'nama'];
	protected $order_by = 'nama ASC';
}