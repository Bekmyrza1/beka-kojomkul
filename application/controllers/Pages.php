<?php

session_start();
if (isset($_SESSION['language'])!=true) $_SESSION['language'] = 'russian';

defined('BASEPATH') OR exit('No direct script access allowed');

class Pages extends CI_Controller {

	public function index()
	{
		$this->load->model('Get_model');
		$data['md_menu'] = $this->Get_model->md_menu(2);

		$this->load->view('head_view');
		$data['md_menuu'] = $this->Get_model->md_menuu();
        $this->load->view('header_view',$data);
        $this->load->view('carusel_view');
        $this->load->view('undermenu_view');
        $this->load->view('enaunsment_view');
        $this->load->view('training_view');
        $this->load->view('news_view');
        $this->load->view('paralax_view');
        $this->load->view('aboutuni_view');
        $this->load->view('footer_view');
	}

	public function page($id=0)
	{
		$this->load->model('Get_model');
		$data['md_menu'] = $this->Get_model->md_menu(2);
		$data['md_page'] = $this->Get_model->md_page($id);
				
		$this->load->view('head_view');
        $this->load->view('header_view',$data);
        $this->load->view('page_view',$data);

        $this->load->view('footer_view');
	}


	public function contact()
	{
		$this->load->model('Get_model');
		$data['md_menu'] = $this->Get_model->md_menu(2);

		$this->load->view('head_view');
        $this->load->view('header_view',$data);
        

        $this->load->view('footer_view');
	}

}
