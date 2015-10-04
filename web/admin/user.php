<?php 
    session_start(); 
    if(isset($_SESSION['isAdmin'])) { 
		include 'inif.php';
		include 'header.php';
		include '_index.php';
		include 'footer.php';
	}else { 
        header("Location:../login.php?e=acceso");
    } 
?>

