<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Publikasi extends CI_Controller {

	public function __construct()
	{
		// Call the CI_Controller constructor
		parent::__construct();
		date_default_timezone_set("Asia/Jakarta");
		
		if(!$this->session->userdata('login')){
			redirect('saml/login');
		}
	} 

    public function index()
    {
        $data["publikasi"] = $this->publikasi_m->getAll();
        $data['content'] = "publikasi/index.php";
		$this->load->view('template', $data);
    }

    public function create()
    {
        $publikasi = $this->publikasi_m;
        $validation = $this->form_validation;
        $validation->set_rules($publikasi->rules());

        if ($validation->run()) {
            $publikasi->save();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }
		
		$data['content'] = "publikasi/_form.php";
		$data['jenis_publikasi'] = $this->ref_jenis_publikasi->get_jenis_publikasi();
		$this->load->view('template', $data);
    }

    public function edit($id = null)
    {
        if (!isset($id)) redirect('admin/products');
       
        $product = $this->product_model;
        $validation = $this->form_validation;
        $validation->set_rules($product->rules());

        if ($validation->run()) {
            $product->update();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }

        $data["product"] = $product->getById($id);
        if (!$data["product"]) show_404();
        
        $this->load->view("admin/product/edit_form", $data);
    }

    public function delete($id=null)
    {
        if (!isset($id)) show_404();
        
        if ($this->product_model->delete($id)) {
            redirect(site_url('admin/products'));
        }
    }
}
