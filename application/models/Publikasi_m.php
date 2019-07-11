<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Publikasi_m extends CI_Model {
	
    private $_table = "publikasi";
	
	public $id;
	public $id_jenis_publikasi;
	public $jenis;
	public $judul;
	public $publisher;
	public $tanggal_submission;
	public $status_draft_artikel;
	public $status_verifikasi;
	public $is_approved;
	public $approved_date;
	public $approved_by;
	public $create_date;
	public $create_by;
	public $create_ip;
	public $update_date;
	public $update_by;
	public $update_ip;
	public $file_name;
	public $file_path;
	public $file_url;
	public $file_size;
	public $file_type;


    public function rules()
    {
        return [
            ['field' => 'judul',
            'label' => 'Judul',
            'rules' => 'required'],

            ['field' => 'jenis',
            'label' => 'Jenis',
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

    public function save()
    {
        $post = $this->input->post();
        $this->judul = $post["judul"];
        $this->jenis = $post["jenis"];
        $this->publisher = $post["publisher"];
        $this->db->insert($this->_table, $this);
    }

    public function update()
    {
        $post = $this->input->post();
        $this->id = $post["id"];
        $this->judul = $post["judul"];
        $this->jenis = $post["jenis"];
        $this->publisher = $post["publisher"];
        $this->db->update($this->_table, $this, array('id' => $post['id']));
    }

    public function delete($id)
    {
        return $this->db->delete($this->_table, array("id" => $id));
    }
}