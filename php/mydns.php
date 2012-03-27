<?php
    $url = 'www.mydns.jp';
    $masterid = 'mydns90546';
    $masterpwd = 'hX3iX2j8';
    $data = array (
      'masterid' => $masterid,
      'masterpwd' => $masterpwd,);
    $options = array ('http' => array(
      'method' => 'POST',
      'content' => http_build_query($data),
    ));
    $contents = file_get_contents($url, false,stream_context_create($options));
?>
