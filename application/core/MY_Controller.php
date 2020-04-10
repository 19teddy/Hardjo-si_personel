<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends CI_Controller {

	function __construct() {
		parent::__construct();
		$this->load->library('renderer');
		$this->load->library('input_sanitizer');
		$this->load->helper(['url', 'indonesian_date', 'validation', 'render']);
		$this->render_config($this->renderer);
	}

	protected function is_logged($handle = FALSE) {

		$is_logged = $this->session->is_logged;
		if(!$is_logged && $handle) {

			$encoded_uri = urlencode($this->uri->uri_string);
			redirect(empty($encoded_uri) ? 'user/login' : ('user/login?r='.$encoded_uri));
		}
		return $is_logged;
	}

	protected function render_config(& $renderer) {
		$renderer->app_name('RSPAU - Sistem Personil');
		$renderer->data('userdata', $this->session->get_userdata());
	}

	protected function method_not_allowed($allowed_methods) {

		$this->output
			->set_status_header(405)
			->set_header('Allow: '.join(',', $allowed_methods))
			->set_output('405: Method Not Allowed')
		;
	}

	protected function not_found() {
		$this->output->set_status_header(404)->set_output('404: Not Found');
	}

	protected function forbidden() {
		$this->output->set_status_header(403)->set_output('403: Forbidden');
	}

	protected function server_error() {
		$this->output->set_status_header(500)->set_output('500: Internal Server Error');
	}

	protected function post_only() {

		if($this->input->method() !== 'post') {
			$this->output
				->set_status_header(405)
				->set_header('Allow: POST')
				->set_output('405: Method Not Allowed');

			return FALSE;
		}

		else return TRUE;
	}

	protected function get_only() {

		if($this->input->method() !== 'get') {
			$this->output
				->set_status_header(405)
				->set_header('Allow: GET')
				->set_output('405: Method Not Allowed');

			return FALSE;
		}

		else return TRUE;
	}

	protected function set_alert($type, $message, $fields = []) {

		$this->session->set_flashdata([
			'alert' => [
				'type' => $type,
				'message' => $message,
				'fields' => $fields,
			]
		]);
	}

	protected function save_input($fields = []) {

		$this->session->set_flashdata([
			'input' => $fields
		]);
	}

	protected function paging_params($search_filter = NULL) {

		list($limit, $offset, $search) = $this->input_sanitizer->method('get')
			->integer_between('limit', 0, 100, 20)
			->integer_above('offset', 0, 0)
			->string_array('q')
			->value('list');

		if(is_array($search_filter)) {
			$_search = [];
			foreach ($search_filter as $filter) {
				if(isset($search[$filter]) && !empty($search[$filter])) {
					$_search[$filter] = $search[$filter];
				}
			}
			$search = $_search;
		}
		else {
			$_search = [];
			foreach ($search as $key => $value) {
				if(!empty($value)) {
					$_search[$key] = $value;
				}
			}
			$search = $_search;
		}

		$this->renderer->data([
			'limit' => $limit,
			'offset' => $offset,
			'q' => $search,
		]);

		return (Object) [
			'limit' => $limit,
			'offset' => $offset,
			'search' => $search,
		];
	}

	protected function load_master($models) {

		if(!is_array($models)) {
			$models = [$models];
		}

		foreach ($models as $value) {
			$this->load->model('master/M_'.$value.'_model', 'm_'.$value);
		}
	}
}