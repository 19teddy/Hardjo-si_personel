<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends MY_Controller {

	public function index() {

		if(! $this->is_logged(TRUE)) {
			return;
		}
		
		$this->renderer
			->title('Dashboard')
			->content('dashboard')
			->nav_index('dashboard')
			->render();
	}
}
