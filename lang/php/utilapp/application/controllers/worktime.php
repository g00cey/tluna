<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Worktime extends CI_Controller {

	public function index()
	{
        $data['form']= $this->load->helper('form');
        $data['textarea'] = array(
                'name' => 'worktime',
                'id'   => 'worktime',
            );
		$this->load->view('worktime', $data);
	}
    // フォームからのデータを受け取る
    public function form()
    {
        $this->calcwork($this->input->post());
        var_dump($this->c_worktime_data);
    }
    // 給与計算を行うためのメソッド
    private function calcwork($workdata) {
        $this->c_worktime_data = explode("\t", $workdata['worktime']);
        $result = null;
        foreach($this->c_worktime_data as $workline) {
            if(!isset($workline)){
                $result[] = $workline;
            }
        }
        return $result;
    }
}

