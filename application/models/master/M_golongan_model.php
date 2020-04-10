<?php

require_once APPPATH.'models/master/BaseMaster.php';

class M_golongan_model extends BaseMaster {

	protected $table_name = 'm_golongan';
	protected $columns = ['id', 'nama'];
	protected $order_by = 'nama ASC';
}