<?php
/*Funcion para poder utilizar las variables de sesion, para iniciar y cerrar sesion*/
session_start();
	/*incluimos el archivo de conexion con la base de datos*/
	include dirname(dirname(__FILE__))."/admin/conectarse.php";
	/*Asignamos la conexion a la variable indicada*/
	//$link=Conectarse();

	/*Variables para obtene datos del formulario*/
	$login = $_POST['login'];
	$pass = $_POST['pass'];

	/*Escribirmos la consulta y la insertamos en una variable parseada con el formato que le estamos dando con la funcion sprintf*/
	$sql = "SELECT usuarios.nick, usuarios.password
	FROM usuarios WHERE usuarios.nick='".$login."'&& usuarios.password= '".$pass."'";
	/*Ejecutamos la consulta y guardamos el resultado en la variable*/
	$result=mysql_query($sql);
	/*Con el if podemos ver si se ha obtenido algun resultado de la consulta*/
	/*En caso afirmativo utilizamos la funcion SESSION(creadas en la linea 4) para almacenar los datos de la consulta*/
	if(mysql_num_rows($result)){
		$array=mysql_fetch_array($result);
		$_SESSION["user"]= $array["user"];
		$_SESSION["isAdmin"]= "1";
		/*Una vez obtenido los datos, redireccionamos al usuario al panel de administracion con la funcion header*/
		header("Location:./user.php");
	} else {
		header("Location:../login.php?e=userPass");
	}
?>