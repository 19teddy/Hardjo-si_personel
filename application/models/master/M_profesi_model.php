<?php

require_once APPPATH.'models/master/BaseMaster.php';

class M_profesi_model extends BaseMaster {

	protected $table_name = 'm_profesi';
	protected $columns = ['id', 'nama'];
	protected $order_by = 'nama ASC';
}