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
?>
<html>
	<head>
	
		<link rel="stylesheet" href="./admin/style.css" type="text/css">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/> 
		
	</head>
	
	<body>
		<!-- Inserción de la capa superior que contiene el logo, menu e información -->
		<div class="header">
			<div class="logo"></div>
			<div id="adminTop"> <!-- selectButton -->
				Administración
			</div>
		</div>
		<div class="line"></div>
						
		<div class="content">
			<div id="identify">
				<div id="identifyTitle">Identificación</div>
				<form class="formAdmin" action="./admin/procesarLogin.php" method="POST"/>
					<table>
						<tr>
							<td>Usuario:</td>
							<td><input type="text" name="login"></td>
						</tr>
						<tr>
							<td>Clave:</td>
							<td><input type="password" name="pass"></td>
						</tr>
						<tr>
							<td></td>
							<td><input class="boton" type="submit" value="Entrar"></td>
						</tr>	
					</table>	 
				</form>	
			</div>	
			<?php echo "<p id='error'>".$mensaje."</p>"; ?>
		</div>
	</body>

</html>