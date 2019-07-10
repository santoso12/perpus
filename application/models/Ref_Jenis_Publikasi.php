<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ref_Jenis_Publikasi extends CI_Model {

        public function __construct()
        {
			// Call the CI_Model constructor
			parent::__construct();
			date_default_timezone_set("Asia/Jakarta");
        }
		
		public function get_jenis_publikasi(){
			$query = $this->db->get('ref_jenis_publikasi');
			
			return $query->result();
		}
		
		public function get_jenis_publikasi_by_id($id){
			$this->db->where('id', $id);
			$query = $this->db->get('ref_jenis_publikasi');
			
			return $query;
		}
}