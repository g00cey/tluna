<?php
require_once('Services/JSON.php');

$obj = array(
  'color' => "#112233",
  'latlon' => array(array('1919','1919'),array('1919','1919'),array('1919','1919'),array('1919','1919'),array('1919','1919'),array('1919','1919'))
);
$json = new Services_JSON();
echo $json->encode($obj);
