<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class camp extends CI_Controller {
	public function index()
	{
		$this->load->view('home/nevbar');
		$this->load->view('home/slide');
		$this->load->view('home/button');
		$this->load->view('home/footer');
	}
	public function historyActivity()
	{
		$this->load->view('HistoryActivity/nevbar');
		$this->load->view('HistoryActivity/historyAc');
		$this->load->view('home/footer');
	}
    public function activityMajor()
	{
		$this->load->view('HistoryActivity/nevbar');
		$this->load->view('activityMajor/activityMagor');
		$this->load->view('home/footer');
	}
	//ของเซฟ----------------------------------------------------------------
	public function conect_db()
	{
		$this->load->model('load_db_teacher');
		$result=$this->load_db_teacher->detail_user();
		$data=array("data_result"=>$result);
		$this->load->view('FormDetail', $data);
	}
	public function Add()
	{
		$this->load->view('Add');
	}
	public function Delete()
	{
		 $idTeacher=(isset($_POST["idTeacher"])?$_POST["idTeacher"]:"");
		 $this->load->model('load_db_teacher');
		 $result=$this->load_db_teacher->delete_user($idTeacher);
		 if($result) {
		 	redirect('/camp/conect_db');
		 }
		 else echo "ผิดพลาด";
	}
	public function Update()
	{
		 $idTeacher=(isset($_POST["idTeacher"])?$_POST["idTeacher"]:"");
		 $this->load->model('load_db_teacher');
		 $result=$this->load_db_teacher->detail_user_id($idTeacher);
		 $data=array("data_result"=>$result);
		 $this->load->view('Update' , $data);
	}
	public function UpdateUser()
	{
		 $idTeacher=(isset($_POST["idTeacher"])?$_POST["idTeacher"]:"");
		 $Title=(isset($_POST["Title"])?$_POST["Title"]:"");
		 $FirstName=(isset($_POST["FirstName"])?$_POST["FirstName"]:"");
		 $LastName=(isset($_POST["LastName"])?$_POST["LastName"]:"");
		 $Username=(isset($_POST["Username"])?$_POST["Username"]:"");
		 $Password=(isset($_POST["Password"])?$_POST["Password"]:"");
		 $Status=(isset($_POST["Status"])?$_POST["Status"]:"");
		 $this->load->model('load_db_teacher');
		 $result=$this->load_db_teacher->update_user($idTeacher,$Title,$FirstName,$LastName,$Username,$Password,$Status);
		 if ($result) {
		 	redirect('/camp/conect_db');
		 }
		 else echo "Fail";
		 // $data=array("data_result"=>$result);
		 // $this->load->view('Update' , $data);
	}


}
