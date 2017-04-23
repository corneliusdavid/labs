<?php

require_once('db_connect.inc');

$conn = mysql_connect($dbhost, $dbuser, $dbpass) or die ('Error connecting to mysql');
mysql_select_db("concepts_nuhealth", $conn);

$dbname = "concepts_nuhealth";
mysql_select_db($dbname);
?>