<?php

require_once APPPATH.'models/master/BaseMaster.php';

class M_ruang_model extends BaseMaster {

	protected $table_name = 'm_ruangan';
	protected $columns = ['id', 'nama'];
	protected $order_by = 'nama ASC';
}