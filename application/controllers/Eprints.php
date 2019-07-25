<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Eprints extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function __construct()
	{
		// Call the CI_Controller constructor
		parent::__construct();
		date_default_timezone_set("Asia/Jakarta");
	} 
	 
	public function index()
	{
		if($this->session->userdata('login')){
			$username = $this->session->userdata('email');
			$id_user = $this->session->userdata('id_user');
			
			$check_account = $this->eprints_m->check_account($username);
			if($check_account){
				$data['account'] = $this->eprints_m->get_account($username);
				$data['item'] = $this->eprints_m->get_item($username);
				$data['status_publikasi'] = $this->user_status_publikasi_m->getByIdUser($id_user);
				$data['content'] = "eprints/account.php";
			}else{
				$data['username'] = $username;
				$data['content'] = "eprints/create_account.php";
			}
			$this->load->view('template', $data);
		}else{
			redirect('saml/login');
		}
	}
	
	public function tesis($prodi){
		if($this->session->userdata('login')){
						$query = $this->db->query("
						SELECT ecn.creators_name_given, ecn.creators_name_family, e.title judul, e.department sumber, e.date_year tahun, e.abstract abstrak, ed.divisions
						FROM eprint e
						JOIN eprint_divisions ed ON ed.eprintid = e.eprintid
						JOIN eprint_creators_name ecn ON ecn.eprintid = e.eprintid
						WHERE ed.divisions = '".$prodi."'
					");
			if($query->num_rows() > 0){
				?>
					<table border = 1>
						<tr>
							<th rowspan = 2>No</th>
							<th rowspan = 2>Name Given</th>
							<th rowspan = 2>Name Family</th>
							<th rowspan = 2>Judul</th>
							<th rowspan = 2>Abstrak</th>
							<th colspan = 10>Kata Kunci</th>
							<th rowspan = 2>Tahun</th>
							<th rowspan = 2>Sumber</th>
						</tr>
						<tr>
							<th>1</th><th>2</th><th>3</th><th>4</th><th>5</th><th>6</th><th>7</th><th>8</th><th>9</th><th>10</th>
						</tr>
				<?php
				$no = 1;
				foreach($query->result() as $row):
					$abstrak = trim($row->abstrak);
					$abstrak = strip_tags($row->abstrak);
					//while($jum < 6){
						$key = "";
						if($key == ""){
							$keywords = explode("keywords", strtolower($abstrak));
							$size_keywords = sizeof($keywords) - 1;
							if(isset($keywords[$size_keywords]) AND $size_keywords != 0){
								$key = $keywords[$size_keywords];
							}else{
								$key = "";
							}
						}
						if($key == ""){
							$key_words = explode("key words", strtolower($abstrak));
							$size_key_words = sizeof($key_words) - 1;
							if(isset($key_words[$size_key_words]) AND $size_key_words != 0){
								$key = $key_words[$size_key_words];
							}else{
								$key = "";
							}
						}
						if($key == ""){
							$keyword = explode("keyword", strtolower($abstrak));
							$size_keyword = sizeof($keyword) - 1;
							if(isset($keyword[$size_keyword]) AND $size_keyword != 0){
								$key = $keyword[$size_keyword];
							}else{
								$key = "";
							}
						}
						if($key == ""){
							$key_word = explode("key word", strtolower($abstrak));
							$size_key_word = sizeof($key_word) - 1;
							if(isset($key_word[$size_key_word]) AND $size_key_word != 0){
								$key = $key_word[$size_key_word];
							}else{
								$key = "";
							}
						}
						if($key == ""){
							$katakunci = explode("katakunci", strtolower($abstrak));
							$size_katakunci = sizeof($katakunci) - 1;
							if(isset($katakunci[$size_katakunci]) AND $size_katakunci != 0){
								$key = $katakunci[$size_katakunci];
							}else{
								$key = "";
							}
						}
						if($key == ""){
							$kata_kunci = explode("kata kunci", strtolower($abstrak));
							$size_kata_kunci = sizeof($kata_kunci) - 1;
							if(isset($kata_kunci[$size_kata_kunci]) AND $size_kata_kunci != 0){
								$key = $kata_kunci[$size_kata_kunci];
							}else{
								$key = "";
							}
						}
						
						//$key = str_replace(":","",$key);
						//$key = str_replace(", dan",", ",$key);
						//$key = str_replace(",dan",", ",$key);
						//$key = str_replace(".",", ",$key);
						//$key = explode(",", $key);
						//$jum = sizeof($key);
					//}
					//if($key != ""){
						$key = str_replace(":","",$key);
						$key = str_replace(";",",",$key);
						$key = str_replace(", dan ",", ",$key);
						$key = str_replace(",dan ",", ",$key);
						//$key = str_replace(".",", ",$key);
						if(str_word_count($key) < 100){
						$key = explode(",", $key);
						if(sizeof($key) == 1){
							$key = explode(";", $key[0]);
						}
					?>
						<tr>
							<td><?php echo $no; ?></td>
							<td><?php echo $row->creators_name_given; ?></td>
							<td><?php echo $row->creators_name_family; ?></td>
							<td><?php echo $row->judul; ?></td>
							<td><?php echo $row->abstrak; ?></td>
							
							<?php 
								//echo $key;
								//echo $row->abstrak."<br><br>";
								//print_r($key);
								for($x = 0; $x < sizeof($key); $x++){
									echo "<td>".$key[$x]."</td>";
								}
								if($x <= 9){
									for($y = 1; $y <= 10 - $x; $y++){
										echo "<td></td>";
									}
								}
							?>
							
							<td><?php echo $row->tahun; ?></td>
							<td><?php echo $row->sumber." - ".$row->divisions; ?></td>
						</tr>
					<?php
						$no++;
						}
					//}
				endforeach;
				?></table><?php
			}
		}else{
			redirect('saml/login');
		}
	}
	
	public function create_account()
	{
		if($this->session->userdata('login')){
			if ($_POST){
				$password = $this->input->post("password");
				$confirm_password = $this->input->post("confirm_password");
				if($password == $confirm_password){
					$create = $this->eprints_m->create_account();
					if($create){
						$this->session->set_flashdata('msg_sukses', 'Akun Eprints berhasil dibuat.');
						redirect('eprints');
					}else{
						$this->session->set_flashdata('msg_gagal', 'Akun Eprints gagal dibuat.');
						redirect('eprints');
					}
				}else{
					$this->session->set_flashdata('msg_gagal', 'Password dan Confirm Password harus sama.');
					redirect('eprints');
				}
			} else {
				redirect('eprints');
			}

		}else{
			redirect('saml/login');
		}
	}
	
	public function edit_account($userid)
	{
		if($this->session->userdata('login')){
			$data['account'] = $this->eprints_m->get_account_by_id($userid);
			$data['content'] = "eprints/edit_account.php";
			$this->load->view('template', $data);
		}else{
			redirect('saml/login');
		}
	}
	
	public function update_account()
	{
		if($this->session->userdata('login')){
			$userid = $this->input->post('userid');
			$username = $this->input->post('username');
			$password = $this->input->post("password");
			$confirm_password = $this->input->post("confirm_password");
			if($password == "" AND $confirm_password = ""){
				$update = $this->eprints_m->update_account_wp($userid);
				if($update){
					$this->session->set_flashdata('msg_sukses', 'Akun Eprints berhasil diupdate.');
					redirect('eprints');
				}else{
					$this->session->set_flashdata('msg_gagal', 'Akun Eprints gagal diupdate.');
					redirect('eprints/edit_account/'.$username);
				}
			}else if($password == $confirm_password){
				$update = $this->eprints_m->update_account($userid);
				if($update){
					$this->session->set_flashdata('msg_sukses', 'Akun Eprints berhasil diupdate.');
					redirect('eprints');
				}else{
					$this->session->set_flashdata('msg_gagal', 'Akun Eprints gagal diupdate.');
					redirect('eprints/edit_account/'.$username);
				}
			}else{
				$this->session->set_flashdata('msg_gagal', 'Password dan Confirm Password harus sama.');
				redirect('eprints');
			}
		}else{
			redirect('saml/login');
		}
	}
	
	public function panduan(){
		if($this->session->userdata('login')){
			$data['content'] = "eprints/panduan.php";
			$this->load->view('template', $data);
		}else{
			redirect('saml/login');
		}
	}
}
