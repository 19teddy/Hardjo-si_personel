<?php

require_once APPPATH.'models/master/BaseMaster.php';

class M_dikmilti_model extends BaseMaster {

	protected $table_name = 'm_dikmilti';
	protected $columns = ['id', 'nama'];
	protected $order_by = 'nama ASC';
}