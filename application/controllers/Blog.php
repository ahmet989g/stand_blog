<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Blog extends CI_Controller {

	public function detail($url)
	{
        $viewData = new stdClass();
        $viewData->viewFolder = "blog_detail";

        $this->load->model('blog_model');

        $blog = $this->blog_model->get(array('url' => $url, 'is_active' => 1));

        if ($blog){
            $viewData->meta['title'] = $blog->title. ' | Stand Blog';
            $viewData->meta['description'] = shorter_text($blog->description, 200);
        }else{
            $viewData->meta['title'] = 'İçerik Bulunamadı | Stand Blog';
            $viewData->meta['description'] = 'İçerik Bulunamadı | Stand Blog';
        }


        $viewData->blog = $blog;

		$this->load->view('blog_detail', $viewData);
	}
}
