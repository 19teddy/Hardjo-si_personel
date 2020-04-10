<?php

require_once APPPATH.'models/BaseModel.php';

class Upload_model extends BaseModel {

	private static $upload_folder = 'foto';

	public function upload_foto($key) {

		$config['upload_path'] = FCPATH.static::$upload_folder.'/';
		$config['allowed_types'] = 'gif|jpg|png|jpeg';

		$this->load->library('upload', $config);

		$upload_result = $this->upload->do_upload($key);

		if(!$upload_result) {
			return FALSE;
		}

		$raw_name = $this->upload->data('raw_name');
		$file_ext = $this->upload->data('file_ext');
		$file_path = $this->upload->data('file_path');
		$new_raw_name = $this->random_name();

		$old_full_path = $file_path.$raw_name.$file_ext;
		$new_full_path = $file_path.$new_raw_name.$file_ext;

		rename($old_full_path, $new_full_path);

		$s_file_name = '1x1.'.$new_raw_name.$file_ext;
		$p_file_name = '2x3.'.$new_raw_name.$file_ext;

		$this->load->library('image_cr');
		$this->image_cr->crop_resize($new_full_path, $s_file_name, 250, 250);
		$this->image_cr->crop_resize($new_full_path, $p_file_name, 200, 300);

		return $new_raw_name.$file_ext;
	}


	private function random_name($length = 32)
	{
		$pool = str_split(str_shuffle('0123456789abcdefghijklmnopqrstuvwxyz'));
		$result = '';
		while (strlen($result) < $length) {
			$result = $result . $pool[rand(0, 35)];
		}
		return $result;
	}
}