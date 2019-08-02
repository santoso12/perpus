<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function __construct()
	{
		// Call the CI_Controller constructor
		parent::__construct();
		date_default_timezone_set("Asia/Jakarta");
		
		if(!($this->session->userdata('login') && ($this->session->userdata('jenis_user')==1))){
			redirect('saml/login');
		}
		$this->load->model('Publikasi_model');
	} 

    public function index()
    { 
		$id_user = $this->session->userdata('id_user');
        $data["account"] = $this->user_publikasi_m->getById($id_user);
        $data['content'] = "admin/index.php";
		$this->load->view('template', $data);
    } 
	
	//menampilkan data publikasi
    function publikasi(){
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . 'admin/publikasi.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'admin/publikasi.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'admin/publikasi.html';
            $config['first_url'] = base_url() . 'admin/publikasi.html';
        }

        $config['per_page'] = 20;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->Publikasi_model->total_rows($q);
        $publikasi_admin = $this->Publikasi_model->get_limit_data($config['per_page'], $start, $q);

        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'publikasi_admin_data' => $publikasi_admin,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
            'content' => 'admin/publikasi',
        );
        $this->load->view('template', $data);
    }
	
	//view detail Publikasi
	public function view($id) 
    {
        $row = $this->Publikasi_model->get_by_id($id);
        if ($row) {
            $data = array(
		'id' => $row->id,
		'id_user' => $row->id_user,
		'id_jenis_publikasi' => $row->id_jenis_publikasi,
		'id_kategori_publikasi' => $row->id_kategori_publikasi,
		'judul' => $row->judul,
		'publisher' => $row->publisher,
		'tanggal_submission' => $row->tanggal_submission,
		'status_draft_artikel' => $row->status_draft_artikel,
		'status_verifikasi' => $row->status_verifikasi,
		'is_approved' => $row->is_approved,
		'approved_date' => $row->approved_date,
		'approved_by' => $row->approved_by,
		'create_date' => $row->create_date,
		//'create_by' => $row->create_by,
		//'create_ip' => $row->create_ip,
		'update_date' => $row->update_date,
		//'update_by' => $row->update_by,
		//'update_ip' => $row->update_ip,
		'file_publikasi' => $row->file_publikasi,
		'file_submission' => $row->file_submission,
		'url_jurnal_seminar' => $row->url_jurnal_seminar,
		'content' => 'admin/detail-publikasi',
	    );
            $this->load->view('template', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('admin/publikasi'));
        }
    }
	
	public function Approve($id)
	{
		$update = $this->publikasi_m->approve($id);
		if($update){
			$this->session->set_flashdata('msg_sukses', 'Update Success.');
			redirect('admin/publikasi');
		}else{
			$this->session->set_flashdata('msg_gagal', 'Update Gagal.');
			redirect('admin/publikasi');
		}
	}
	
	public function Tolak($id)
	{
		$update = $this->publikasi_m->tolak($id);
		if($update){
			$this->session->set_flashdata('msg_sukses', 'Update Success.');
			redirect('admin/publikasi');
		}else{
			$this->session->set_flashdata('msg_gagal', 'Update Gagal.');
			redirect('admin/publikasi');
		}
	}
}
