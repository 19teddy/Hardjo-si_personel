<?php

require_once APPPATH.'models/master/BaseMaster.php';

class M_jabatan_model extends BaseMaster {

	protected $table_name = 'm_jabatan';
	protected $columns = ['id', 'nama'];
	protected $order_by = 'id ASC';
}