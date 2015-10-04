<?php
echo'
			<div id="content_f">
				<div id="n1_titulo">
					<h2>Formulario de registro</h2>
				</div>
				<div id="n1_texto" class="texto_login">
					<form class="formularioReg" action="#" method="POST"/>
						<table>
							<tr>
								<td>Email</td>
								<td><input type="email" id="email" placeholder="your@email.com" required autofocus value=""></td>
							</tr>
							<tr>
								<td>Clave:</td>
								<td><input type="password" name="pass" required></td>
							</tr>
							<tr>
								<td>Repetir clave:</td>
								<td><input type="password" name="pass2" required></td>
							</tr>
							<tr>
								<td></td>
								<td><input class="boton" type="submit" value="Registrar" id="submit"></td>
							</tr>	
						</table>	 
					</form> 
				</div>				
			</div>
';
?>