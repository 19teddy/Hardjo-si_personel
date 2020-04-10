<?php

require_once APPPATH.'models/master/BaseMaster.php';

class M_status_jabatan_model extends BaseMaster {

	protected $table_name = 'm_status_jabatan';
	protected $columns = ['id', 'nama'];
	protected $order_by = 'nama ASC';
}