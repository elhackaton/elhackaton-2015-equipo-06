<?php
echo '
		<div id="header">
			<div id="menuSuperior">
				<div class="title"><h2>Administración</div>
				<div class="desloguear">
				';?>
					<input id="boton_logout" type="button" value="Desconectar" onClick="window.location = './logout.php';">
<?php
echo'
				</div>
			</div>
		</div>
	';
?>