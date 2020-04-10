<?php

require_once APPPATH.'models/master/BaseMaster.php';

class M_grade_model extends BaseMaster {

	protected $table_name = 'm_grade';
	protected $columns = ['id', 'nama'];
	protected $order_by = 'nama ASC';
}