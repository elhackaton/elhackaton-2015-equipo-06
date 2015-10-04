<?php
echo'
			<div id="content">
				<div id="n1_titulo">
					<h2>Identificacion</h2>
				</div>
				<div id="n1_texto" class="texto_login">
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
				';

				echo "<p id='error'>$mensaje</p>" ;
				echo'
				</div>				
			</div>			
		</div>	';?>

		
		
		
