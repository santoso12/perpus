<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Publikasi_m extends CI_Model {
	
    private $_table = "publikasi";
	
	public $id;
	//public $userid;
	public $id_user;
	public $id_jenis_publikasi;
	//public $jenis;
	public $judul;
	public $publisher;
	public $tanggal_submission;
	public $status_draft_artikel;
	public $status_verifikasi;
	public $is_approved;
	public $approved_date;
	public $approved_by;
	public $create_date;
	//public $create_by;
	//public $create_ip;
	public $update_date;
	//public $update_by;
	//public $update_ip;
	public $file_submission;
	public $file_publikasi;
	public $url_jurnal_seminar;
	/* public $file_path;
	public $file_url;
	public $file_size;
	public $file_type;
 */

    public function rules()
    {
        return [
            ['field' => 'judul',
            'label' => 'Judul',
            'rules' => 'required'],
            
            ['field' => 'publisher',
            'label' => 'Publisher',
            'rules' => 'required']
        ];
    }

    public function getAll()
    {
        return $this->db->get($this->_table)->result();
    }
    
    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["id" => $id])->row();
    }
	
    public function getByIdUser($id)
    {
        return $this->db->get_where($this->_table, ["id_user" => $id])->result();
    }	
	
	//cek apakah ada data publikasi yg sudah di approve 
    public function cekSudahUpload($id)
    {
        return $this->db->get_where($this->_table, ["id_user" => $id, "is_approved" => 1])->result();
    }

    public function save()
    {
		$now = date("Y-m-d H:i:s");
		
		$id_user = $this->session->userdata('id_user');
		
        $post = $this->input->post();
        $this->id_jenis_publikasi = $post["id_jenis_publikasi"];
        $this->judul = $post["judul"];
        //$this->jenis = $post["jenis"];
        $this->publisher = $post["publisher"];
        $this->tanggal_submission = $post["tanggal_submission"];
        $this->status_draft_artikel = $post["status_draft_artikel"];
        $this->url_jurnal_seminar = $post["url_jurnal_seminar"];
        $this->create_date = $now;
        $this->id_user = $id_user;
        //$this->create_ip = $this->input->ip_address();
		$this->file_submission = $this->_uploadFileSubmission();
		$this->file_publikasi = $this->_uploadFile();
        $query = $this->db->insert($this->_table, $this);
		return $query;
    }

    public function approve($id)
    {		
		$data = array(
			'approved_by' => $this->session->userdata('id_user'),
			'approved_date' => date("Y-m-d H:i:s"),
			'is_approved' => 1,
		);
		$this->db->where('id', $id);
		$query = $this->db->update($this->_table, $data);
		return $query;
    }
	
    public function tolak($id)
    {		
		$data = array(
			'approved_by' => $this->session->userdata('id_user'),
			'approved_date' => date("Y-m-d H:i:s"),
			'is_approved' => 2,
		);
		$this->db->where('id', $id);
		$query = $this->db->update($this->_table, $data);
		return $query;
    }

    private function _uploadFile()
	{
		$config['upload_path']          = './upload/publikasi/';
		$config['allowed_types']        = 'pdf|doc|docx|jpg|png';
		$config['file_name']            = date("Y-m-d").'-'.uniqid();
		$config['overwrite']			= true;
		$config['max_size']             = 2048; // 2MB

		$this->load->library('upload', $config, 'publikasi');
		$this->publikasi->initialize($config);
		$upload_publikasi= $this->publikasi->do_upload('file_publikasi');

		if ($upload_publikasi) {
			return $this->publikasi->data("file_name");
		}
		
		return "";
	}
	
    private function _uploadFileSubmission()
	{
		$config['upload_path']          = './upload/submission/';
		$config['allowed_types']        = 'pdf|doc|docx|jpg|png';
		$config['file_name']            = date("Y-m-d").'-'.uniqid();
		$config['overwrite']			 = true;
		$config['max_size']             = 2048; // 2MB

		$this->load->library('upload', $config, 'submission');
		$this->submission->initialize($config);
		$upload_submission= $this->submission->do_upload('file_submission');

		if ($upload_submission) {
			return $this->submission->data("file_name");
		}
		
		return "";
	}
}