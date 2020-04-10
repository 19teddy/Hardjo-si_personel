<?php

require_once APPPATH.'models/master/BaseMaster.php';

class M_jenis_kelamin_model extends BaseMaster {

	protected $table_name = 'm_jenis_kelamin';
	protected $columns = ['id', 'nama'];
	protected $order_by = 'nama ASC';
}