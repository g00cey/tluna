<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Urlencode extends CI_Controller {

    public function __construct(){
        parent::__construct();

        $this->textarea = array(
            'name' => 'data',
            'id'   => 'textarea_urldecode',
            'rows' => '10',
            'cols' => '40'
        );
        $this->charset = array(
            'SJIS' => 'SJIS',
            'UTF-8' => 'UTF-8',
            'JIS' => 'JIS',
            'EUC-JP' => 'EUC-JP'
        );
    }
    // フォームを表示する
	public function index()
	{
        $data['form']= $this->load->helper('form');
        $data['textarea'] = $this->textarea;
		$this->load->view('urlencode', $data);
	}
    // フォームからのデータを受け取る
    public function form()
    {
        // 受け取ったデータをローカル変数へ
        $input_data = $this->input->post();
        $data['form']= $this->load->helper('form');
        $data['textarea'] = $this->textarea;
        $data['textarea']['value'] = $input_data['data'];
        if($input_data['button'] == 'encode') {
            // URLエンコードをします。
            $data['multiline'] = $this->retUrlencode($input_data['data']);
            $this->load->view('urlencode', $data);
        } else if ($input_data['button'] == 'decode') {
            var_dump('hoge');
            $data['multiline'] = $this->retUrldecode($input_data['data']);
            $this->load->view('urlencode', $data);
        }
    }

    // urlencode結果を返却
    private function retUrlencode($data) {
        foreach ($this->charset as $charline) {
            $multi_encode_array[$charline] = mb_convert_encoding($data, $charline, 'UTF-8');
            $multi_encode_array[$charline] = urlencode($multi_encode_array[$charline]);
        }


        return $multi_encode_array;
    }

    private function retUrldecode($data) {
        var_dump(urldecode($data));
        foreach ($this->charset as $charline) {
            $data = urldecode($data);
            $multi_encode_array[$charline] = mb_convert_encoding($data, 'UTF-8', $charline);
        }
        return $multi_encode_array;
    }
}

