<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Image_cr {

	private $CI = NULL;

	public function crop_resize($filepath, $new_name, $target_width, $target_height, $fit_crop = FALSE) {

		$filename = basename($filepath);

		$ratio = $target_width / $target_height;

		$dir = dirname($filepath);

		$original_size = getimagesize("$dir/$filename");
		$crop_x = $width = $original_size[0];
		$crop_y = $height = $original_size[1];

		if(($height * $ratio < $width) ^ $fit_crop) {
			$crop_x = $height * $ratio;
		}
		else {
			$crop_y = $width / $ratio;
		}

		$config = array(
			'source_image' => $filepath,
			'new_image' => '_' . $new_name,
			'maintain_ratio' => FALSE,
			'width' => (int)$crop_x,
			'height' => (int)$crop_y,
			'x_axis' => (int)(($width - $crop_x) / 2),
			'y_axis' => (int)(($height - $crop_y) / 2),
		);

		if(!$this->CI->image_lib->initialize($config)) {
			return FALSE;
		}

		if(!$this->CI->image_lib->crop()) {
			return FALSE;
		}

		$this->CI->image_lib->clear();

		$config = array(
			'source_image' => "$dir/_$new_name",
			'new_image' => "$dir/$new_name",
			'width' => $target_width,
			'height' => $target_height,
			'maintain_ratio' => TRUE,
		);

		if(!$this->CI->image_lib->initialize($config)) {
			return FALSE;
		}

		if(!$this->CI->image_lib->resize()) {
			return FALSE;
		}

		unlink("$dir/_$new_name");
		return TRUE;
	}

	function __construct() {
		$this->CI = &get_instance();
		$this->CI->load->library('image_lib');
		$this->CI->load->helper('array');
	}
}