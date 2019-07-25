<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Eprints_m extends CI_Model {

        public $title;
        public $content;
        public $date;

        public function __construct()
        {
			// Call the CI_Model constructor
			parent::__construct();
			date_default_timezone_set("Asia/Jakarta");
        }
		
		public function check_account($username){
			$this->db->where('username', $username);
			$query = $this->db->get('user');
			
			if($query->num_rows() > 0){
				return TRUE;
			}else{
				return FALSE;
			}
		}
		
		public function get_account($username){
			$this->db->where('username', $username);
			$query = $this->db->get('user');
			
			return $query;
		}
		
		public function get_account_by_id($userid){
			$this->db->where('userid', $userid);
			$query = $this->db->get('user');
			
			return $query;
		}
		
		function get_last_userid(){
			$query = $this->db->query("SELECT MAX(userid) id FROM user");
			$row = $query->row();
			
			return $row->id;
		}
		
		public function create_account(){
			$tahun = date("Y"); $bulan = date("m"); $hari = date("d");
			$jam = date("h"); $menit = date("i"); $detik = date("s");
			$account = array(
						'userid' => $this->get_last_userid() + 1,
						'rev_number' => 3,
						'username' => $this->input->post('username'),
						'password' => crypt($this->input->post('password'), 'rl'),
						'usertype' => 'user',
						'joined_year' => $tahun,
						'joined_month' => $bulan,
						'joined_day' => $hari,
						'joined_hour' => $jam,
						'joined_minute' => $menit,
						'joined_second' => $detik,
						'name_family' => $this->input->post('nama'),
						'name_given' => $this->input->post('nama'),
						'email' => $this->input->post('email'),
						'frequency' => 'never',
						'mailempty' => 'FALSE',
						'hideemail' => 'TRUE',
						'address' => $this->input->post('address')
			);
			$query = $this->db->insert("user", $account);
			
			return $query;
		}
		
		public function update_account($userid){
			$account = array(
						'password' => crypt($this->input->post('password'), 'rl'),
						'name_family' => $this->input->post('nama'),
						'name_given' => $this->input->post('nama'),
						'email' => $this->input->post('email'),
						'address' => $this->input->post('address')
			);
			$this->db->where('userid', $userid);
			$query = $this->db->update("user", $account);
			
			return $query;
		}
		
		public function update_account_wp($userid){
			$account = array(
						'name_family' => $this->input->post('nama'),
						'name_given' => $this->input->post('nama'),
						'email' => $this->input->post('email'),
						'address' => $this->input->post('address')
			);
			$this->db->where('userid', $userid);
			$query = $this->db->update("user", $account);
			
			return $query;
		}
		
		public function get_item($username){
			$this->db->select('userid');
			$this->db->where('username', $username);
			$get_userid = $this->db->get('user');
				
			$this->db->select('eprintid, type, title, abstract, department, institution, datestamp_day, datestamp_month, datestamp_year, datestamp_hour, datestamp_minute, lastmod_day, lastmod_month, lastmod_year, lastmod_hour, lastmod_minute, eprint_status');
			if($get_userid->num_rows() > 0){
				$user = $get_userid->row();
				$this->db->where('userid', $user->userid);
			}else{
				$this->db->where('userid', 0);
			}
			$get_item = $this->db->get('eprint');
			
			return $get_item;
		}
}