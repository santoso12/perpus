<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_Publikasi_m extends CI_Model {
	
    private $_table = "user_publikasi";

    public function getByUsername($username)
    {
        return $this->db->get_where($this->_table, ["username" => $username])->row();
    }

    public function create($data)
    {
        $this->db->insert($this->_table, $data);
		return $this->db->insert_id();
    }
}