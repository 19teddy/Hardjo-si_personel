<?php
defined('BASEPATH') OR exit('No direct script access allowed');

function normalize_strings($strings) {
	if(is_array($strings)) {

		foreach ($strings as $key => $value) {
			$strings[$key] = normalize_string($value);
		}
	}
	return $strings;
}

function normalize_string($string) {
	$string = (String) $string;
	return empty($string) && $string !== '0' ? NULL : $string;
}

function normalize_dates($date_strings, $return_format = 'Y-m-d', $input_format = NULL) {
	if(is_array($date_strings)) {

		foreach ($date_strings as $key => $value) {
			$date_strings[$key] = normalize_date($value, $return_format, $input_format);
		}
	}
	return $date_strings;
}

function normalize_date($date_string, $return_format = 'Y-m-d', $input_format = NULL) {

	if(empty($date_string)) {
		return NULL;
	}

	$date = $input_format === NULL ? date_create($date_string) : date_create_from_format($input_format, $date_string);

	return ($date === FALSE || $date->format('Y') < 1) ? NULL : $date->format($return_format);
}

function normalize_integers($integer_strings) {
	if(is_array($integer_strings)) {

		foreach ($integer_strings as $key => $value) {
			$integer_strings[$key] = normalize_integer($value);
		}
	}
	return $integer_strings;
}

function normalize_integer($integer_string) {

	$integer = trim(normalize_string($integer_string));
	return is_numeric($integer) ? ((Int) $integer) : NULL;
}

function normalize_floats($float_strings) {
	if(is_array($float_strings)) {

		foreach ($float_strings as $key => $value) {
			$float_strings[$key] = normalize_float($value);
		}
	}
	return $float_strings;
}

function normalize_float($float_string) {

	$float = trim(normalize_string($float_string));
	return floatval($float);
}