<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		if($this->session->userdata('login')){
			//var_dump($this->session->userdata('id_user'));exit;
			$id_user = $this->session->userdata('id_user');
			
			$status_user = $this->user_status_publikasi_m->getByIdUser($id_user);
			
			if ($status_user){
				$status = $status_user->status_publikasi;
				if($status == 1){
					$data['content'] = "publikasi/index.php";
				} else {
					redirect('eprints/index', 'refresh');
				}
			} else {
				$data['content'] = "dashboard/index.php";
			}
			$this->load->view('template', $data);
		}else{
			redirect('saml/login');
		}
	}
}
