<?php

session_start();
if (isset($_SESSION['language'])!=true) $_SESSION['language'] = 'russian';

defined('BASEPATH') OR exit('No direct script access allowed');

class Faculties extends CI_Controller {
		public function id(){

		$this->load->model('Get_model');
		$data['md_menu'] = $this->Get_model->md_menu(2);
		$data['md_page'] = $this->Get_model->md_page($id);
		$this->load->view('head_view');

        $this->load->view('header_view',$data);
        $this->load->view('paralax_view');
        $this->load->view('footer_view');
		}
}
