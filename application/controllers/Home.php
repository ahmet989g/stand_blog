<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function index()
	{
        $viewData = new stdClass();
        $viewData->viewFolder = "home";

        $this->load->model('blog_model');
        $this->load->model('banner_model');

        $viewData->blogs = $this->blog_model->get_all(array('is_home' => 1, 'is_active' => 1)); // Sadece anasayfada görünmesini istediklerimizi getirir...
        $viewData->banners = $this->banner_model->get_all(array('is_active' => 1));

        $viewData->meta['title'] = "Stand CSS Blog by TemplateMo";
        $viewData->meta['description'] = "Stand CSS Blog by TemplateMo";

		$this->load->view('home', $viewData);
	}
}
