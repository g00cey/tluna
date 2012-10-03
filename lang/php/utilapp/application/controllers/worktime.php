<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Worktime extends CI_Controller {

    // テキストエリアの設定
    public function __construct(){
        parent::__construct();

        $this->textarea = array(
            'name' => 'worktime',
            'id'   => 'worktime',
            'rows' => '10',
            'cols' => '40'
        );
        $this->month_dropdown = $this->getMonthData();
    }
	public function index()
	{
        $data['form']= $this->load->helper('form');
        $data['textarea'] = $this->textarea;
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

    // 月の名称と月の値を返却する
    private function getMonthData() {
        $today = new DateTime(date('Y-m-d'));
        for ($i = -6; $i <= 12; $i++){
            $today->getTimestamp();
            $today->modify("{$i} month");
            var_dump($today->format('Y-m-d'));
        }
    }
}

