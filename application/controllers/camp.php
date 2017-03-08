<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class camp extends CI_Controller {
	public function index()
	{
		$this->load->view('compositions\header');
		$this->load->view('compositions\navbar');
		$this->load->view('compositions\current_position');
		$this->load->view('compositions\content');
	}
}
