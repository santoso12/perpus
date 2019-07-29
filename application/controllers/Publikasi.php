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
		$id_user = $this->session->userdata('id_user');
        $data["account"] = $this->user_publikasi_m->getById($id_user);
        $data["publikasi"] = $this->publikasi_m->getByIdUser($id_user);
		$data['status_publikasi'] = $this->user_status_publikasi_m->getByIdUser($id_user);
		$data['cekSudahUpload'] = $this->publikasi_m->cekSudahUpload($id_user);
        $data['content'] = "publikasi/index.php";
		$this->load->view('template', $data);
    } 
	
    public function sudah()
    {
		$id_user = $this->session->userdata('id_user');
		//cek apakah sudah ada datanya
		$cek = $this->user_status_publikasi_m->getByIdUser($id_user);
		
		//jika belum maka insert data baru
		if(!$cek){
			$data = [
				'id_user' => $id_user,
				'status_publikasi' => 1,
				'create_date' => date("Y-m-d H:i:s"),
			];
			$user = $this->user_status_publikasi_m->create($data);
		} 
		redirect('publikasi/index');
    }	
	
    public function belum()
    {
		$id_user = $this->session->userdata('id_user');
		//cek apakah sudah ada datanya
		$cek = $this->user_status_publikasi_m->getByIdUser($id_user);
		
		//jika belum maka insert data baru
		if(!$cek){
			$data = [
				'id_user' => $id_user,
				'status_publikasi' => 2,
				'create_date' => date("Y-m-d H:i:s"),
			];
			$user = $this->user_status_publikasi_m->create($data);
		} 
		redirect('eprints/create_account');
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

   /*  public function edit($id = null)
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
    } */
	
	public function view($id = null){
		
		$id_user = $this->session->userdata('id_user');
		
		$data["publikasi"] = $publikasi_m->getById($id);
		
	}

   /*  public function delete($id=null)
    {
        if (!isset($id)) show_404();
        
        if ($this->product_model->delete($id)) {
            redirect(site_url('admin/products'));
        }
    } */
	
	public function edit_status_publikasi($id_user)
	{
		if($id_user == $this->session->userdata('id_user')){
			$data['status'] = $this->user_status_publikasi_m->getByIdUser($id_user);
			$data['content'] = "publikasi/_form-status-publikasi.php";
			$this->load->view('template', $data);
		}
	}
	
	public function Update_status_publikasi()
	{
		$id_user = $this->session->userdata('id_user');
		$update = $this->user_status_publikasi_m->update($id_user);
		if($update){
			$this->session->set_flashdata('msg_sukses', 'Update Success.');
			redirect('dashboard');
		}else{
			$this->session->set_flashdata('msg_gagal', 'Update Gagal.');
			redirect('publikasi/edit_status_publikasi/'.$id_user);
		}
	}
}
