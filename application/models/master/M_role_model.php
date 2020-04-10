<?php

require_once APPPATH.'models/master/BaseMaster.php';

class M_role_model extends BaseMaster {

	protected $table_name = 'm_role';
	protected $columns = ['id', 'nama'];
	protected $order_by = 'nama ASC';
}