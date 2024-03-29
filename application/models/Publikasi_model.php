<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Publikasi_model extends CI_Model
{

    public $table = 'publikasi';
    public $id = 'id';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    // get all
    function get_all()
    {
        $this->db->order_by($this->id, $this->order);
        return $this->db->get($this->table)->result();
    }

    // get data by id
    function get_by_id($id)
    {
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }
    
    // get total rows
    function total_rows($q = NULL) {
        $this->db->like('id', $q);
	$this->db->or_like('id_user', $q);
	$this->db->or_like('id_kategori_publikasi', $q);
	$this->db->or_like('judul', $q);
	$this->db->or_like('publisher', $q);
	$this->db->or_like('tanggal_submission', $q);
	$this->db->or_like('status_draft_artikel', $q);
	$this->db->or_like('status_verifikasi', $q);
	$this->db->or_like('is_approved', $q);
	$this->db->or_like('approved_date', $q);
	$this->db->or_like('approved_by', $q);
	$this->db->or_like('create_date', $q);
	$this->db->or_like('update_date', $q);
	$this->db->or_like('file_publikasi', $q);
	$this->db->or_like('file_submission', $q);
	$this->db->or_like('url_jurnal_seminar', $q);
	$this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL) {
        $this->db->order_by($this->id, $this->order);
        $this->db->like('id', $q);
	$this->db->or_like('id_user', $q);
	$this->db->or_like('id_jenis_publikasi', $q);
	$this->db->or_like('judul', $q);
	$this->db->or_like('publisher', $q);
	$this->db->or_like('tanggal_submission', $q);
	$this->db->or_like('status_draft_artikel', $q);
	$this->db->or_like('status_verifikasi', $q);
	$this->db->or_like('is_approved', $q);
	$this->db->or_like('approved_date', $q);
	$this->db->or_like('approved_by', $q);
	$this->db->or_like('create_date', $q);
	$this->db->or_like('update_date', $q);
	$this->db->or_like('file_publikasi', $q);
	$this->db->or_like('file_submission', $q);
	$this->db->or_like('url_jurnal_seminar', $q);
	$this->db->limit($limit, $start);
        return $this->db->get($this->table)->result();
    }

    // insert data
    function insert($data)
    {
        $this->db->insert($this->table, $data);
    }

    // update data
    function update($id, $data)
    {
        $this->db->where($this->id, $id);
        $this->db->update($this->table, $data);
    }

    // delete data
    function delete($id)
    {
        $this->db->where($this->id, $id);
        $this->db->delete($this->table);
    }

}

/* End of file Publikasi_model.php */
/* Location: ./application/models/Publikasi_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2019-07-30 05:48:24 */
/* http://harviacode.com */