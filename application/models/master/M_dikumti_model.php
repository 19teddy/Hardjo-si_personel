<?php

require_once APPPATH.'models/master/BaseMaster.php';

class M_dikumti_model extends BaseMaster {

	protected $table_name = 'm_dikumti';
	protected $columns = ['id', 'nama'];
	protected $order_by = 'nama ASC';
}