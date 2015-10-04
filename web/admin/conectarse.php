<?php
	$con = mysql_connect('194.140.168.201','UPC_HACK','HACK_2015');
	$bd = mysql_select_db('upcreative_HACK2015', $con);
	mysql_query("SET character_set_results = 'utf8'", $con); 
?>