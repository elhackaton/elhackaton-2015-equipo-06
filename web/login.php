<?php
	$e = $HTTP_GET_VARS["e"];
	$mensaje;
	if($e == userPass){
		$mensaje = "Su usuario o contraseña es incorrecta";
	}else if($e == acceso){
		$mensaje = "Está intentando entrar a una zona restringida, por favor identifíquese";
	}
	else if($e == des){
		$mensaje = "Se ha desconectado correctamente";
	}
	
	include 'inif.php';
	include 'header.php';
	include '_login.php';
	include 'footer.php';
	
	
?>