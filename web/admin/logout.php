<?php
session_start();
 
session_unset(); /*Elimina los datos de las variables de sesion*/
session_destroy();/*Elimina las variables de sesion iniciadas*/
header('Location: ../login.php?e=des' );/*Redireccionar con la funcion header*/
 
?>