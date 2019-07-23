<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_Status_Publikasi_m extends CI_Model {
	
    private $_table = "user_status_publikasi";

    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["id" => $id])->row();
    }

    public function create($data)
    {
        $this->db->insert($this->_table, $data);
    }
}