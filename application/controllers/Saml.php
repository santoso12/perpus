 <?php
    
    if (! defined('BASEPATH')) {
        exit('No direct script access allowed');
    }
    
    class Saml extends CI_Controller
    {
        private $saml;
    
        public function __construct()
        {
            parent::__construct();
    
            require(__DIR__.'/../../vendor/onelogin/php-saml/_toolkit_loader.php');
            $config = require(__DIR__.'/../config/saml.php');
            $this->saml = new OneLogin_Saml2_Auth($config);
        }
    
        public function login()
        {
            $this->saml->login();
        }
    
        public function acs()
        {
            $this->saml->processResponse();
    
            $errors = $this->saml->getErrors();
            if (!empty($errors)) {
                $message = 'Saml response error: ' . var_export($errors, true);
                throw new Exception($message);
            }
    
            // baca response dari sso, ambil email lalu insert ke database jika belum ada. setelah itu login kan user tersebut.
            $attributes = $this->saml->getAttributes();
             //var_dump($attributes); exit; // cek attribute dengan var_dump
    
            // query user berdasarkan email
            $email = $attributes['email'][0];
            $nama = $attributes['nama'][0];
            $username = $attributes['username'][0];
            
			$user = $this->user_publikasi_m->getByUsername($username);
			
            if ($user == null) { // kalau di database belum ada buat baru
				
				$level = $attributes['level'][0];
				if($level == "student") {
					$id_jenis_user = 2;
				} else {
					$id_jenis_user = '';
				}
				
                $data = [
                    'username' => $username,
                    'email' => $email,
                    'nama' => $nama,
                    'no_hp' => $attributes['no_hp'][0],
                    'alamat' => $attributes['alamat'][0],
                    'level' => $level,
                    'id_jenis_user' => $id_jenis_user,
                    'create_date' => date("Y-m-d H:i:s"),
                ];
                $user = $this->user_publikasi_m->create($data);
				$id_user = $user;
				$jenis_user = $id_jenis_user;
            } else {
				$id_user = $user->id;
				$jenis_user = $user->id_jenis_user;
			}
			
            // login kan user
            $this->session->set_userdata([
                'login' => true,
                'email' => $email,
                'nama' => $nama,
                'username' => $username,
                'id_user' => $id_user,
                'jenis_user' => $jenis_user,
            ]);
    
            // redirect user setelah login
            redirect('dashboard'); // login sukses lalu redirect use setelah login
        }
    
        public function logout()
        {
            $response = $this->input->post('SAMLResponse');
            if ($response) {
                $this->saml->processResponse();
                redirect('dashboard'); // logout sukses lalu redirect user setelah logout
            }
    
            $this->session->sess_destroy();
            $this->saml->logout();
        }
    
        public function metadata()
        {
            $this->output->set_content_type('application/xml');
            $config = require(__DIR__.'/../config/saml.php');
            $settings = new OneLogin_Saml2_Settings($config, true);
            echo $settings->getSPMetadata();
        }
    }