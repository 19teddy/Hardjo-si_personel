<?php

require_once APPPATH.'libraries/dompdf/lib/html5lib/Parser.php';
// require_once APPPATH.'libraries/dompdf/lib/php-font-lib/src/FontLib/Autoloader.php';
// require_once APPPATH.'libraries/dompdf/lib/php-svg-lib/src/autoload.php';
require_once APPPATH.'libraries/dompdf/src/Autoloader.php';
// require_once 'dompdf/src/Autoloader.php';
Dompdf\Autoloader::register();
use Dompdf\Dompdf;
use Dompdf\Options;
use iio\libmergepdf\Merger;

class Pdf extends MY_Controller {

	public function riwayat_hidup($id_pegawai = NULL) {

		if(!$this->is_logged(TRUE)) {
			return;
		}

		if(empty($id_pegawai)) {
			return $this->not_found();
		}

		$this->load->model('Pegawai_model', 'pegawai_model');


		$pegawai 	= $this->pegawai_model->get_one($id_pegawai, PHP_INT_MAX, 0, NULL);
		$markup_rh  = $this->load->view('pdf/bentuk-rh',(Array) $pegawai, TRUE);
		$markup_dk  = $this->load->view('pdf/bentuk-dk',(Array) $pegawai, TRUE);
		$markup_test  = $this->load->view('pdf/bentuk-lampiranI',(Array) NUll, TRUE);

		// echo '<pre>'; print_r($pegawai); die();
		$this->render_data_pegawai($markup_rh, $markup_dk, $id_pegawai);

	}

	private function render_data_pegawai($markup_rh, $markup_dk, $filename = 'dokumen') {

		//set options
		$options = new Options();
		$options->set('isRemoteEnabled', TRUE);
		$options->set('defaultFont', 'Arial');

		$context = stream_context_create([ 
			'ssl' => [
				'verify_peer' => FALSE, 
				'verify_peer_name' => FALSE,
				'allow_self_signed'=> TRUE
			]
		]);
		$this->load->helper('file');

		$dompdf = new Dompdf($options);
		$dompdf->setHttpContext($context);
		$dompdf->loadHtml($markup_rh);
		// $dompdf->setPaper('A4', 'potrait');
		$dompdf->set_paper('A4', 'potrait');
		$dompdf->render();
		$file1 = FCPATH.'storage/tmp/'.$this->RandomString().'.pdf';
		write_file($file1, $dompdf->output());

		//set options
		$options = new Options();
		$options->set('isRemoteEnabled', TRUE);
		$options->set('defaultFont', 'Arial');

		$context = stream_context_create([ 
			'ssl' => [
				'verify_peer' => FALSE, 
				'verify_peer_name' => FALSE,
				'allow_self_signed'=> TRUE
			]
		]);
		$this->load->helper('file');
		
		$dompdf = new Dompdf($options);
		$dompdf->setHttpContext($context);
		$dompdf->loadHtml($markup_dk);
		// $dompdf->setPaper('A4', 'landscape');
		$dompdf->set_paper('A4', 'landscape');
		$dompdf->render();
		$file2 = FCPATH.'storage/tmp/'.$this->RandomString().'.pdf';
		write_file($file2, $dompdf->output());


		$merger = new Merger;

		$merger->addFile($file1);
		$merger->addFile($file2);

		$file3 = FCPATH.'storage/tmp/'.$this->RandomString().'.pdf';

		$pdf = $merger->merge('file', $file3);

		@unlink($file1);
		@unlink($file2);

		$this->output
			->set_content_type('pdf')
			->set_output($pdf);
	}

	private function RandomString() 
	{	  
	    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
	    $randstring = '';
	    for ($i = 0; $i < 10; $i++) {
	        $randstring .= $characters[rand(0, strlen($characters) - 1)];
	    }
	    return $randstring;
	}
}