<?php

require_once APPPATH.'models/master/BaseMaster.php';

class M_status_kepegawaian_model extends BaseMaster {

	protected $table_name = 'm_status_kepegawaian';
	protected $columns = ['id', 'nama'];
	protected $order_by = 'nama ASC';
}