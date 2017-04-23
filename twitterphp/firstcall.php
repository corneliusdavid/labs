<?php
  ini_set('display_errors', '1');
  include 'oauth_index.php';
  global $twitter;
  $messages = $twitter->getHomeTimeline('xml');
  echo 'Home Timeline <br>';
  print_r($messages);
?>
