<?php
require_once 'HTTP/Request.php';
require_once 'Log.php';
require_once 'mydns.jp.setting.php';

$req =& new HTTP_Request("http://www.mydns.jp/login.html");
$req->setBasicAuth($user,$passwd);
$response = $req->sendRequest();

$conf = array('mode' => 06444, 'timeFormat' => '%X %x');

if(PEAR::isError($response)) {
  echo "error";
  $err_log = &Log::singleton('file', 'error_log', $response->getMessage());
} else {
  echo "success";
  $acess_log = &Log::singleton('file', 'error_log', $req->getResponseBody());
}
