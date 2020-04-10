<?php

function split_ucfirst($string, $delimiter = '_') {
	return join(' ', array_map(function($item) {
		return ucfirst($item);
	}, explode($delimiter, $string)));
}

function rupiah_format($value) {
	return number_format($value, 0, ',', '.');
}

function id_number_format($number) {
	return $number === NULL ? NULL : rtrim(rtrim(number_format($number, 5), '0'), '.');
}

function change_date_format($date, $format) {
	return empty($date) ? NULL : date($format, strtotime($date));
}

function base64_image($path) {
	$image = file_get_contents($path);
	return 'data:image/jpeg;base64,'.base64_encode($image);
}